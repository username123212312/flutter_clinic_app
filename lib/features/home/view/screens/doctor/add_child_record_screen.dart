import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:toastification/toastification.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../../auth/view/widgets/custom_button.dart';
import '../../../../auth/view/widgets/custom_text_field.dart';
import '../../../controller/doctor_add_child_record_cubit/doctor_add_child_record_cubit.dart';
import '../../../model/requests/child_record_request.dart';
import '../../../repository/doctor_child_record_repository.dart';

class AddChildRecordScreen extends StatefulWidget {
  const AddChildRecordScreen({super.key, required this.child});
  final UserModel child;

  @override
  State<AddChildRecordScreen> createState() => _AddChildRecordScreenState();
}

class _AddChildRecordScreenState extends State<AddChildRecordScreen> {
  @override
  void initState() {
    _doctorAddChildRecordCubit = DoctorAddChildRecordCubit(
      child: widget.child,
      doctorChildRecordRepository: DoctorChildRecordRepository(),
    );
    super.initState();
  }

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
            child: Form(
              key: _formKey,
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
                        validator: (p0) {
                          if (ValidatorUtil.isEmpty(p0)) {
                            return 'You must enter a valid date';
                          } else {
                            return null;
                          }
                        },
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
                        hintText: 'Enter next visit date',
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
                        validator: (p0) {
                          if (ValidatorUtil.isEmpty(p0)) {
                            return 'You must enter a valid hight';
                          } else {
                            return null;
                          }
                        },
                        hintText: 'Enter height in cm',
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
                        validator: (p0) {
                          if (ValidatorUtil.isEmpty(p0)) {
                            return 'You must enter a valid weight';
                          } else {
                            return null;
                          }
                        },
                        hintText: 'Enter weight in kg',
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
                        validator: (p0) {
                          if (ValidatorUtil.isEmpty(p0)) {
                            return 'You must enter a valid head circumference';
                          } else {
                            return null;
                          }
                        },
                        hintText: 'Enter head circumference in cm',
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
                        validator: (p0) {
                          if (ValidatorUtil.isEmpty(p0)) {
                            return 'You must enter a valid allergies';
                          } else {
                            return null;
                          }
                        },
                        hintText: 'Enter allergies',
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
                        hintText: 'Enter feeding type',
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
                        validator: (p0) {
                          if (ValidatorUtil.isEmpty(p0)) {
                            return 'You must enter your notes';
                          } else {
                            return null;
                          }
                        },
                        hintText: 'Enter doctor notes',
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
                        validator: (p0) {
                          if (ValidatorUtil.isEmpty(p0)) {
                            return 'You must enter growth notes';
                          } else {
                            return null;
                          }
                        },
                        hintText: 'Enter growth notes',
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
                        validator: (p0) {
                          if (ValidatorUtil.isEmpty(p0)) {
                            return 'You must enter developmental observations';
                          } else {
                            return null;
                          }
                        },
                        hintText: 'Enter developmental observations',
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
                      DoctorAddChildRecordCubit,
                      DoctorAddChildRecordState
                    >(
                      bloc: _doctorAddChildRecordCubit,
                      listener: (context, state) {
                        if (state.status.isLoading) {
                          LoadingOverlay().show(context);
                        } else {
                          LoadingOverlay().hideAll();

                          showToast(
                            context: context,
                            msg: state.message,
                            type:
                                state.status.isError
                                    ? ToastificationType.error
                                    : ToastificationType.success,
                          );

                          if (state.status.isDone) {
                            context.pop<bool>(true);
                          }
                        }
                      },
                      child: CustomButton(
                        text: "Save",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _doctorAddChildRecordCubit.addChildRecord(
                              ChildRecordRequest(
                                childId: widget.child.id ?? -1,
                                allergies: allergiesController.text,
                                developmentalObservations:
                                    devObservationsController.text,
                                doctorNotes: doctorNotesController.text,
                                feedingType: _selectedFeedingType,
                                growthNotes: growthNotesController.text,
                                headCircumferenceCm: double.parse(
                                  headCircumferenceController.text,
                                ),
                                heightCm: double.parse(heightController.text),
                                nextVisitDate: _selectedDate,
                                weightKg: double.parse(weightController.text),
                              ),
                            );
                          }
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
          ),
        ],
      ),
    );
  }

  late final DoctorAddChildRecordCubit _doctorAddChildRecordCubit;
  DateTime? _selectedDate;
  final _formKey = GlobalKey<FormState>();
  var _selectedFeedingType = FeedingType.natural;
}
