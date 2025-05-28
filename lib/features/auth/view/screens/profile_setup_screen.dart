import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/core/widgets/background_container.dart';
import 'package:our_flutter_clinic_app/core/widgets/blood_types_widget.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/basic_info_widget.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/custom_elevated_button.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/select_your_gender_widet.dart';

import '../../../../core/blocs/user_bloc/user_bloc.dart';
import '../../../../core/consts/app_constants.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  State<ProfileSetupScreen> createState() => ProfileSetupnState();
}

class ProfileSetupnState extends State<ProfileSetupScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _opacityController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _opacityController.addListener(() {
      if (_opacityController.isCompleted) {}
    });
    _opacityController.forward();
  }

  @override
  void dispose() {
    _opacityController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    completeAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PopScope(
        canPop: _currentIndex == 0 ? true : false,
        onPopInvokedWithResult: (didPop, result) {
          if (!didPop) {
            setState(() {
              _currentIndex--;
              _opacityController.reset();
              _opacityController.forward();
            });
          }
        },
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: screenHeight(context) * 0.1,
            title: Text('Your Profile'),
            titleTextStyle: Theme.of(
              context,
            ).textTheme.labelSmall!.copyWith(fontSize: 23),
          ),
          body: BackgroundContainer(
            child: Padding(
              padding: EdgeInsets.only(
                left: 40,
                right: 40,
                bottom: MediaQuery.of(context).viewInsets.bottom * 0.1,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    _buildStepper(),
                    BlocListener<UserBloc, UserState>(
                      listener: (context, state) {
                        clearAndShowSnackBar(context, state.statusMessage);

                        if (state.user?.firstName != null) {
                          clearAndShowSnackBar(context, state.statusMessage);
                          context.goNamed(AppRouteConstants.homeRouteName);
                        }
                      },
                      child: SizedBox(height: 15),
                    ),
                    Align(
                      alignment: Alignment(-0.9, 0.0),
                      child: Text(
                        'Complete your profile data!',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Pallete.oxfordBlue,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(height: 45),
                    Align(
                      alignment: Alignment.center,
                      child: FadeTransition(
                        opacity: _opacityController,
                        child: Text(
                          _currentIndex == 0
                              ? 'Basic Information'
                              : _currentIndex == 1
                              ? 'Select your gender:'
                              : 'Select your Blood type:',
                          style: Theme.of(
                            context,
                          ).textTheme.labelSmall!.copyWith(
                            color: Pallete.oxfordBlue,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    FadeTransition(
                      opacity: _opacityController,
                      child:
                          _currentIndex == 0
                              ? _buildFormFields()
                              : _currentIndex == 1
                              ? SelectYourGenderWidet(
                                selectedGender: _selectedGender,
                                onSelected: (id) {
                                  setState(() {
                                    _selectedGender = id;
                                  });
                                },
                              )
                              : _currentIndex == 2
                              ? _buildBloodTypes()
                              : SizedBox.shrink(),
                    ),
                    SizedBox(
                      height:
                          _currentIndex == 0
                              ? screenHeight(context) * 0.05
                              : _currentIndex == 1
                              ? screenHeight(context) * 0.28
                              : screenHeight(context) * 0.31,
                    ),
                    _buildTwoButtons(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _buildBloodTypes() {
    return SizedBox(
      width: screenWidth(context) * 0.9,
      height: screenHeight(context) * 0.2,
      child: BloodTypesWidget(
        onSelected: (bloodType) {
          _selectedBloodType = bloodType;
        },
      ),
    );
  }

  Widget _buildFormFields() {
    return Form(
      key: _formKey,
      child: SizedBox(
        height: screenHeight(context) * 0.465,
        child: ListView(
          shrinkWrap: true,
          children: [
            BasicInfoWidget(
              validator: (value) {
                final isValid = ValidatorUtil.validateText(value);
                if (!isValid) {
                  return 'Enter a valid Name';
                } else {
                  return null;
                }
              },
              maxLength: 10,
              controller: firstNameController,
              title: 'First Name',
              hintText: 'First Name',
              keyboardType: TextInputType.name,
            ),
            BasicInfoWidget(
              validator: (value) {
                final isValid = ValidatorUtil.validateText(value);
                if (!isValid) {
                  return 'Enter a valid Name';
                } else {
                  return null;
                }
              },
              maxLength: 10,
              controller: lastNameController,
              title: 'Last Name',
              hintText: 'Last Name',
              keyboardType: TextInputType.name,
            ),
            BasicInfoWidget(
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1920),
                  lastDate: DateTime.now(),
                );
                if (date != null) {
                  setState(() {
                    _ageController.text = calculateAge(date).toString();
                  });
                }
              },
              controller: _ageController,
              readOnly: true,
              title: 'Age',
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
            BasicInfoWidget(
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'Address should not be empty';
                } else {
                  return null;
                }
              },
              maxLength: 100,
              controller: completeAddressController,
              title: 'Complete Address',
              hintText: 'Address',
              keyboardType: TextInputType.name,
            ),
          ],
        ),
      ),
    );
  }

  Row _buildTwoButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (_currentIndex != 0)
          CustomElevatedButton(
            title: 'Skip',
            onTap: () {},
            elevation: 0,
            fillColor: Colors.transparent,
            textColor: Theme.of(context).colorScheme.primary,
          ),
        CustomElevatedButton(
          title: 'Continue',
          onTap: () {
            if (_currentIndex == 0) {
              if (!_submit()) {
                return;
              }
            }
            if ((_currentIndex + 1) <= 2) {
              setState(() {
                _currentIndex++;
                _opacityController.reset();
                _opacityController.forward();
              });
            } else {
              context.read<UserBloc>().add(
                UserEvent.userCompletedProfileData(
                  user: UserModel(
                    firstName: firstNameController.text,
                    lastName: lastNameController.text,
                    age: int.tryParse(_ageController.text) ?? 0,
                    address: completeAddressController.text,
                    bloodType: AppConstants.bloodTypes[_selectedBloodType],
                    gender: _selectedGender == 0 ? 'male' : 'female',
                  ),
                ),
              );
            }
          },
          elevation: 0,
          fillColor: Theme.of(context).colorScheme.primary,
          textColor: Colors.white,
        ),
      ],
    );
  }

  Widget _buildStepper() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).colorScheme.primary,
          ),
          height: 3,
          width: screenWidth(context) * 0.25,
        ),
        SizedBox(width: 5),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color:
                _currentIndex > 0
                    ? Theme.of(context).colorScheme.primary
                    : Pallete.inactiveColor3,
          ),
          height: 3,
          width: screenWidth(context) * 0.25,
        ),
        SizedBox(width: 5),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color:
                _currentIndex > 1
                    ? Theme.of(context).colorScheme.primary
                    : Pallete.inactiveColor3,
          ),
          height: 3,
          width: screenWidth(context) * 0.25,
        ),
      ],
    );
  }

  bool _submit() {
    if (!_formKey.currentState!.validate()) {
      return false;
    }
    _formKey.currentState!.save();
    return true;
  }

  int _currentIndex = 0;
  int _selectedGender = 0;
  int _selectedBloodType = 0;
  late final AnimationController _opacityController;
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final _ageController = TextEditingController();
  final completeAddressController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
}
