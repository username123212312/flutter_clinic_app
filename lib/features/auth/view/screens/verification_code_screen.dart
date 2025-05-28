import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:go_router/go_router.dart';
import '../widgets/auth_widgets.dart';

class VerificationCodeScreen extends StatefulWidget {
  final String email;
  const VerificationCodeScreen({super.key, required this.email});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  int f1 = 0, f2 = 0, f3 = 0, f4 = 0;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenHeight(context) * 0.1,
          title: Text('Verification'),
          titleTextStyle: Theme.of(
            context,
          ).textTheme.labelSmall!.copyWith(fontSize: 23),
        ),
        body: BackgroundContainer(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              children: [
                _buildHeader(),
                SizedBox(height: 40),
                _buildOTP(),
                SizedBox(height: 20),
                _buildResend(),
                SizedBox(height: 20),
                SizedBox(
                  width: screenWidth(context) * 0.77,
                  child: CustomElevatedButton(
                    title: 'Verify',
                    onTap: () {
                      if (submit()) {
                        context.goNamed(AppRouteConstants.yourProfileRouteName);
                      }
                    },
                    fillColor: Colors.transparent,
                    textColor: Pallete.primaryColor,
                    elevation: 0,
                    borderColor: Pallete.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RichText _buildResend() {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
          color: Pallete.grayScaleColor500,
          fontSize: 15,
        ),
        text: 'If you do not receive the code ',

        children: [
          TextSpan(
            text: 'Resend',
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: Pallete.primaryColor,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOTP() {
    return Form(
      key: _formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OTPWidgetField(
            onSaved: (value) {
              f1 = int.tryParse(value ?? '') ?? 0;
            },
          ),
          OTPWidgetField(
            onSaved: (value) {
              f2 = int.tryParse(value ?? '') ?? 0;
            },
          ),
          OTPWidgetField(
            onSaved: (value) {
              f3 = int.tryParse(value ?? '') ?? 0;
            },
          ),
          OTPWidgetField(
            isEnd: true,
            onSaved: (value) {
              f4 = int.tryParse(value ?? '') ?? 0;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Enter the verification code',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 20),
        ),
        RichText(
          text: TextSpan(
            text: 'We send a verification code to ',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: 13,
              color: Pallete.grayScaleColor500,
            ),
            children: [
              TextSpan(
                text: widget.email,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: 13,
                  color: Color.fromRGBO(31, 31, 31, 1),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  bool submit() {
    return _formKey.currentState!.validate();
  }
}
