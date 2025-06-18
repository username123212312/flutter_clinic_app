import 'dart:developer';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          themeData = Theme.of(context);
          screenHeight = MediaQuery.of(context).size.height;
          screenWidth = MediaQuery.of(context).size.width;
        });
      }
    });

    _reservationDetailsCubit = ReservationDetailsCubit(
      appointmentId: widget.appointmentId,
      reservationDetailsRepository: ReservationDetailsRepository(),
    );
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
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: InfoBox(
                          title: "8 October, Sun",
                          subtitle: "Date",
                          backgroundColor: Pallete.graysGray5,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: InfoBox(
                          title: "2:30am - 3:30pm",
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
                        clearAndShowSnackBar(context, state.message);
                        if (state.status.isDone) {
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
                            .createReservationPaymentIntent();
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
            child: _ReminderBottomSheet(),
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
}

class _ReminderBottomSheet extends StatefulWidget {
  @override
  __ReminderBottomSheetState createState() => __ReminderBottomSheetState();
}

class __ReminderBottomSheetState extends State<_ReminderBottomSheet> {
  double _hours = 1.0;

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
                  min: 1,
                  max: 24,
                  divisions: 23,
                  value: _hours,
                  label: '${_hours.toInt()}h',
                  onChanged: (value) => setState(() => _hours = value),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('1 hour'), Text('24 hours')],
                ),
              ],
            ),

            // Time Preview
            SizedBox(height: 10),
            Text(
              'Will remind at: ${_getReminderTime()}',
              style: TextStyle(color: Colors.grey.shade600),
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
                child: ElevatedButton(
                  onPressed: () {
                    log('Reminder set for ${_hours.toInt()} hours');
                    context.pop<int>(_hours.toInt());
                  },
                  child: Text(
                    'Set Reminder',
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium!.copyWith(color: Colors.white),
                  ),
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
}
