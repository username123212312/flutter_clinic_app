import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/validator_util.dart';
import '../../widgets/auth_widgets.dart';
import '../../widgets/custom_button.dart';

class ForgotPasswordscreen extends StatefulWidget {
  const ForgotPasswordscreen({super.key});

  @override
  State<ForgotPasswordscreen> createState() => ForgotPasswordScreenState();
}

class ForgotPasswordScreenState extends State<ForgotPasswordscreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? savedEmail;
  String? savedPhone;

  bool isPasswordVisible = false;
  int selectedTabIndex = 0;

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      log("Saved Email: $savedEmail");
      log("Saved Phone: $savedPhone");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("im/background-new.webp"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 280,
                        width: 328,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Forget Password",
                              style: Theme.of(
                                context,
                              ).textTheme.labelMedium!.copyWith(
                                fontSize: 20,
                                color: Pallete.grayScaleColor700,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "create a secure password ",
                              style: Theme.of(
                                context,
                              ).textTheme.labelSmall!.copyWith(
                                fontSize: 12,
                                color: Pallete.grayScaleColor500,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Image.asset(
                              "im/login.webp",
                              height: 191,
                              width: 211,
                            ),
                          ],
                        ),
                      ),
                      TwoSelectableWidget(
                        twoTitles: ['Email', 'Phone'],
                        onToggleIndex: (newIndex) {
                          setState(() {
                            selectedTabIndex = newIndex;
                          });
                        },
                      ),
                      const SizedBox(height: 30),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          selectedTabIndex == 0 ? "Email" : "Phone Number",
                          style: Theme.of(
                            context,
                          ).textTheme.titleSmall!.copyWith(
                            fontSize: 10,
                            color: Pallete.grayScaleColor700,
                          ),
                        ),
                      ),
                      CustomTextField(
                        hintText: selectedTabIndex == 0 ? 'Email' : '+963',
                        controller:
                            selectedTabIndex == 0
                                ? emailController
                                : phoneController,
                        keyboardType:
                            selectedTabIndex == 0
                                ? TextInputType.emailAddress
                                : TextInputType.phone,
                        fillColor: Pallete.transparentColor,
                        validator: (value) {
                          if (!(selectedTabIndex == 0 &&
                              ValidatorUtil.validateEmail(value))) {
                            return 'Enter a vailid email';
                          } else if (!(selectedTabIndex == 1 &&
                              ValidatorUtil.validatePhone(value))) {
                            return 'Enter a valid phone number';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          if (selectedTabIndex == 0) {
                            savedEmail = value;
                          } else {
                            savedPhone = value;
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        text: 'Next',
                        onPressed: _submitForm,
                        width: double.infinity,
                        height: 56,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        color: Pallete.primaryColor,
                        textColor: Colors.white,
                        borderRadius: 8,
                        fontSize: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
