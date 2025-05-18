import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/utils/general_utils.dart';
import 'package:flutter_clinic_app/core/utils/validator_util.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../widgets/auth_widgets.dart';
import 'button.dart';
import 'google.dart';

class NanaLoginScreen extends StatefulWidget {
  const NanaLoginScreen({super.key});

  @override
  State<NanaLoginScreen> createState() => _NanaLoginScreenState();
}

class _NanaLoginScreenState extends State<NanaLoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _isPasswordVisible = false;
  int _selectedTabIndex = 0;

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _submitLoginForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      log("Email: ${emailController.text}");
      log("Phone: ${phoneController.text}");
      log("Password: ${passwordController.text}");
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
                  image: AssetImage("assets/images/background.webp"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/images/logo.webp",
                        height: 100,
                        width: 90,
                      ),
                      const SizedBox(height: 10),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 24),
                          children: [
                            TextSpan(text: 'Welcome to '),
                            TextSpan(
                              text: 'Clinic',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Want to get treatment immediately? Come in!',
                        style: TextStyle(color: Pallete.grayScaleColor500),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: screenWidth(context) * 0.65,
                        child: FittedBox(
                          child: TwoSelectableWidget(
                            inBetweenPadding: screenWidth(context) * 0.3,
                            twoTitles: ['Email', 'Phone'],
                            onToggleIndex: (newIndex) {
                              setState(() {
                                _selectedTabIndex = newIndex;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          _selectedTabIndex == 0 ? "Email" : "Phone Number",
                          style: const TextStyle(
                            color: Pallete.grayScaleColor700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      CustomTextField(
                        hintText: _selectedTabIndex == 0 ? 'Email' : '+963',
                        controller:
                            _selectedTabIndex == 0
                                ? emailController
                                : phoneController,
                        keyboardType:
                            _selectedTabIndex == 0
                                ? TextInputType.emailAddress
                                : TextInputType.phone,
                        fillColor: Pallete.transparentColor,
                        validator: (value) {
                          if (_selectedTabIndex == 0 &&
                              !ValidatorUtil.validateEmail(value)) {
                            return 'Enter a vailid email';
                          } else if (_selectedTabIndex == 1 &&
                              !ValidatorUtil.validatePhone(value)) {
                            return 'Enter a valid phone number';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 10),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(
                            color: Pallete.grayScaleColor700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      CustomTextField(
                        textInputAction: TextInputAction.done,
                        maxLines: 1,
                        hintText: 'Enter password',
                        controller: passwordController,
                        obscureText: !_isPasswordVisible,
                        keyboardType: TextInputType.visiblePassword,
                        fillColor: Pallete.transparentColor,
                        validator: (value) {
                          if (!ValidatorUtil.validatePassword(value!)) {
                            return 'Enter a valid password';
                          }
                          return null;
                        },

                        // suffixIcon: IconButton(
                        //   icon: Icon(
                        //     _isPasswordVisible
                        //         ? Icons.visibility
                        //         : Icons.visibility_off,
                        //     color: Pallete.grayScaleColor500,
                        //   ),
                        //   onPressed: () {
                        //     setState(() {
                        //       _isPasswordVisible = !_isPasswordVisible;
                        //     });
                        //   },
                        // ),
                      ),
                      SizedBox(height: 10),

                      Align(
                        alignment: Alignment(0.9, 0.0),
                        child: GestureDetector(
                          onTap: () {
                            //TODO navigate to forgot password
                          },
                          child: Text(
                            'Forgot your password?',
                            style: Theme.of(
                              context,
                            ).textTheme.labelSmall!.copyWith(
                              fontSize: 12,
                              color: Pallete.grayScaleColor700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      CustomButton(
                        text: 'Login',
                        onPressed: _submitLoginForm,
                        width: double.infinity,
                        height: 56,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        color: Pallete.primaryColor,
                        textColor: Colors.white,
                        borderRadius: 8,
                        fontSize: 16,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'OR',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 15,
                          color: Pallete.grayScaleColor700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      CustomGoogleButton(
                        onPressed: () {
                          log('Google button pressed!');
                        },
                        text: 'Google',
                        imagePath: 'assets/icons/ic_google.png',
                      ),
                      const SizedBox(height: 25),
                      Text.rich(
                        TextSpan(
                          text: 'Don\'t have an account? ',
                          style: Theme.of(
                            context,
                          ).textTheme.titleSmall!.copyWith(
                            fontSize: 14,
                            color: Pallete.grayScaleColor700,
                          ),
                          children: [
                            TextSpan(
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              text: 'Register',
                              style: Theme.of(
                                context,
                              ).textTheme.titleSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
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
