import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/services/google_auth_service/google_auth_service.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/core/utils/validator_util.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';

import '../../../../../core/theme/app_pallete.dart';

import '../../../../core/enums.dart';
import '../../../../core/utils/logger.dart';
import '../widgets/auth_widgets.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_google_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late final bool _isPatient;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  int _selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _isPatient = context.read<UserBloc>().state.user!.role!.isPatient;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      if (_phoneController.text.trim().isEmpty) {
        context.read<UserBloc>().add(
          UserEvent.userLoggedInWithEmail(
            email: _emailController.text,
            password: _passwordController.text,
          ),
        );
      } else {
        context.read<UserBloc>().add(
          UserEvent.userLoggedInWithPhone(
            phone: _phoneController.text,
            password: _passwordController.text,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: SafeArea(
        child: BackgroundContainer(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
                bottom: MediaQuery.of(context).viewInsets.bottom * 0.3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildHeader(),
                  const SizedBox(height: 20),
                  _buildFormFields(),
                  SizedBox(height: 10),
                  if (!_isPatient)
                    SizedBox(height: screenHeight(context) * 0.1),
                  _buildTwoButtons(),
                  const SizedBox(height: 25),
                  if (_isPatient)
                    Text.rich(
                      TextSpan(
                        text: 'Don\'t have an account? ',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 14,
                          color: Pallete.grayScaleColor700,
                        ),
                        children: [
                          TextSpan(
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () {
                                    context.goNamed(
                                      AppRouteConstants.registerRouteName,
                                    );
                                  },
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
      ),
    );
  }

  Column _buildTwoButtons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        MultiBlocListener(
          listeners: [
            BlocListener<UserBloc, UserState>(
              listener: (context, state) {
                if (state.status.isLoading) {
                  LoadingOverlay().show(context);
                } else {
                  if (state.status.isError) {
                    LoadingOverlay().hideAll();
                  }
                  Fluttertoast.showToast(msg: state.statusMessage);
                }
              },
            ),
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.status.isLoading) {
                  LoadingOverlay().show(context);
                } else {
                  LoadingOverlay().hideAll();
                }
                if (state.isAuth!) {
                  navigateByRole(
                    context,
                    role: state.authUser?.user?.role ?? Role.patient,
                  );
                }
              },
            ),
          ],

          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              return CustomButton(
                text: 'Login',
                onPressed: state.status.isLoading ? null : _login,
                width: double.infinity,
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                color: Pallete.primaryColor,
                textColor: Colors.white,
                borderRadius: 8,
                fontSize: 16,
              );
            },
          ),
        ),
        if (_isPatient)
          Column(
            children: [
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
                onPressed: () async {
                  context.read<UserBloc>().add(UserLoggedInWithGoogle());
                },
                text: 'Google',
                imagePath: 'assets/icons/ic_google.png',
              ),
            ],
          ),
      ],
    );
  }

  Form _buildFormFields() {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 10,
        children: [
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
                _selectedTabIndex == 0 ? _emailController : _phoneController,
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

          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Password",
              style: TextStyle(color: Pallete.grayScaleColor700, fontSize: 14),
            ),
          ),

          CustomTextField(
            textInputAction: TextInputAction.done,
            maxLines: 1,
            hintText: 'Enter password',
            controller: _passwordController,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            fillColor: Pallete.transparentColor,
            validator: (value) {
              if (!ValidatorUtil.validatePassword(value!)) {
                return 'Enter a valid password';
              }
              return null;
            },
          ),

          Align(
            alignment: Alignment(0.9, 0.0),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                context.pushNamed(AppRouteConstants.forgotPasswordRouteName);
              },
              child: Text(
                'Forgot your password?',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontSize: 12,
                  color: Pallete.grayScaleColor700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/logo.webp", height: 100, width: 90),
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
          width: screenWidth(context) * 0.8,

          child: FittedBox(
            child: TwoSelectableWidget(
              inBetweenPadding: screenWidth(context) * 0.3,
              twoTitles: ['Email', 'Phone'],
              onToggleIndex: (newIndex) {
                setState(() {
                  _selectedTabIndex = newIndex;
                  _emailController.clear();
                  _passwordController.clear();
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
