import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/home/model/child_record.dart';
import 'package:toastification/toastification.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../auth/view/widgets/custom_button.dart';
import '../../../../auth/view/widgets/custom_text_field.dart';
import '../../../controller/modify_child_record_cubit/modify_child_record_cubit.dart';
import '../../../model/requests/child_record_request.dart';
import '../../../repository/doctor_child_record_repository.dart';

class ModifyChildRecordScreen extends StatefulWidget {
  const ModifyChildRecordScreen({super.key, required this.childRecord});
  final ChildRecord childRecord;

  @override
  State<ModifyChildRecordScreen> createState() =>
      _ModifyChildRecordScreenState();
}

class _ModifyChildRecordScreenState extends State<ModifyChildRecordScreen> {
  @override
  void initState() {
    _modifyChildRecordCubit = ModifyChildRecordCubit(
      doctorChildRecordRepository: DoctorChildRecordRepository(),
      record: widget.childRecord,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        title: Text(
          'Add Child Record',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 17,
            color: Pallete.black1,
          ),
        ),
        iconTheme: IconThemeData(size: 18),

        backgroundColor: Pallete.grayScaleColor0,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background child.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(23),

            child: ListView(
              children: [
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next Visit Date',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      onTap: () async {
                        final date = await showDatePicker(
                          initialEntryMode: DatePickerEntryMode.calendarOnly,
                          context: context,
                          firstDate: DateTime.now().add(Duration(days: 1)),
                          lastDate: DateTime.now().add(Duration(days: 365)),
                        );
                        if (date != null) {
                          setState(() {
                            _selectedDate = date;
                            nextVisitController.text = DateFormat(
                              'yyyy-MM-dd',
                            ).format(date);
                          });
                        }
                      },
                      readOnly: true,
                      hintText:
                          widget.childRecord.nextVisitDate == null
                              ? 'Enter Next date'
                              : DateFormat(
                                'yyyy-MM-dd',
                              ).format(widget.childRecord.nextVisitDate!),
                      controller: nextVisitController,
                      keyboardType: TextInputType.datetime,
                    ),
                  ],
                ),

                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Height',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText:
                          widget.childRecord.heightCm == null
                              ? 'Enter height in cm'
                              : widget.childRecord.heightCm!.toString(),
                      controller: heightController,
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),

                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Weight',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText:
                          widget.childRecord.weightKg != null
                              ? widget.childRecord.weightKg!.toString()
                              : 'Enter weight in kg',
                      controller: weightController,
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Head Circumference',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText:
                          widget.childRecord.headCircumferenceCm != null
                              ? widget.childRecord.headCircumferenceCm!
                                  .toString()
                              : 'Enter head circumference in cm',
                      controller: headCircumferenceController,
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Allergies',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText:
                          widget.childRecord.allergies != null
                              ? widget.childRecord.allergies!
                              : 'Enter allergies',
                      controller: allergiesController,
                      keyboardType: TextInputType.text,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Feeding Type',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      suffixIcon: DropdownButton<FeedingType>(
                        value: _selectedFeedingType,
                        items:
                            FeedingType.values.map((type) {
                              return DropdownMenuItem<FeedingType>(
                                value: type,
                                child: Text(type.name),
                              );
                            }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            if (newValue != null) {
                              _selectedFeedingType = newValue;
                              feedingController.text = newValue.name;
                            }
                          });
                        },
                      ),
                      readOnly: true,
                      hintText:
                          widget.childRecord.feedingType != null
                              ? widget.childRecord.feedingType!
                              : 'Enter feeding type',
                      controller: feedingController,
                      keyboardType: TextInputType.text,
                    ),
                  ],
                ),

                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Doctor Notes',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText:
                          widget.childRecord.doctorNotes != null
                              ? widget.childRecord.doctorNotes!
                              : 'Enter doctor notes',
                      controller: doctorNotesController,
                      keyboardType: TextInputType.text,
                      maxLines: 3,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Growth Notes',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText:
                          widget.childRecord.growthNotes != null
                              ? widget.childRecord.growthNotes!
                              : 'Enter growth notes',
                      controller: growthNotesController,
                      keyboardType: TextInputType.text,
                      maxLines: 3,
                    ),
                  ],
                ),

                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Developmental Observations',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText:
                          widget.childRecord.developmentalObservations != null
                              ? widget.childRecord.developmentalObservations!
                              : 'Enter developmental observations',
                      controller: devObservationsController,
                      keyboardType: TextInputType.text,
                      maxLines: 3,
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Align(
                  alignment: Alignment.center,
                  child: BlocListener<
                    ModifyChildRecordCubit,
                    ModifyChildRecordState
                  >(
                    bloc: _modifyChildRecordCubit,
                    listener: (context, state) {
                      if (state.status.isLoading) {
                        LoadingOverlay().show(context);
                      } else {
                        LoadingOverlay().hideAll();
                        showToast(
                          context: context,
                          type:
                              state.status.isError
                                  ? ToastificationType.error
                                  : ToastificationType.success,
                          msg: state.message,
                        );

                        if (state.status.isDone) {
                          context.pop<bool>(true);
                        }
                      }
                    },
                    child: CustomButton(
                      text: "Save",
                      onPressed:
                          _allEmpty()
                              ? null
                              : () {
                                _modifyChildRecordCubit.modifyChildRecord(
                                  ChildRecordRequest(
                                    recordId: widget.childRecord.id ?? -1,
                                    allergies:
                                        allergiesController.text.trim().isEmpty
                                            ? null
                                            : allergiesController.text,
                                    developmentalObservations:
                                        devObservationsController.text
                                                .trim()
                                                .isEmpty
                                            ? null
                                            : devObservationsController.text,
                                    doctorNotes:
                                        doctorNotesController.text
                                                .trim()
                                                .isEmpty
                                            ? null
                                            : doctorNotesController.text,
                                    feedingType: _selectedFeedingType,
                                    growthNotes:
                                        growthNotesController.text
                                                .trim()
                                                .isEmpty
                                            ? null
                                            : growthNotesController.text,
                                    headCircumferenceCm:
                                        headCircumferenceController.text
                                                .trim()
                                                .isEmpty
                                            ? null
                                            : double.parse(
                                              headCircumferenceController.text,
                                            ),
                                    heightCm:
                                        heightController.text.trim().isEmpty
                                            ? null
                                            : double.parse(
                                              heightController.text,
                                            ),
                                    nextVisitDate: _selectedDate,
                                    weightKg:
                                        weightController.text.trim().isEmpty
                                            ? null
                                            : double.parse(
                                              weightController.text,
                                            ),
                                  ),
                                );
                              },
                      color: Pallete.primaryColor,
                      width: screenWidth(context) * 0.4,
                      height: screenHeight(context) * 0.06,
                      padding: const EdgeInsets.all(6),
                      borderRadius: 4,
                      textColor: Pallete.grayScaleColor0,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool _allEmpty() {
    return lastVisitController.text.trim().isEmpty &&
        nextVisitController.text.trim().isEmpty &&
        heightController.text.trim().isEmpty &&
        weightController.text.trim().isEmpty &&
        headCircumferenceController.text.trim().isEmpty &&
        allergiesController.text.trim().isEmpty &&
        feedingController.text.trim().isEmpty &&
        doctorNotesController.text.trim().isEmpty &&
        growthNotesController.text.trim().isEmpty &&
        devObservationsController.text.trim().isEmpty;
  }

  DateTime? _selectedDate;
  var _selectedFeedingType = FeedingType.natural;
  late final ModifyChildRecordCubit _modifyChildRecordCubit;
  final TextEditingController lastVisitController = TextEditingController();
  final TextEditingController nextVisitController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController headCircumferenceController =
      TextEditingController();
  final TextEditingController allergiesController = TextEditingController();
  final TextEditingController feedingController = TextEditingController();
  final TextEditingController doctorNotesController = TextEditingController();
  final TextEditingController growthNotesController = TextEditingController();
  final TextEditingController devObservationsController =
      TextEditingController();
}
