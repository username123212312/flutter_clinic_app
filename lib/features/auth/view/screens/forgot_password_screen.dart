import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_flutter_clinic_app/core/cubits/change_password_cubit/change_password_cubit.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/core/utils/validator_util.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:toastification/toastification.dart';
import '../widgets/auth_widgets.dart';

import 'package:go_router/go_router.dart';

import '../../../../core/enums.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() async {
    _emailController.dispose();
    _phoneController.dispose();
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
                SizedBox(height: screenHeight(context) * 0.03),
                Align(
                  alignment: Alignment(-0.9, 0.0),
                  child: IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Pallete.grayScaleColor400,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.02),
                _buildHeader(),
                SizedBox(height: screenHeight(context) * 0.05),
                SizedBox(
                  width: screenWidth(context) * 0.7,
                  height: screenHeight(context) * 0.08,
                  child: FittedBox(
                    child: TwoSelectableWidget(
                      inBetweenPadding: 100,
                      twoTitles: ['Email', 'Phone'],
                      onToggleIndex: (index) {
                        FocusScope.of(context).unfocus();
                        toggleIndex(index);
                      },
                      currentIndex: _selectedIndex,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.04),
                _buildFormField(),
                SizedBox(height: screenHeight(context) * 0.08),
                _buildNextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: screenWidth(context) * 0.85,
            child: BlocListener<ChangePasswordCubit, ChangePasswordState>(
              listenWhen: (previous, current) => previous.email == null,
              listener: (context, state) {
                if (state.status.isLoading) {
                  LoadingOverlay().show(context);
                } else {
                  if (mounted) {
                    LoadingOverlay().hideAll();
                  }
                  if (state.status.isError) {
                    showToast(
                      context: context,
                      type: ToastificationType.error,
                      msg: state.message,
                    );
                  }
                  if (state.status.isData) {
                    if (mounted) {
                      showToast(
                        context: context,
                        type: ToastificationType.success,
                        msg: state.message,
                      );
                      context.pushNamed(
                        AppRouteConstants.verificationCodeRouteName,
                        pathParameters: {
                          'email':
                              _emailController.text.trim().isEmpty
                                  ? _phoneController.text
                                  : _emailController.text,
                        },
                      );
                    }
                  }
                }
              },
              child: CustomElevatedButton(
                title: 'Next',
                onTap: () async {
                  if (submit()) {
                    if (_emailController.text.trim().isEmpty) {
                      await context.read<ChangePasswordCubit>().sendSMSOtp(
                        _phoneController.text,
                      );
                    } else {
                      await context.read<ChangePasswordCubit>().sendEmailOtp(
                        _emailController.text,
                      );
                    }
                  }
                },
                fillColor: Theme.of(context).colorScheme.primary,
                textColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormField() {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Form(
        key: _formKey,
        child: TextFormField(
          style: TextStyle(color: Colors.black),
          focusNode: _selectedIndex == 0 ? _emailFocusNode : _phoneFocusNode,
          textInputAction: TextInputAction.done,
          controller: _selectedIndex == 0 ? _emailController : _phoneController,
          validator:
              _selectedIndex == 0
                  ? (value) {
                    if (!ValidatorUtil.validateEmail(value)) {
                      return 'Enter a valid Email';
                    } else {
                      return null;
                    }
                  }
                  : (value) {
                    if (!ValidatorUtil.validatePhone(value)) {
                      return 'Enter a valid Phone';
                    } else {
                      return null;
                    }
                  },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            hintText: _selectedIndex == 0 ? 'Email' : 'Phone',
            hintStyle: TextStyle(color: Pallete.gray1),
            prefixIconConstraints: BoxConstraints(maxHeight: 25, maxWidth: 50),
            prefixIcon:
                _selectedIndex == 0
                    ? null
                    : Text(
                      textAlign: TextAlign.center,
                      '  +963',
                      style: TextStyle(color: Colors.black),
                    ),
          ),
          keyboardType:
              _selectedIndex == 0 ? TextInputType.text : TextInputType.phone,
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Text(
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 18),
          'Forgot Password',
        ),
        SizedBox(height: 10),
        Text(
          'Enter your Email/Phone to send a verification code',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
            color: Pallete.grayScaleColor500,
            fontSize: 11,
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: screenHeight(context) * 0.23,
          child: Image.asset('assets/images/password.webp', fit: BoxFit.cover),
        ),
      ],
    );
  }

  bool submit() {
    return _formKey.currentState!.validate();
  }

  void toggleIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _emailController.clear();
    _phoneController.clear();
    FocusScope.of(context).nextFocus();
  }

  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _emailFocusNode = FocusNode();
  final _phoneFocusNode = FocusNode();
  int _selectedIndex = 0;
}
