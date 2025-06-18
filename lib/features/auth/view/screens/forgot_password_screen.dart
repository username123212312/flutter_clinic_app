import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_flutter_clinic_app/core/cubits/cubit/change_password_cubit.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/core/utils/validator_util.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
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
                SizedBox(height: screenHeight(context) * 0.25),
                _buildFormField(),
                SizedBox(height: screenHeight(context) * 0.02),
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
                  if (state.status.isData) {
                    if (mounted) {
                      clearAndShowSnackBar(context, state.message);
                      context.pushNamed(
                        AppRouteConstants.verificationCodeRouteName,
                        pathParameters: {'email': _emailController.text},
                      );
                    }
                  }
                }
              },
              child: CustomElevatedButton(
                title: 'Next',
                onTap: () async {
                  if (submit()) {
                    await context.read<ChangePasswordCubit>().sendEmailOtp(
                      _emailController.text,
                    );
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
      padding: EdgeInsets.only(left: 30, right: 20),
      child: Form(
        key: _formKey,
        child: CustomTextField(
          textInputAction: TextInputAction.done,
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

  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
}
