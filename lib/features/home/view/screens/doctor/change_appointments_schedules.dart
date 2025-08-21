import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';

import '../../../controller/change_appointments_cubit/change_appointments_cubit.dart';

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
    _endDateController.dispose();
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
            children: [
              Text(
                'Start Leave date',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'You must enter start date';
                  } else {
                    return null;
                  }
                },
                onTap: () async {
                  final date = await showDatePicker(
                    context: context,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(Duration(days: 30)),
                  );
                  if (date != null) {
                    setState(() {
                      _startDate = date;
                      _startDateController.text = DateFormat(
                        'yyyy-MM-dd',
                      ).format(date);
                    });
                  }
                },
                controller: _startDateController,
                readOnly: true,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 12),
                decoration: InputDecoration(
                  hintText: 'Start leave date',
                  hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 12,
                    color: Pallete.grayScaleColor300,
                  ),
                ),
              ),
              Text(
                'End Leave date',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                onTap: () async {
                  if (_startDate == null) {
                    showToast(
                      context: context,
                      msg: 'You must select a start day first',
                    );
                  } else {
                    final date = await showDatePicker(
                      context: context,
                      firstDate: _startDate!,
                      lastDate: _startDate!.add(Duration(days: 30)),
                    );
                    if (date != null) {
                      setState(() {
                        _endDate = date;
                        _endDateController.text = DateFormat(
                          'yyyy-MM-dd',
                        ).format(date);
                      });
                    }
                  }
                },
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'You must enter start date';
                  } else {
                    return null;
                  }
                },
                controller: _endDateController,

                readOnly: true,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 12),
                decoration: InputDecoration(
                  hintText: 'End leave date',
                  hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 12,
                    color: Pallete.grayScaleColor300,
                  ),
                ),
              ),
              Text(
                'Start Leave time',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                onTap: () async {
                  final time = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (time != null) {
                    setState(() {
                      _startTime = time;
                      _startTimeController.text = formatTime24(time);
                    });
                  }
                },
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'You must enter start date';
                  } else {
                    return null;
                  }
                },
                controller: _startTimeController,

                readOnly: true,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 12),
                decoration: InputDecoration(
                  hintText: 'Start leave time',
                  hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 12,
                    color: Pallete.grayScaleColor300,
                  ),
                ),
              ),
              Text(
                'End Leave time',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'You must enter start date';
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
                        _endTimeController.text = formatTime24(time);
                      });
                    }
                  }
                },
                controller: _endTimeController,
                readOnly: true,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 12),
                decoration: InputDecoration(
                  hintText: 'End leave time',
                  hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 12,
                    color: Pallete.grayScaleColor300,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                child: Text(
                  'Save',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DateTime? _startDate;
  DateTime? _endDate;
  TimeOfDay? _startTime;
  TimeOfDay? _endTime;

  final _startDateController = TextEditingController();
  final _endDateController = TextEditingController();
  final _startTimeController = TextEditingController();
  final _endTimeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final _changeAppointmentsCubit = ChangeAppointmentsCubit();
}
