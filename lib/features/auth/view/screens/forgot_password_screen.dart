import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/core/cubits/role/role_cubit.dart';
import 'package:flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/core/utils/general_utils.dart';
import 'package:flutter_clinic_app/core/utils/validator_util.dart';
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
    _role = context.read<RoleCubit>().state.role;
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(-2.0, 0.0),
    ).animate(_animationController);
    _reverseSlideAnimation = Tween<Offset>(
      begin: Offset(2.0, 0.0),
      end: Offset.zero,
    ).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
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
                _buildHeader(),
                _buildTwoSelectable(),
                _buildFormFields(),
                _buildTwoLoginButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Flexible _buildTwoLoginButtons() {
    return Flexible(
      flex: 3,
      fit: FlexFit.loose,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: screenWidth(context) * 0.85,
              child: CustomElevatedButton(
                title: 'Next',
                onTap: () {
                  if (submit()) {
                    context.pushNamed(
                      AppRouteConstants.verificationCodeRouteName,
                      pathParameters: {'email': _emailController.text},
                    );
                  }
                },
                fillColor: Theme.of(context).colorScheme.primary,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Flexible _buildFormFields() {
    return Flexible(
      flex: 2,
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
                SlideTransition(
                  position: _slideAnimation,
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
              if (_currentLoginMethod == 1)
                SlideTransition(
                  position: _reverseSlideAnimation,
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
            ],
          ),
        ),
      ),
    );
  }

  Flexible _buildTwoSelectable() {
    return Flexible(
      flex: 1,
      fit: FlexFit.loose,
      child: TwoSelectableWidget(
        onToggleIndex: (newIndex) {
          log(newIndex.toString());
          _changeLoginMethod(newIndex);
        },
        twoTitles: ['Email', 'Phone Number'],
      ),
    );
  }

  void _changeLoginMethod(int newIndex) {
    if (_animationController.isCompleted) {
      setState(() {
        _animationController.reverse();
        FocusScope.of(context).unfocus();
        _currentLoginMethod = newIndex;
      });
    } else {
      setState(() {
        // _animationController.reset();
        _animationController.forward();
        _formKey.currentState!.reset();
        FocusScope.of(context).unfocus();
        _currentLoginMethod = newIndex;
      });
    }
  }

  Flexible _buildHeader() {
    return Flexible(
      flex: 4,
      fit: FlexFit.loose,
      child: Column(
        children: [
          SizedBox(height: 50),
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
            child: Image.asset(
              'assets/images/password.webp',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  bool submit() {
    return _formKey.currentState!.validate();
  }

  late final AnimationController _animationController;
  late final Animation<Offset> _slideAnimation;
  late final Animation<Offset> _reverseSlideAnimation;
  late final Role _role;
  int _currentLoginMethod = 0;
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
}
