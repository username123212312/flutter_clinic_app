// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/home/controller/appointments_bloc/appointments_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/reservation_detaild_recharge_widget.dart';
import 'package:toastification/toastification.dart';

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
        scrolledUnderElevation: 0,
        actions: [
          BlocConsumer<ReservationDetailsCubit, ReservationDetailsState>(
            bloc: _reservationDetailsCubit,
            listenWhen: (previous, current) => current.isPaid,

            listener: (context, state) {
              if (state.status.isError) {
                showToast(
                  context: context,
                  msg: state.message,
                  type: ToastificationType.error,
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
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 17,
            color: Pallete.grayScaleColor700,
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
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
          bottom: MediaQuery.of(context).viewInsets.bottom * 0.3,
        ),
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
                  hourlyRate: "Avg Visit Duration :}",
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
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        _buildDiscountDialog();
                      },
                      child: Row(
                        spacing: 5,
                        children: [
                          Text(
                            "Use Discount Points",
                            style: themeData!.textTheme.titleMedium!.copyWith(
                              fontSize: 18,
                              color: Pallete.black1,
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).colorScheme.primary,
                            ),

                            child: FittedBox(
                              child: Icon(
                                Icons.question_mark,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
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
                const SizedBox(height: 20),
                Divider(color: Colors.black, thickness: 2),
                const SizedBox(height: 10),
                BlocBuilder<ReservationDetailsCubit, ReservationDetailsState>(
                  bloc: _reservationDetailsCubit,
                  builder: (context, state) {
                    return Column(
                      spacing: 10,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Expected Price",
                              style: themeData!.textTheme.titleMedium!.copyWith(
                                fontSize: 14,
                                color: Pallete.black1,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Text(
                              "\$ ${double.tryParse(state.appointment?.expectedPrice.toString() ?? '0.0')}",
                              style: themeData!.textTheme.titleMedium!.copyWith(
                                fontSize: 14,
                                color: Pallete.black1,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Paid Price",
                              style: themeData!.textTheme.titleMedium!.copyWith(
                                fontSize: 14,
                                color: Pallete.black1,
                                fontStyle: FontStyle.italic,
                              ),
                            ),

                            Text(
                              "\$ ${double.tryParse(state.appointment?.paidPrice.toString() ?? '0.0')}",
                              style: themeData!.textTheme.titleMedium!.copyWith(
                                fontSize: 14,
                                color: Pallete.black1,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),

                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
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
                              showToast(
                                context: context,
                                type: ToastificationType.error,
                                msg: state.message,
                              );
                            }

                            if (state.status.isDone) {
                              showToast(
                                context: context,
                                type: ToastificationType.success,
                                msg: state.message,
                              );
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
                                              height:
                                                  (screenHeight ?? 0) * 0.15,
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
                                                  AppRouteConstants
                                                      .homeRouteName,
                                                );
                                              },
                                              fillColor:
                                                  themeData!
                                                      .colorScheme
                                                      .primary,
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
                          height: (screenHeight ?? 0) * 0.065,
                          padding: const EdgeInsets.all(16),
                          borderRadius: 32,
                          fontSize: 16,
                          textColor: Pallete.grayScaleColor0,
                          width: (screenWidth ?? 0) * 0.1,
                        ),
                      ),
                    ),

                    SizedBox(width: 16),
                    Expanded(
                      child: CustomButton(
                        text: "My Wallet",
                        onPressed: () async {
                          _showTDialog();
                        },
                        color: Pallete.primaryColor,
                        height: (screenHeight ?? 0) * 0.065,
                        padding: const EdgeInsets.all(16),
                        borderRadius: 32,
                        fontSize: 16,
                        textColor: Pallete.grayScaleColor0,
                        width: (screenWidth ?? 0) * 0.1,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),
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

  Future<dynamic> _showTDialog() {
    return TransparentDialog.show(
      barrierDismissible: true,
      context: context,
      builder:
          (_) => CustomDialog(
            size: Size((screenWidth ?? 0) * 0.9, (screenHeight ?? 0) * 0.23),
            content: ReservationDetaildRechargeWidget(),
          ),
    );
  }

  void _buildDiscountDialog() {
    _reservationDetailsCubit.fetchDiscountPoints();

    TransparentDialog.show(
      context: context,
      builder: (_) {
        return Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            width: (screenWidth ?? 0) * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/discount.png',
                      width: 26,
                      height: 26,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Discount Points System',
                      style: Theme.of(
                        context,
                      ).textTheme.labelMedium!.copyWith(fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My points:',
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium!.copyWith(
                          fontSize: 15,

                          fontStyle: FontStyle.italic,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      BlocBuilder<
                        ReservationDetailsCubit,
                        ReservationDetailsState
                      >(
                        bloc: _reservationDetailsCubit,
                        builder: (context, state) {
                          return state.discountPointsStatus.isLoading
                              ? SizedBox(
                                width: 24,
                                height: 24,
                                child: CircularProgressIndicator(),
                              )
                              : Text(
                                (state.discountPoints).toString(),
                                style: Theme.of(
                                  context,
                                ).textTheme.labelMedium!.copyWith(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                ),
                              );
                        },
                      ),
                    ],
                  ),
                ),

                Text(
                  'Earn Points:',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Text(
                  '+2 points per doctor’s appointment booked.',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 13),
                ),
                Text(
                  'Redeem Discounts:',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Text(
                  '6+ pts → 5% off (6 pts used)',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 13),
                ),
                Text(
                  '10+ pts → 10% off (10 pts used)',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 13),
                ),
                Text(
                  '20+ pts → 20% off (20 pts used)',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 13),
                ),
                Text(
                  '30+ pts → 30% off (30 pts used)',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 13),
                ),
                Text(
                  'Example: Book 5 appointments → 10 pts → 10% discount!',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 13),
                ),
                SizedBox(height: 10),
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        _reservationDetailsCubit.fetchDiscountPoints();
                      },
                      child: Text('refresh'),
                    ),
                    TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Text('close'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
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
                    if (state.status.isError) {
                      showToast(
                        context: context,
                        type: ToastificationType.error,
                        msg: state.message,
                      );
                    }
                    if (state.status.isDone) {
                      showToast(
                        context: context,
                        type: ToastificationType.success,
                        msg: state.message,
                      );
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
