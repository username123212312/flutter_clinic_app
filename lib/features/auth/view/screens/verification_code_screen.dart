import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/core/utils.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/background_container.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/custom_elevated_button.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/otp_widget_field.dart';

class VerificationCodeScreen extends StatefulWidget {
  final String email;
  const VerificationCodeScreen({super.key, required this.email});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  int f1 = 0, f2 = 0, f3 = 0, f4 = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black, size: 34),
          title: Text('Verification'),
          titleTextStyle: Theme.of(
            context,
          ).textTheme.labelSmall!.copyWith(fontSize: 23),
          centerTitle: true,
        ),
        body: BackgroundContainer(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
                    onTap: () {},
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

  Row _buildOTP() {
    return Row(
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
}
