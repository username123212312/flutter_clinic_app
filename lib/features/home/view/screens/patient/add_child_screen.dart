import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../../../core/widgets/blood_types_widget.dart';
import '../../../../auth/model/requests/auth_requests.dart';
import '../../../../auth/view/widgets/custom_text_field.dart';

class AddChildScreen extends StatefulWidget {
  const AddChildScreen({super.key});

  @override
  State<AddChildScreen> createState() => _AddChildScreenState();
}

class _AddChildScreenState extends State<AddChildScreen> {
  @override
  void dispose() {
    LoadingOverlay().hideAll();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight(context) * 0.09,
        centerTitle: false,
        iconTheme: IconThemeData(size: 24),
        forceMaterialTransparency: true,
        title: Text(
          'Add new child',
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
            fontSize: 20,
            color: Pallete.grayScaleColor700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: MediaQuery.of(context).viewInsets.bottom * 0.2,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'First name',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall!.copyWith(fontSize: 12),
              ),
              SizedBox(height: 10),
              CustomTextField(
                validator: (p0) {
                  if (p0!.trim().isEmpty) {
                    return 'Enter a valid name';
                  } else {
                    return null;
                  }
                },
                controller: _firstNameController,
                hintText: 'First Name',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20),
              Text(
                'Last name',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall!.copyWith(fontSize: 12),
              ),
              SizedBox(height: 10),
              CustomTextField(
                validator: (p0) {
                  if (p0!.trim().isEmpty) {
                    return 'Enter a valid name';
                  } else {
                    return null;
                  }
                },
                controller: _lastNameController,
                hintText: 'Last Name',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20),
              Text(
                'Gender',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall!.copyWith(fontSize: 12),
              ),
              SizedBox(height: 10),
              CustomTextField(
                controller: _genderController,
                readOnly: true,
                suffixIcon: DropdownButton<int>(
                  value: _selectedGender,
                  underline: Container(color: Colors.transparent),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Pallete.grayScaleColor400,
                    size: 40,
                  ),
                  items: [
                    DropdownMenuItem(value: 0, child: Text('Male')),
                    DropdownMenuItem(value: 1, child: Text('Female')),
                  ],
                  onChanged: (index) {
                    setState(() {
                      _genderController.text = index == 0 ? 'Male' : 'Female';
                      _selectedGender = index!;
                    });
                  },
                ),
                hintText: 'Gender',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20),
              BlocListener<UserBloc, UserState>(
                listener: (context, state) {
                  if (state.status.isLoading) {
                    LoadingOverlay().show(context);
                  } else {
                    LoadingOverlay().hideAll();
                    Fluttertoast.showToast(msg: state.statusMessage);

                    if (state.childrenListStatus.isDone) {
                      context.pop();
                    }
                  }
                },
                child: Text(
                  'Age',
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall!.copyWith(fontSize: 12),
                ),
              ),
              SizedBox(height: 10),
              CustomTextField(
                validator: (p0) {
                  if (p0!.trim().isEmpty) {
                    return 'You must select an age';
                  } else {
                    return null;
                  }
                },
                onTap: () async {
                  final date = await showDatePicker(
                    context: context,
                    firstDate: DateTime(2016),
                    lastDate: DateTime.now(),
                    initialDate: DateTime.now(),
                  );
                  if (date != null) {
                    setState(() {
                      _selectedDate = date;
                      _ageController.text = DateFormat(
                        'yyyy-MM-dd',
                      ).format(date);
                    });
                  }
                },
                controller: _ageController,
                readOnly: true,
                hintText: 'Age',
                keyboardType: TextInputType.number,
                suffixIcon: Transform.scale(
                  scaleY: 0.7,
                  scaleX: 0.7,
                  child: Image.asset(
                    'assets/icons/ic_calendar.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              _buildBloodTypes(),
              SizedBox(
                height: screenHeight(context) * 0.07,
                width: screenWidth(context),
                child: CustomElevatedButton(
                  fontSize: 15,
                  title: 'Add',
                  onTap: isAllEmpty() ? null : _submit,
                  fillColor: Theme.of(context).colorScheme.primary,
                  textColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      context.read<UserBloc>().add(
        ChildAdded(
          request: CompleteUserInfoRequest(
            firstName: _firstNameController.text.trim(),
            lastName: _lastNameController.text.trim(),
            gender: _genderController.text.toLowerCase().trim(),
            bloodType: AppConstants.bloodTypes[_selectedBloodType],
            birthDate: _selectedDate,
          ),
        ),
      );
    }
  }

  bool isAllEmpty() {
    return _firstNameController.text.trim().isEmpty &&
        _lastNameController.text.trim().isEmpty &&
        _ageController.text.trim().isEmpty;
  }

  Column _buildBloodTypes() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Medical Data',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 20),
        ),
        SizedBox(height: 20),
        Text(
          'Blood Type',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),

        SizedBox(
          height: screenHeight(context) * 0.2,
          child: BloodTypesWidget(
            selectedBloodType: _selectedBloodType,
            onSelected: (bloodType) {
              _selectedBloodType = bloodType;
            },
          ),
        ),
      ],
    );
  }

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _genderController = TextEditingController(text: 'Male');
  final _ageController = TextEditingController();
  int _selectedBloodType = 0;
  DateTime? _selectedDate;
  int _selectedGender = 0;
  final _formKey = GlobalKey<FormState>();
}
