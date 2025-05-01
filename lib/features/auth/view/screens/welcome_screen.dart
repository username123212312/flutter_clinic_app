import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/core/utils/utils.dart';
import 'package:go_router/go_router.dart';
import '../widgets/auth_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BackgroundContainer(
          imagePath: 'assets/images/background.webp',
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight(context) * 0.3),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.webp'),
                    ),
                  ),
                  width: screenWidth(context) * 0.5,
                  height: screenHeight(context) * 0.23,
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: 'Welcome to ',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(fontSize: 20),
                    children: [
                      TextSpan(
                        text: 'Clinic',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
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
      ),
    );
  }
}
