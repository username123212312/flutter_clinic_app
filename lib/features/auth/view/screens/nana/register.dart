import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/core/widgets/widgets.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../../core/utils/validator_util.dart';
import '../../widgets/auth_widgets.dart';
import 'button.dart';
import 'google.dart';

class NanaRegisterScreen extends StatefulWidget {
  const NanaRegisterScreen({super.key});

  @override
  State<NanaRegisterScreen> createState() => _NanaRegisterScreenState();
}

class _NanaRegisterScreenState extends State<NanaRegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? savedEmail;
  String? savedPhone;

  bool _isPasswordVisible = false;
  int _selectedTabIndex = 0;

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      print("Saved Email: $savedEmail");
      print("Saved Phone: $savedPhone");
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
                              "Register",
                              style: Theme.of(context).textTheme.labelMedium!
                                  .copyWith(fontSize: 18, color: Colors.black),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "create a new account",
                              style: TextStyle(
                                color: Pallete.grayScaleColor500,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Image.asset(
                              "assets/images/login.webp",
                              height: 191,
                              width: 211,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenWidth(context) * 0.8,
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
                            color: Pallete.grayScaleColor400,
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
                          if (!(_selectedTabIndex == 0 &&
                              ValidatorUtil.validateEmail(value))) {
                            return 'Enter a vailid email';
                          } else if (!(_selectedTabIndex == 1 &&
                              ValidatorUtil.validatePhone(value))) {
                            return 'Enter a valid phone number';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          if (_selectedTabIndex == 0) {
                            savedEmail = value;
                          } else {
                            savedPhone = value;
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        text: 'Register',
                        onPressed: _submitForm,
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
                          print('Google button pressed!');
                        },
                        text: 'Google',
                        imagePath: 'assets/icons/ic_google.png',
                      ),
                      const SizedBox(height: 45),
                      Text.rich(
                        TextSpan(
                          text: 'Already have an account? ',
                          style: Theme.of(
                            context,
                          ).textTheme.titleSmall!.copyWith(
                            fontSize: 14,
                            color: Pallete.grayScaleColor700,
                          ),
                          children: [
                            TextSpan(
                              recognizer:
                                  TapGestureRecognizer()
                                    ..onTap = () {
                                      //TODO navigate to login
                                    },
                              text: 'Login',
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
