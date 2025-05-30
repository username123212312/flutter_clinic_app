import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/utils/validator_util.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/blocs/user_bloc/user_bloc.dart';
import '../widgets/auth_widgets.dart';

import '../../../../core/utils/general_utils.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: screenHeight(context) * 0.1,
          title: Text('Create a Password'),
          titleTextStyle: Theme.of(
            context,
          ).textTheme.labelSmall!.copyWith(fontSize: 20),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom * 0.1,
          ),
          child: BackgroundContainer(
            height: screenHeight(context) * 0.86,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
              child: Column(
                children: [
                  _buildHeader(),
                  _buildTwoFormFields(),
                  SizedBox(height: 50),
                  SizedBox(
                    width: screenWidth(context) * 0.9,
                    child: MultiBlocListener(
                      listeners: [
                        BlocListener<UserBloc, UserState>(
                          listener:
                              (context, state) => clearAndShowSnackBar(
                                context,
                                state.statusMessage,
                              ),
                        ),
                        BlocListener<AuthBloc, AuthState>(
                          listener: (context, state) {
                            if (state.isAuth != null && state.isAuth!) {
                              context.goNamed(
                                AppRouteConstants.yourProfileRouteName,
                              );
                            }
                          },
                        ),
                      ],
                      child: BlocBuilder<UserBloc, UserState>(
                        builder: (context, state) {
                          return CustomElevatedButton(
                            isEnabled: !state.status.isLoading,
                            fontSize: 15,
                            title: 'Create Password',
                            onTap: submit,
                            fillColor: Theme.of(context).colorScheme.primary,
                            textColor: Colors.white,
                          );
                        },
                      ),
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

  Widget _buildTwoFormFields() {
    return Form(
      key: _formKey,

      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: 0,
                right: 10,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return _buildAlertDialog();
                      },
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: Icon(
                      Icons.question_mark,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
              BasicInfoWidget(
                controller: _passwordController,
                maxLines: 1,
                obsecureText: true,
                validator: (value) {
                  if (!ValidatorUtil.validatePassword(value ?? '')) {
                    return 'Enter a valid password';
                  } else {
                    return null;
                  }
                },
                title: 'New Password',
                hintText: 'New Password',
                keyboardType: TextInputType.text,
              ),
            ],
          ),
          SizedBox(height: 15),
          BasicInfoWidget(
            textInputAction: TextInputAction.done,
            controller: _confirmPasswordController,
            maxLines: 1,
            obsecureText: true,
            validator: (value) {
              if (_confirmPasswordController.text !=
                  (_passwordController.text)) {
                return 'Passwords don\'t match!';
              } else {
                return null;
              }
            },
            title: 'Confirm Password',
            hintText: 'Confirm Password',
            keyboardType: TextInputType.text,
          ),
        ],
      ),
    );
  }

  AlertDialog _buildAlertDialog() {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
          width: 1.0,
        ),
      ),
      elevation: 8,
      title: Row(
        children: [
          Icon(
            Icons.lock_outline,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 12),
          Text(
            'Password Requirements',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RuleItem(text: 'Minimum 8 characters'),
          RuleItem(text: 'Contains numbers'),
          RuleItem(text: 'Has lowercase letters'),
          RuleItem(text: 'Has capital letters'),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            'GOT IT',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Column _buildHeader() {
    return Column(
      children: [
        Text(
          'Enter New Password',
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 18),
        ),
        Image.asset(
          'assets/images/password.webp',
          width: screenWidth(context) * 0.6,
          height: screenHeight(context) * 0.3,
        ),
      ],
    );
  }

  void submit() {
    final userBloc = context.read<UserBloc>();
    if (_formKey.currentState!.validate()) {
      if (userBloc.state.user?.phone == null ||
          userBloc.state.user!.phone!.trim().isEmpty) {
        userBloc.add(
          UserEvent.userRegisteredWithEmail(password: _passwordController.text),
        );
      } else if (userBloc.state.user?.email == null ||
          userBloc.state.user!.email!.trim().isEmpty) {
        userBloc.add(
          UserEvent.userRegisteredWithPhone(password: _passwordController.text),
        );
      }
    }
  }

  final _formKey = GlobalKey<FormState>();
}
