// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/home/controller/appointments_bloc/appointments_bloc.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/transparent_content_dialog.dart';
import '../../../../../core/widgets/widgets.dart';
import '../../../../auth/view/widgets/auth_widgets.dart';
import '../../../../auth/view/widgets/custom_button.dart';
import '../../../controller/reminder_cubit/reminder_cubit.dart';
import '../../../controller/reservation_details_cubit/reservation_details_cubit.dart';
import '../../../repository/reservation_details_repository.dart';
import '../../widgets/widget_doctor/appointment_details_card.dart';
import '../../widgets/widget_doctor/info_box.dart';

class ReservationDetailsScreen extends StatefulWidget {
  const ReservationDetailsScreen({super.key, required this.appointmentId});
  final int appointmentId;

  @override
  State<ReservationDetailsScreen> createState() =>
      _ReservationDetailsScreenState();
}

class _ReservationDetailsScreenState extends State<ReservationDetailsScreen> {
  @override
  void initState() {
    super.initState();
    _reservationDetailsCubit = ReservationDetailsCubit(
      appointmentId: widget.appointmentId,
      reservationDetailsRepository: ReservationDetailsRepository(),
    );
    _reservationDetailsCubit.fetchAppointment();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          themeData = Theme.of(context);
          screenHeight = MediaQuery.of(context).size.height;
          screenWidth = MediaQuery.of(context).size.width;
        });
      }
    });
  }

  @override
  void dispose() {
    _reminderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        actions: [
          BlocConsumer<ReservationDetailsCubit, ReservationDetailsState>(
            bloc: _reservationDetailsCubit,
            listenWhen: (previous, current) => current.isPaid,

            listener: (context, state) {
              if (state.status.isError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(seconds: 5),
                    action: SnackBarAction(
                      label: 'Reconfirm',
                      onPressed: () {
                        _reservationDetailsCubit.confirmReservationPayment();
                      },
                    ),
                    content: Text(state.message),
                  ),
                );
              }
            },
            builder: (context, state) {
              return IconButton(
                onPressed:
                    state.status.isLoading
                        ? null
                        : () {
                          _reservationDetailsCubit.fetchAppointment();
                        },
                icon: Icon(Icons.refresh, size: 24),
              );
            },
          ),
        ],
        title: Text(
          'Appointment Details',
          style: themeData!.textTheme.titleMedium!.copyWith(
            fontSize: 20,
            color: Pallete.black1,
          ),
        ),
        toolbarHeight: (screenHeight ?? 0) * 0.1,
        backgroundColor: Pallete.grayScaleColor0,
        leading: IconButton(
          onPressed: () {
            context.read<AppointmentsBloc>().add(AppointmentsFetched());
            context.goNamed(AppRouteConstants.homeRouteName);
          },
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Pallete.black1,
            size: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: BlocBuilder<ReservationDetailsCubit, ReservationDetailsState>(
          bloc: _reservationDetailsCubit,
          builder: (context, state) {
            log(state.appointment?.doctorPhoto ?? '');
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppointmentDetailsCard(
                  doctorName: state.appointment?.doctorName ?? 'No doctor',
                  specialty:
                      state.appointment?.doctorSpeciality ?? 'No speciality',
                  imagePath: state.appointment?.doctorPhoto,
                  hourlyRate: "Hourly Rate:\$25.00",
                  rating: 4.8,
                  backgroundColor: Pallete.graysGray5,
                ),
                const SizedBox(height: 20),
                Text(
                  "Schedule",
                  style: themeData!.textTheme.titleMedium!.copyWith(
                    fontSize: 18,
                    color: Pallete.black1,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: InfoBox(
                          title:
                              DateFormat('d MMMM, EEE')
                                  .format(
                                    state.appointment?.reservationDate ??
                                        DateTime.now(),
                                  )
                                  .toString(),
                          subtitle: "Date",
                          backgroundColor: Pallete.graysGray5,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: InfoBox(
                          title: formatTime(
                            state.appointment?.reservationHour ??
                                TimeOfDay.now(),
                          ),
                          subtitle: "Time",
                          backgroundColor: Pallete.graysGray5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Reminder",
                  style: themeData!.textTheme.titleMedium!.copyWith(
                    fontSize: 18,
                    color: Pallete.black1,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      width: (screenWidth ?? 0) * 0.15,
                      height: (screenHeight ?? 0) * 0.07,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 17),
                        onTap: () => _showReminderSheet(context),
                        controller: _reminderController,
                        readOnly: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 15, bottom: 20),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Hour/s before your appointment',
                      style: Theme.of(
                        context,
                      ).textTheme.labelMedium!.copyWith(fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Use Discount Points",
                      style: themeData!.textTheme.titleMedium!.copyWith(
                        fontSize: 18,
                        color: Pallete.black1,
                      ),
                    ),
                    Switch(
                      value: _useDiscountPoints,
                      onChanged: (newValue) {
                        setState(() {
                          _useDiscountPoints = newValue;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                Center(
                  child: BlocListener<
                    ReservationDetailsCubit,
                    ReservationDetailsState
                  >(
                    bloc: _reservationDetailsCubit,
                    listener: (context, state) async {
                      if (state.status.isLoading) {
                        LoadingOverlay().show(context);
                      } else {
                        LoadingOverlay().hideAll();

                        if (state.status.isError) {
                          showToast(msg: state.message);
                        }

                        if (state.status.isDone) {
                          showToast(msg: state.message);
                          await TransparentDialog.show(
                            context: context,
                            barrierDismissible: false,
                            builder:
                                (_) => CustomDialog(
                                  content: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment(-0.2, 0.0),
                                        child: Lottie.asset(
                                          'assets/lottie/successfully_animation.json',
                                          fit: BoxFit.cover,
                                          width: (screenWidth ?? 0) * 0.2,
                                          height: (screenHeight ?? 0) * 0.15,
                                        ),
                                      ),
                                      SizedBox(
                                        width: (screenWidth ?? 0) * 0.7,
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          state.message,
                                          style: themeData!
                                              .textTheme
                                              .labelMedium!
                                              .copyWith(
                                                color: Colors.black,
                                                fontSize: 13,
                                              ),
                                        ),
                                      ),
                                      SizedBox(height: 25),
                                      SizedBox(
                                        width: (screenWidth ?? 0) * 0.5,
                                        height: (screenHeight ?? 0) * 0.05,
                                        child: CustomElevatedButton(
                                          fontSize: 12,
                                          title: 'Back to Home',
                                          onTap: () {
                                            context
                                                .read<AppointmentsBloc>()
                                                .add(AppointmentsFetched());
                                            context.pop();
                                            context.goNamed(
                                              AppRouteConstants.homeRouteName,
                                            );
                                          },
                                          fillColor:
                                              themeData!.colorScheme.primary,
                                          textColor: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                          );
                        }
                      }
                    },
                    child: CustomButton(
                      text: "Checkout",
                      onPressed: () async {
                        await _reservationDetailsCubit
                            .confirmReservationPayment(_useDiscountPoints);
                      },
                      color: Pallete.primaryColor,
                      width: (screenWidth ?? 0) * 0.75,
                      height: (screenHeight ?? 0) * 0.065,
                      padding: const EdgeInsets.all(16),
                      borderRadius: 32,
                      fontSize: 16,
                      textColor: Pallete.grayScaleColor0,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void _showReminderSheet(BuildContext context) async {
    final reminder = await showModalBottomSheet<int>(
      builder:
          (context) => Padding(
            padding: EdgeInsets.only(
              bottom:
                  MediaQuery.of(context).viewInsets.bottom, // Keyboard space
            ),
            child: _ReminderBottomSheet(id: widget.appointmentId),
          ),
      context: context,
      isScrollControlled: true, // Allows full height
      shape: RoundedRectangleBorder(
        // Rounded top corners
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
    );
    if (reminder != null) {
      setState(() {
        _reminderController.text = reminder.toString();
      });
    }
  }

  final _reminderController = TextEditingController()..text = '12';
  late final ReservationDetailsCubit _reservationDetailsCubit;
  late final double? screenHeight;
  late final double? screenWidth;
  late final ThemeData? themeData;
  bool _useDiscountPoints = false;
}

class _ReminderBottomSheet extends StatefulWidget {
  final int id;

  const _ReminderBottomSheet({required this.id});
  @override
  __ReminderBottomSheetState createState() => __ReminderBottomSheetState();
}

class __ReminderBottomSheetState extends State<_ReminderBottomSheet> {
  double _hours = 8.0;

  @override
  void initState() {
    super.initState();
    _reminderCubit = ReminderCubit(
      reservationDetailsRepository: ReservationDetailsRepository(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Fits content height
        children: [
          // Drag handle
          Container(
            width: 40,
            height: 4,
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          // Title
          Text('Set Reminder'),
          SizedBox(height: 20),

          ...[
            SizedBox(height: 20),
            // Hours Slider
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Remind me in:'),
                Slider(
                  min: 8,
                  max: 24,
                  divisions: 16,
                  value: _hours,
                  label: '${_hours.toInt()}h',
                  onChanged: (value) => setState(() => _hours = value),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('8 hours'), Text('24 hours')],
                ),
              ],
            ),

            SizedBox(height: 20),
          ],

          // Action Buttons
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  child: Text('Cancel'),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: BlocConsumer<ReminderCubit, ReminderState>(
                  bloc: _reminderCubit,
                  listener: (context, state) {
                    if (state.status.isDone) {
                      showToast(msg: state.message);
                      context.pop<int>(_hours.toInt());
                    }
                  },
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed:
                          state.status.isLoading
                              ? null
                              : () {
                                log('Reminder set for ${_hours.toInt()} hours');
                                _reminderCubit.setReminder(
                                  widget.id,
                                  // 2,
                                  _hours.toInt(),
                                );
                              },
                      child: Text(
                        'Set Reminder',
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium!.copyWith(color: Colors.white),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _getReminderTime() {
    final now = DateTime.now();
    final reminderTime = now.add(Duration(hours: _hours.toInt()));
    return '${reminderTime.hour}:${reminderTime.minute.toString().padLeft(2, '0')}';
  }

  late final ReminderCubit _reminderCubit;
}
