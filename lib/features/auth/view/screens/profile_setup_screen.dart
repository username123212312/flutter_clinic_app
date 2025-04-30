import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/background_container.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/custom_elevated_button.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/custom_text_field.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/select_your_gender_widet.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/selectable_widget.dart';

import '../../../../core/utils.dart';

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
                    SizedBox(height: 15),
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
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 80,
          mainAxisExtent: 70,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          childAspectRatio: 0.5,
        ),
        itemCount: bloodTypes.length,
        itemBuilder: (context, index) {
          final bloodType = bloodTypes[index];
          return SelectableWidget(
            onSelect: (id) {
              setState(() {
                _selectedBloodType = id;
              });
            },
            title: bloodType,
            id: index,
            isSelected: _selectedBloodType == index,
          );
        },
      ),
    );
  }

  Widget _buildFormFields() {
    return Form(
      child: SizedBox(
        height: screenHeight(context) * 0.465,
        child: ListView(
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          // itemExtent: screenHeight(context) * 0.145,
          children: [
            BasicInfoWidget(
              maxLength: 10,
              controller: firstNameController,
              title: 'First Name',
              hintText: 'First Name',
              keyboardType: TextInputType.name,
            ),
            BasicInfoWidget(
              maxLength: 10,
              controller: lastNameController,
              title: 'Last Name',
              hintText: 'Last Name',
              keyboardType: TextInputType.name,
            ),
            BasicInfoWidget(
              controller: ageController,
              title: 'Age',
              hintText: 'Age',
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 20),
            BasicInfoWidget(
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
            if ((_currentIndex + 1) <= 2) {
              setState(() {
                _currentIndex++;
                _opacityController.reset();
                _opacityController.forward();
              });
            } else {
              return;
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

  int _currentIndex = 0;
  int _selectedGender = 0;
  static const bloodTypes = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'];
  int _selectedBloodType = 0;
  late final AnimationController _opacityController;
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final ageController = TextEditingController();
  final completeAddressController = TextEditingController();
}

class BasicInfoWidget extends StatelessWidget {
  const BasicInfoWidget({
    super.key,
    required this.controller,
    required this.title,
    required this.hintText,
    required this.keyboardType,
    this.maxLength,
    this.maxLines,
  });

  final TextEditingController controller;
  final String title;
  final String hintText;
  final TextInputType keyboardType;
  final int? maxLength;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: RichText(
            text: TextSpan(
              text: title,
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontSize: 12),
              children: [
                TextSpan(
                  text: '*',
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
        CustomTextField(
          maxLength: maxLength,
          maxLines: maxLines,
          hintText: hintText,
          controller: controller,
          keyboardType: keyboardType,
        ),
        // SizedBox(height: 10),
      ],
    );
  }
}
