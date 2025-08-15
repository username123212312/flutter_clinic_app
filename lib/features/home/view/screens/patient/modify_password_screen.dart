import 'package:fluttertoast/fluttertoast.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/utils/validator_util.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:toastification/toastification.dart';
import '../../../../../core/blocs/user_bloc/user_bloc.dart';

import '../../../../../core/enums.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../../auth/view/widgets/auth_widgets.dart';

class ModifyPasswordScreen extends StatefulWidget {
  const ModifyPasswordScreen({super.key});

  @override
  State<ModifyPasswordScreen> createState() => _ModifyPasswordScreenState();
}

class _ModifyPasswordScreenState extends State<ModifyPasswordScreen> {
  final _oldPasswordController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  @override
  void dispose() {
    _oldPasswordController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    LoadingOverlay().hideAll();

    super.dispose();
  }

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
                  SizedBox(height: 10),
                  Text(
                    'Enter New Password',
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium!.copyWith(fontSize: 18),
                  ),
                  SizedBox(height: screenHeight(context) * 0.14),

                  _buildFormFields(),
                  SizedBox(height: screenHeight(context) * 0.14),

                  SizedBox(
                    width: screenWidth(context) * 0.9,
                    child: MultiBlocListener(
                      listeners: [
                        BlocListener<UserBloc, UserState>(
                          listener: (context, state) {
                            if (state.status.isLoading) {
                              LoadingOverlay().show(context);
                            } else {
                              LoadingOverlay().hideAll();
                              if (state.status.isError) {
                                showToast(
                                  context: context,
                                  type: ToastificationType.error,
                                  msg: state.statusMessage,
                                );
                              }
                              if (state.status.isModified) {
                                showToast(
                                  context: context,
                                  type: ToastificationType.success,
                                  msg: state.statusMessage,
                                );
                                context.goNamed(
                                  (state.user?.role?.isPatient ?? true)
                                      ? AppRouteConstants.homeRouteName
                                      : AppRouteConstants.doctorHomeRouteName,
                                );
                              }
                            }
                          },
                        ),
                        BlocListener<AuthBloc, AuthState>(
                          listener: (context, state) {
                            if (state.isAuth != null && state.isAuth!) {
                              context.goNamed(
                                (state.authUser?.user?.role?.isPatient ?? true)
                                    ? AppRouteConstants.homeRouteName
                                    : AppRouteConstants.doctorHomeRouteName,
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

  Widget _buildFormFields() {
    return Form(
      key: _formKey,

      child: Column(
        children: [
          BasicInfoWidget(
            textInputAction: TextInputAction.next,
            controller: _oldPasswordController,
            maxLines: 1,
            obsecureText: true,
            validator: (value) {
              if (ValidatorUtil.isEmpty(value)) {
                return 'Please Enter Old password!';
              } else {
                return null;
              }
            },
            title: 'Old Password',
            hintText: 'Old Password',
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 15),

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
                textInputAction: TextInputAction.next,
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
      userBloc.add(
        UserModifiedPassword(
          newPassword: _passwordController.text,
          oldPassword: _oldPasswordController.text,
        ),
      );
    }
  }

  final _formKey = GlobalKey<FormState>();
}
