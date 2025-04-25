import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/core/utils.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/custom_elevated_button.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight(context) * 0.3),
              Container(
                color: Pallete.primaryColor,
                width: screenWidth(context) * 0.5,
                height: screenHeight(context) * 0.23,
              ),
              Spacer(),
              CustomElevatedButton(
                title: 'Start',
                onTap: () {
                  context.pushNamed(AppRouteConstants.onBoardingRouteName);
                },
                fillColor: Pallete.primaryColor,
                textColor: Colors.white,
              ),
              SizedBox(height: screenHeight(context) * 0.062),
            ],
          ),
        ),
      ),
    );
  }
}
