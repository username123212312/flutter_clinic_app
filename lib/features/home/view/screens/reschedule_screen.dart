import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/core/widgets/transparent_content_dialog.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:our_flutter_clinic_app/features/home/repository/reschedule_appointment_repository.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/home_widgets.dart';

import '../../../../core/utils/utils.dart';
import '../../../auth/view/widgets/auth_widgets.dart';
import '../../controller/reschedule_appointment_cubit/reschedule_appointment_cubit.dart';
import '../widgets/appointments/schedules_item_widget.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: BlocConsumer<
          RescheduleAppointmentCubit,
          RescheduleAppointmentState
        >(
          bloc: _rescheduleAppointmentCubit,
          listener: (context, state) {
            if (state.status?.isLoading ?? false) {
              LoadingOverlay().show(context);
            } else {
              LoadingOverlay().hideAll();
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
                  child: _buildSchedules([]),
                ),
                SizedBox(height: 5),
                CustomElevatedButton(
                  borderRadius: 32,
                  title: 'Reschedule',
                  fontSize: 15,
                  onTap: () {},
                  fillColor: Theme.of(context).colorScheme.primary,
                  textColor: Colors.white,
                ),
              ],
            );
          },
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
              setState(() {
                _dateController.text = selectedDate.toString();
              });
            }
          },
          hintText: 'Select New Date',
          keyboardType: TextInputType.datetime,
          readOnly: true,
          controller: _dateController,
          suffixIcon: Image.asset('assets/icons/ic_calendar.png'),
        ),
      ],
    );
  }

  Future<DateTime?> _selectDate(List<DateTime> availableDates) async {
    final date = await showRestrictedDatePicker(
      context: context,
      availableDates: [DateTime.now(), DateTime(2030)],
    );
    if (date != null) {
      setState(() {
        _dateController.text = DateFormat.yMMMMEEEEd().format(date);
      });
      return date;
    } else {
      return null;
    }
  }

  Column _buildSchedules(List<TimeOfDay> times) {
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
