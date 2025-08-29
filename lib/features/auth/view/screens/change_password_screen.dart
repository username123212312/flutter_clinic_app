import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/utils/validator_util.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:toastification/toastification.dart';
import '../../../../core/cubits/change_password_cubit/change_password_cubit.dart';
import '../../../../core/widgets/transparent_content_dialog.dart';
import '../../../../core/widgets/widgets.dart';
import '../widgets/auth_widgets.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../../core/utils/general_utils.dart';
import '../widgets/bullet_item.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          themeData = Theme.of(context);
          screenHeight = MediaQuery.of(context).size.height;
          screenWidth = MediaQuery.of(context).size.width;
        });
      }
    });
  }

  @override
  void dispose() {
    _confirmPasswordController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          context.read<ChangePasswordCubit>().reset();
          context.goNamed(AppRouteConstants.loginRouteName);
        }
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                context.goNamed(AppRouteConstants.loginRouteName);
              },
              icon: Icon(
                FontAwesomeIcons.arrowLeft,
                color: Pallete.black1,
                size: 18,
              ),
            ),

            forceMaterialTransparency: true,
            elevation: 0,
            toolbarHeight: (screenHeight ?? 0) * 0.1,
            title: Text('Change Password'),
            titleTextStyle: Theme.of(
              context,
            ).textTheme.labelSmall!.copyWith(fontSize: 20),
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom * 0.1,
            ),
            child: BackgroundContainer(
              height: (screenHeight ?? 0) * 0.86,
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  children: [
                    _buildHeader(),
                    _buildTwoFormFields(),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BulletItem(
                                text: 'Minimum 8 characters',
                                fontSize: 13,
                              ),
                              BulletItem(
                                text: 'Contains numbers',
                                fontSize: 13,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BulletItem(
                                text: 'Has lowercase letters',
                                fontSize: 13,
                              ),
                              BulletItem(
                                text: 'Has capital letters',
                                fontSize: 13,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: (screenHeight ?? 0) * 0.05),
                    SizedBox(
                      width: (screenWidth ?? 0) * 0.9,
                      child: BlocListener<
                        ChangePasswordCubit,
                        ChangePasswordState
                      >(
                        listener: (_, state) async {
                          if (state.status.isLoading) {
                            LoadingOverlay().show(context);
                          } else {
                            if (mounted) {
                              LoadingOverlay().hideAll();
                              if (state.status.isError) {
                                showToast(
                                  context: context,
                                  msg: state.message,
                                  type: ToastificationType.error,
                                );
                              }
                            }
                            if (state.status.isDone) {
                              await TransparentDialog.show(
                                context: context,
                                barrierDismissible: false,
                                builder:
                                    (_) => CustomDialog(
                                      content: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment(-0.2, 0.0),
                                            child: Lottie.asset(
                                              'assets/lottie/password_reset_animation.json',
                                              fit: BoxFit.cover,
                                              width: (screenWidth ?? 0) * 0.2,
                                              height:
                                                  (screenHeight ?? 0) * 0.15,
                                            ),
                                          ),
                                          SizedBox(
                                            width: (screenWidth ?? 0) * 0.7,
                                            child: Text(
                                              textAlign: TextAlign.center,
                                              state.message,
                                              style: themeData!
                                                  .textTheme
                                                  .labelMedium!
                                                  .copyWith(
                                                    color: Colors.black,
                                                    fontSize: 13,
                                                  ),
                                            ),
                                          ),
                                          SizedBox(height: 25),
                                          SizedBox(
                                            width: (screenWidth ?? 0) * 0.5,
                                            height: (screenHeight ?? 0) * 0.05,
                                            child: CustomElevatedButton(
                                              fontSize: 12,
                                              title: 'Back to Login',
                                              onTap: () {
                                                context.pop();
                                                context.goNamed(
                                                  AppRouteConstants
                                                      .loginRouteName,
                                                );
                                              },
                                              fillColor:
                                                  themeData!
                                                      .colorScheme
                                                      .primary,
                                              textColor: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                              );
                            }
                          }
                        },
                        child: BlocBuilder<
                          ChangePasswordCubit,
                          ChangePasswordState
                        >(
                          builder: (context, state) {
                            return CustomElevatedButton(
                              isEnabled: !state.status.isLoading,
                              fontSize: 15,
                              title: 'Change Password',
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
      ),
    );
  }

  Future<dynamic> _showCustomDialog(
    BuildContext context,
    ChangePasswordState state,
  ) async {
    return await TransparentDialog.show(
      context: context,
      barrierDismissible: false,
      builder:
          (_) => CustomDialog(
            content: Column(
              children: [
                Align(
                  alignment: Alignment(-0.2, 0.0),
                  child: Lottie.asset(
                    'assets/lottie/password_reset_animation.json',
                    fit: BoxFit.cover,
                    width: (screenWidth ?? 0) * 0.2,
                    height: (screenHeight ?? 0) * 0.15,
                  ),
                ),
                SizedBox(
                  width: (screenWidth ?? 0) * 0.7,
                  child: Text(
                    textAlign: TextAlign.center,
                    state.message,
                    style: themeData!.textTheme.labelMedium!.copyWith(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                SizedBox(
                  width: (screenWidth ?? 0) * 0.5,
                  height: (screenHeight ?? 0) * 0.05,
                  child: CustomElevatedButton(
                    fontSize: 12,
                    title: 'Back to Login',
                    onTap: () {
                      context.pop();
                      context.goNamed(AppRouteConstants.loginRouteName);
                    },
                    fillColor: themeData!.colorScheme.primary,
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
    );
  }

  Widget _buildTwoFormFields() {
    return Form(
      key: _formKey,

      child: Column(
        children: [
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
          width: (screenWidth ?? 0) * 0.6,
          height: (screenHeight ?? 0) * 0.25,
        ),
      ],
    );
  }

  void submit() {
    if (_formKey.currentState!.validate()) {
      final isEmail = context.read<ChangePasswordCubit>().state.email != null;
      if (isEmail) {
        context.read<ChangePasswordCubit>().emailResetPassword(
          _passwordController.text,
        );
      } else {
        context.read<ChangePasswordCubit>().phoneResetPassword(
          _passwordController.text,
        );
      }
    }
  }

  final _formKey = GlobalKey<FormState>();
  late final double? screenHeight;
  late final double? screenWidth;
  late final ThemeData? themeData;
}
