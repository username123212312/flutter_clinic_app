import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/core/widgets/transparent_content_dialog.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:our_flutter_clinic_app/features/home/repository/reschedule_appointment_repository.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/home_widgets.dart';
import 'package:toastification/toastification.dart';

import '../../../../../core/navigation/navigation_exports.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/widgets.dart';
import '../../../../auth/view/widgets/auth_widgets.dart';
import '../../../controller/appointments_bloc/appointments_bloc.dart';
import '../../../controller/reschedule_appointment_cubit/reschedule_appointment_cubit.dart';
import '../../widgets/appointments/schedules_item_widget.dart';

class RescheduleScreen extends StatefulWidget {
  const RescheduleScreen({super.key, required this.appointment});
  final AppointmentModel appointment;

  @override
  State<RescheduleScreen> createState() => _RescheduleScreenState();
}

class _RescheduleScreenState extends State<RescheduleScreen> {
  @override
  void initState() {
    super.initState();
    _rescheduleAppointmentCubit = RescheduleAppointmentCubit(
      rescheduleAppointmentRepository: RescheduleAppointmentRepository(),
    );
    _rescheduleAppointmentCubit.fetchAppointment(
      appointmentId: widget.appointment.id ?? 0,
    );
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Pallete.black1,
            size: 18,
          ),
        ),
        forceMaterialTransparency: true,
        title: Text(
          'Reschedule Appointment',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 20,
            color: Pallete.black1,
          ),
        ),
        toolbarHeight: screenHeight(context) * 0.1,
      ),
      body: PopScope(
        canPop: true,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) {
            context.read<AppointmentsBloc>().add(AppointmentsFetched());
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: BlocConsumer<
            RescheduleAppointmentCubit,
            RescheduleAppointmentState
          >(
            bloc: _rescheduleAppointmentCubit,
            listener: (context, state) {
              if (state.status?.isLoading ?? false) {
                LoadingOverlay().show(context);
              } else if (state.status?.isError ?? false) {
                LoadingOverlay().hideAll();
                showToast(
                  context: context,
                  type: ToastificationType.success,
                  msg: state.statusMessage ?? 'No message',
                );
              } else if (state.status?.isData ?? false) {
                LoadingOverlay().hideAll();
              } else if (state.status?.isDone ?? false) {
                LoadingOverlay().hideAll();
                TransparentDialog.show(
                  barrierDismissible: false,
                  context: context,
                  builder:
                      (_) => CustomDialog(
                        content: Column(
                          children: [
                            Align(
                              alignment: Alignment(-0.2, 0.0),
                              child: Lottie.asset(
                                'assets/lottie/successfully_animation.json',
                                fit: BoxFit.cover,
                                width: screenWidth(context) * 0.2,
                                height: screenHeight(context) * 0.15,
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              state.statusMessage ??
                                  'Appointment Rescheduled Successfully!',
                              style: Theme.of(context).textTheme.labelMedium!
                                  .copyWith(color: Colors.black, fontSize: 15),
                            ),
                            SizedBox(height: 25),
                            SizedBox(
                              width: screenWidth(context) * 0.5,
                              height: screenHeight(context) * 0.05,
                              child: CustomElevatedButton(
                                fontSize: 12,
                                title: 'Back to Home',
                                onTap: () {
                                  context.read<AppointmentsBloc>().add(
                                    AppointmentsFetched(),
                                  );
                                  context.pop();
                                  context.pop();
                                },
                                fillColor:
                                    Theme.of(context).colorScheme.primary,
                                textColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                );
              }
            },
            builder: (context, state) {
              return Column(
                spacing: 20,
                children: [
                  SizedBox.shrink(),
                  AppointmentWidgetItem(appointment: widget.appointment),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: _buildDatePicker(state.availableDates),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: _buildSchedules(
                      state.availableTimes,
                      state.selectedDate,
                    ),
                  ),
                  CustomElevatedButton(
                    borderRadius: 32,
                    title: 'Reschedule',
                    fontSize: 15,
                    onTap: () async {
                      _rescheduleAppointmentCubit.editReservation();
                    },
                    fillColor: Theme.of(context).colorScheme.primary,
                    textColor: Colors.white,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Column _buildDatePicker(List<DateTime> availableDates) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Date',
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 18),
        ),
        SizedBox(height: 10),
        CustomTextField(
          onTap: () async {
            final selectedDate = await _selectDate(availableDates);
            if (selectedDate != null) {
              _rescheduleAppointmentCubit.showAvailableTimes(selectedDate);
              setState(() {
                _selectedSchedule = null;
                _dateController.text = selectedDate.toString();
              });
            }
          },
          hintText: 'Select New Date',
          keyboardType: TextInputType.datetime,
          readOnly: true,
          controller: _dateController,
          suffixIcon: Icon(
            Icons.calendar_today,
            color: Pallete.grayScaleColor400,
            size: 22,
          ),
        ),
      ],
    );
  }

  Future<DateTime?> _selectDate(List<DateTime> availableDates) async {
    final date = await showRestrictedDatePicker(
      context: context,
      availableDates: availableDates,
    );
    if (date != null) {
      setState(() {
        final formattedDate = DateFormat(
          'EEEE, MMMM, d, y',
        ).format(DateTime.now());
        _dateController.text = formattedDate;
      });
      return date;
    } else {
      return null;
    }
  }

  Column _buildSchedules(List<TimeOfDay> times, DateTime? selectedDate) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select New Schedule',
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 18),
        ),
        SizedBox(height: 10),
        GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.5,
            crossAxisSpacing: 10,
            mainAxisExtent: screenHeight(context) * 0.06,
            mainAxisSpacing: 10,
          ),
          shrinkWrap: true,
          children: List.generate(6, (index) {
            final time = TimeOfDay(hour: 09 + index, minute: 00);
            return SchedulesItemWidget<TimeOfDay>(
              isSelected:
                  _selectedSchedule == null ? null : _selectedSchedule == index,
              onSelected:
                  (times.isEmpty || !times.any((listTime) => listTime == time))
                      ? null
                      : (newValue) {
                        setState(() {
                          _selectedSchedule = index;
                        });
                        _rescheduleAppointmentCubit.selectTime(newValue);
                      },
              value: formatTime(time),
              data: time,
            );
          }),
        ),
      ],
    );
  }

  final _dateController = TextEditingController();
  late final RescheduleAppointmentCubit _rescheduleAppointmentCubit;
  int? _selectedSchedule;
}
