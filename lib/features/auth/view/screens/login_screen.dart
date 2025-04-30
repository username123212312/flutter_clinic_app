import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/core/cubits/role/role_cubit.dart';
import 'package:flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:flutter_clinic_app/core/providers/google_provider.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/core/utils/utils.dart';
import 'package:flutter_clinic_app/core/utils/validator_util.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/background_container.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/custom_elevated_button.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/custom_text_field.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/two_sellectable_widget.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/enums.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _role = context.read<RoleCubit>().state.role;
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.bounceInOut),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: BackgroundContainer(
            child: Column(
              children: [
                _buildHeader(),
                _buildTwoSelectable(),
                _buildFormFields(),
                _buildTwoLoginButtons(),
                _buildFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Flexible _buildFooter() {
    return Flexible(
      flex: 3,
      fit: FlexFit.tight,
      child: Column(
        children: [
          SizedBox(height: 40),
          RichText(
            text: TextSpan(
              text: 'Don\'t have an account? ',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Pallete.grayScaleColor500,
                fontSize: 15,
              ),
              children: [
                TextSpan(
                  text: 'Register',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Flexible _buildTwoLoginButtons() {
    return Flexible(
      flex: 4,
      fit: FlexFit.tight,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: screenWidth(context) * 0.85,
              child: CustomElevatedButton(
                title: 'Login',
                onTap: () {
                  if (submit()) {
                    log('log in');
                  }
                },
                fillColor: Theme.of(context).colorScheme.primary,
                textColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      height: 1,
                      color: Pallete.grayScaleColor300,
                      width: screenWidth(context) * 0.36,
                    ),
                  ),
                  Text(
                    'OR',
                    style: TextStyle(
                      fontSize: 20,
                      color: Pallete.grayScaleColor500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 1,
                      color: Pallete.grayScaleColor300,
                      width: screenWidth(context) * 0.36,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: screenWidth(context) * 0.85,
              child: CustomElevatedButton(
                prefix: Image.asset('assets/icons/ic_google.png'),
                elevation: 0,
                borderColor: Pallete.grayScaleColor300,
                title: 'Google',
                onTap: () async {
                  final result = await GoogleAuthService().signIn();
                  log(result.toString());
                },
                fillColor: Colors.transparent,
                textColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Flexible _buildFormFields() {
    return Flexible(
      flex: 4,
      fit: FlexFit.loose,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(height: 10),
              if (_currentLoginMethod == 0)
                FadeTransition(
                  opacity: _opacityAnimation,
                  child: CustomTextField(
                    controller: _emailController,
                    validator: (value) {
                      if (!ValidatorUtil.validateEmail(value)) {
                        return 'Enter a valid Email';
                      } else {
                        return null;
                      }
                    },
                    hintText: 'Email',
                    keyboardType: TextInputType.text,
                  ),
                ),
              if (_currentLoginMethod == 1)
                FadeTransition(
                  opacity: _opacityAnimation,
                  child: CustomTextField(
                    controller: _phoneController,
                    validator: (value) {
                      if (!ValidatorUtil.validatePhone(value)) {
                        return 'Enter a valid Phone number';
                      } else {
                        return null;
                      }
                    },
                    hintText: 'Phone',
                    keyboardType: TextInputType.phone,
                  ),
                ),
              SizedBox(height: 10),
              CustomTextField(
                textInputAction: TextInputAction.done,
                maxLines: 1,
                obscureText: true,
                controller: _passwordController,
                validator: (value) {
                  if (!ValidatorUtil.validatePassword(value ?? '')) {
                    return 'Enter a valid Password';
                  } else {
                    return null;
                  }
                },
                hintText: 'Password',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10),
              Align(
                alignment: AlignmentDirectional(0.9, 0.0),
                child: GestureDetector(
                  onTap: () {
                    if (submit()) {
                      context.pushNamed(
                        AppRouteConstants.verificationCodeScreen,
                        pathParameters: {'email': _emailController.text},
                      );
                    }
                  },
                  child: Text(
                    'Forgot your password?',
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: Pallete.grayScaleColor700,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Flexible _buildTwoSelectable() {
    return Flexible(
      flex: 2,
      fit: FlexFit.loose,
      child: TwoSellectableWidget(
        onToggleIndex: (newIndex) {
          log(newIndex.toString());
          _changeLoginMethod(newIndex);
        },
        twoTitles: ['Email', 'Phone Number'],
      ),
    );
  }

  void _changeLoginMethod(int newIndex) {
    setState(() {
      _animationController.reset();
      _animationController.forward();
      _formKey.currentState!.reset();
      FocusScope.of(context).unfocus();
      _currentLoginMethod = newIndex;
    });
  }

  Flexible _buildHeader() {
    return Flexible(
      flex: 5,
      fit: FlexFit.loose,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: screenHeight(context) * 0.12,
            child: Image.asset('assets/images/logo.webp', fit: BoxFit.cover),
          ),
          SizedBox(height: 20),
          RichText(
            text: TextSpan(
              style: Theme.of(
                context,
              ).textTheme.labelSmall!.copyWith(fontSize: 18),
              text: 'Welcome to ',
              children: [
                TextSpan(
                  text: 'Clinic',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Text(
            _role.isPatient
                ? 'Want to get treatment immediately? Come in!'
                : 'Doctor Text',
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: Pallete.grayScaleColor500,
              fontSize: 11,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  bool submit() {
    return _formKey.currentState!.validate();
  }

  late final AnimationController _animationController;
  late final Animation<double> _opacityAnimation;
  late final Role _role;
  int _currentLoginMethod = 0;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
}
