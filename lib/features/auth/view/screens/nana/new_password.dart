import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/validator_util.dart';
import '../../widgets/auth_widgets.dart';
import 'bullet_item.dart';
import '../../widgets/custom_button.dart';

class NanaCreatePasswordScreen extends StatefulWidget {
  const NanaCreatePasswordScreen({super.key});

  @override
  State<NanaCreatePasswordScreen> createState() =>
      _NanaCreatePasswordScreenState();
}

class _NanaCreatePasswordScreenState extends State<NanaCreatePasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  String? savedPassword;
  String? savedConfirmPassword;

  @override
  void dispose() {
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      log("Saved password: $savedPassword");
      log("Saved confirm password: $savedConfirmPassword");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: SafeArea(
        child: BackgroundContainer(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    height: 70,
                    color: Pallete.backgroundColor,
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Pallete.grayScaleColor700,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              "Create a Password",
                              style: TextStyle(
                                fontSize: 20,
                                color: Pallete.grayScaleColor700,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 48),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Enter New Password",
                          style: Theme.of(
                            context,
                          ).textTheme.labelMedium!.copyWith(fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: Image.asset(
                            "assets/images/password.webp",
                            height: 191,
                            width: 211,
                          ),
                        ),
                        const SizedBox(height: 25),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "New Password",
                            style: Theme.of(
                              context,
                            ).textTheme.titleSmall!.copyWith(
                              fontSize: 12,
                              color: Pallete.grayScaleColor700,
                            ),
                          ),
                        ),
                        CustomTextField(
                          maxLines: 1,
                          hintText: 'New Password',
                          controller: newPasswordController,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          fillColor: Pallete.transparentColor,
                          validator: (value) {
                            if (!ValidatorUtil.validatePassword(value!)) {
                              return 'Enter a vailid email';
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            savedPassword = value;
                          },
                          suffixIcon: IconButton(
                            icon: Icon(
                              isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Pallete.grayScaleColor500,
                            ),
                            onPressed: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Confirm Password",
                            style: Theme.of(
                              context,
                            ).textTheme.titleSmall!.copyWith(
                              fontSize: 12,
                              color: Pallete.grayScaleColor700,
                            ),
                          ),
                        ),
                        CustomTextField(
                          maxLines: 1,
                          hintText: 'Confirm Password',
                          controller: confirmPasswordController,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          fillColor: Pallete.transparentColor,
                          validator: (value) {
                            if (!(value == newPasswordController.text)) {
                              return 'Passwords don\'t match';
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            savedConfirmPassword = value;
                          },
                          suffixIcon: IconButton(
                            icon: Icon(
                              isConfirmPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Pallete.grayScaleColor500,
                            ),
                            onPressed: () {
                              setState(() {
                                isConfirmPasswordVisible =
                                    !isConfirmPasswordVisible;
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: BulletItem(
                                    text: "Minimum 8 characters",
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: BulletItem(
                                    text: "Has lowercase letters",
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Expanded(
                                  child: BulletItem(
                                    text: "Has uppercase letters",
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: BulletItem(text: "Has numbers"),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        CustomButton(
                          text: 'Create Password',
                          onPressed: _submitForm,
                          width: double.infinity,
                          height: 56,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          color: Pallete.primaryColor,
                          textColor: Colors.white,
                          borderRadius: 12,
                          fontSize: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
