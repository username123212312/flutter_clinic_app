import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/custom_text_field.dart';
import 'package:toastification/toastification.dart';

import '../../../controller/change_appointments_cubit/change_appointments_cubit.dart';
import '../../../model/requests/doctor_change_schedules_request.dart';

class ChangeAppointmentsSchedules extends StatefulWidget {
  const ChangeAppointmentsSchedules({super.key});

  @override
  State<ChangeAppointmentsSchedules> createState() =>
      _ChangeAppointmentsSchedulesState();
}

class _ChangeAppointmentsSchedulesState
    extends State<ChangeAppointmentsSchedules> {
  @override
  void dispose() {
    _startDateController.dispose();
    _startTimeController.dispose();
    _endTimeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change your schedules',
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 14),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: MediaQuery.of(context).viewInsets.bottom * 0.3,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'From',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'To',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              CustomTextField(
                textAlign: TextAlign.center,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'You must enter start date';
                  } else {
                    return null;
                  }
                },
                onTap: () async {
                  final date = await showDateRangePicker(
                    keyboardType: TextInputType.datetime,
                    builder: (context, child) {
                      return Theme(
                        data: ThemeData.light().copyWith(),
                        child: child!,
                      );
                    },
                    context: context,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(Duration(days: 30)),
                  );
                  if (date != null) {
                    setState(() {
                      _startLeaveDate = date;
                      _startDateController.text =
                          '${DateFormat('yyyy-MM-dd').format(date.start)}     '
                          '|     ${DateFormat('yyyy-MM-dd').format(date.end)}';
                    });
                  }
                },
                controller: _startDateController,
                readOnly: true,
                hintText: 'From        |        To',
                keyboardType: TextInputType.text,
              ),

              Text(
                'Start Leave time',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomTextField(
                textAlign: TextAlign.center,
                onTap: () async {
                  final time = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (time != null) {
                    setState(() {
                      _startTime = time;
                      _startTimeController.text = formatTime(time);
                    });
                  }
                },
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'You must enter start time';
                  } else {
                    return null;
                  }
                },
                controller: _startTimeController,

                readOnly: true,
                hintText: 'Start leave time',
                keyboardType: TextInputType.text,
              ),
              Text(
                'End Leave time',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomTextField(
                textAlign: TextAlign.center,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'You must enter leave time';
                  } else {
                    return null;
                  }
                },
                onTap: () async {
                  if (_startTime == null) {
                    showToast(
                      context: context,
                      msg: 'You must select start time first',
                    );
                  } else {
                    final time = await showTimePicker(
                      context: context,
                      initialTime: _startTime!,
                    );
                    if (time != null) {
                      setState(() {
                        _endTime = time;
                        _endTimeController.text = formatTime(time);
                      });
                    }
                  }
                },
                controller: _endTimeController,
                readOnly: true,
                hintText: 'End leave time',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20),
              BlocListener<ChangeAppointmentsCubit, ChangeAppointmentsState>(
                bloc: _changeAppointmentsCubit,
                listener: (context, state) {
                  if (state.status.isLoading) {
                    LoadingOverlay().show(context);
                  } else {
                    LoadingOverlay().hideAll();
                    if (state.status.isError) {
                      showToast(
                        context: context,
                        msg: state.message,
                        type: ToastificationType.error,
                      );
                    }
                    if (state.status.isDone) {
                      showToast(
                        context: context,
                        msg: state.message,
                        type: ToastificationType.success,
                        bypassLengthCheck: true,
                      );
                      context.pop();
                    }
                  }
                },
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    fixedSize: Size(
                      screenWidth(context),
                      screenHeight(context) * 0.07,
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _changeAppointmentsCubit.changeAppointmentsSchedules(
                        request: DoctorChangeSchedulesRequest(
                          startLeaveDate: _startLeaveDate!.start,
                          endLeaveDate: _startLeaveDate!.end,
                          startLeaveTime: _startTime!,
                          endLeaveTime: _endTime!,
                        ),
                      );
                    }
                  },
                  child: Text(
                    'Save',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DateTimeRange? _startLeaveDate;
  TimeOfDay? _startTime;
  TimeOfDay? _endTime;

  final _startDateController = TextEditingController();
  final _startTimeController = TextEditingController();
  final _endTimeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final _changeAppointmentsCubit = ChangeAppointmentsCubit();
}
