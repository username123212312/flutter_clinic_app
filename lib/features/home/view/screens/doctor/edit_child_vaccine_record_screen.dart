import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/home/model/vaccinationrecord.dart';

import '../../../controller/ediit_child_vac_record_cubit/ediit_child_vac_record_cubit.dart';
import '../../../model/requests/doctor_edit_vac_record_request.dart';
import '../../../repository/doctor_child_vaccination_record_repository.dart';

class EditChildVaccineRecordScreen extends StatefulWidget {
  const EditChildVaccineRecordScreen({super.key, required this.vaccineRecord});
  final VaccinationRecord vaccineRecord;

  @override
  State<EditChildVaccineRecordScreen> createState() =>
      _EditChildVaccineRecordScreenState();
}

class _EditChildVaccineRecordScreenState
    extends State<EditChildVaccineRecordScreen> {
  @override
  void initState() {
    _addValuesToControllers();
    _childVacRecordCubit = EdiitChildVacRecordCubit(
      doctorChildVaccinationRecordRepository:
          DoctorChildVaccinationRecordRepository(),
      vaccineRecord: widget.vaccineRecord,
    );

    super.initState();
  }

  void _addValuesToControllers() {
    _isTaken = widget.vaccineRecord.isTaken == 1;
    if (widget.vaccineRecord.doseNumber != null) {
      dose = widget.vaccineRecord.doseNumber.toString();
    }
    if (widget.vaccineRecord.notes != null) {
      notes = widget.vaccineRecord.doseNumber.toString();
    }
    if (widget.vaccineRecord.nextVaccineDate != null) {
      nextDateText = DateFormat(
        'yyyy-MM-dd',
      ).format(widget.vaccineRecord.nextVaccineDate!);
    }
  }

  @override
  void dispose() {
    _doseController.dispose();
    _notesController.dispose();
    _nextVaccineController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(size: 28),
        toolbarHeight: screenHeight(context) * 0.1,
        title: Text(
          'Edit Vaccine Record',
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 17),
        ),
        actions: [
          BlocListener<EdiitChildVacRecordCubit, EdiitChildVacRecordState>(
            bloc: _childVacRecordCubit,
            listener: (context, state) {
              if (state.status.isLoading) {
                LoadingOverlay().show(context);
              } else {
                LoadingOverlay().hideAll();
                if (state.status.isError) {
                  showToast(msg: state.message);
                }
                if (state.status.isDone) {
                  showToast(msg: state.message);
                  context.pop(true);
                }
              }
            },
            child: IconButton(
              iconSize: 28,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _childVacRecordCubit.modifyRecord(
                    DoctorEditVacRecordRequest(
                      recordId: widget.vaccineRecord.id ?? -1,
                      isTaken: _isTaken,
                      doseNumber: int.tryParse(_doseController.text.trim()),
                      nextVaccineDate: _selectedDate,
                      notes: _notesController.text,
                    ),
                  );
                }
              },
              icon: Icon(Icons.done),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: MediaQuery.of(context).viewInsets.bottom * 0.3,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                'Dose Number',
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 14),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'You must enter dose number';
                  } else {
                    return null;
                  }
                },
                controller: _doseController,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 16),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  hintText: dose,
                  hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 16,
                    color: Pallete.gray1,
                  ),
                ),
              ),
              Text(
                'Notes',
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 14),
              ),
              TextField(
                controller: _notesController,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 16),
                textAlignVertical: TextAlignVertical.top,
                maxLines: 2,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 15,
                    bottom: 40,
                  ),
                  hintText: notes,
                  hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 16,
                    color: Pallete.gray1,
                  ),
                ),
              ),
              Text(
                'Next Vaccine date',
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 14),
              ),
              TextField(
                controller: _nextVaccineController,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 16),
                onTap: () async {
                  final date = await showDatePicker(
                    context: context,
                    firstDate: DateTime.now().add(Duration(days: 1)),
                    lastDate: DateTime.now().add(Duration(days: 365)),
                  );
                  if (date != null) {
                    setState(() {
                      _selectedDate = date;
                      _nextVaccineController.text = DateFormat(
                        'yyyy-MM-dd',
                      ).format(date);
                    });
                  }
                },
                readOnly: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  hintText: nextDateText,
                  hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 16,
                    color: Pallete.gray1,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Is Vaccine taken',
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium!.copyWith(fontSize: 14),
                  ),
                  Switch(
                    value: _isTaken,
                    onChanged: (newValue) {
                      setState(() {
                        _isTaken = newValue;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  DateTime? _selectedDate;
  bool _isTaken = false;
  final _doseController = TextEditingController();
  final _notesController = TextEditingController();
  final _nextVaccineController = TextEditingController();
  String dose = 'Dose number';
  String notes = 'Notes';
  String nextDateText = 'Next Vaccine Date';
  late final EdiitChildVacRecordCubit _childVacRecordCubit;
  final _formKey = GlobalKey<FormState>();
}
