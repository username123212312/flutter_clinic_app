import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:flutter_clinic_app/core/widgets/error_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/create_password_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/login_as_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/on_boarding_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/verification_code_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/welcome_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/profile_setup_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/view/screens/login_screen.dart';

class AppRouteConfig {
  static final router = GoRouter(
    initialLocation: '/create_password',
    errorPageBuilder: (_, __) => TransitionPage(child: ErrorScreen()),
    routes: [
      GoRoute(
        name: AppRouteConstants.welcomeRouteName,
        path: '/',
        pageBuilder: (_, __) => TransitionPage(child: WelcomeScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.onBoardingRouteName,
        path: '/on_boarding',
        pageBuilder: (_, __) => TransitionPage(child: OnBoardingScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.loginAsScreen,
        path: '/login_as',
        pageBuilder: (_, __) => TransitionPage(child: LoginAsScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.loginScreen,
        path: '/login',
        pageBuilder: (_, state) => TransitionPage(child: LoginScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.verificationCodeScreen,
        path: '/verification_code/:email',
        pageBuilder:
            (_, state) => TransitionPage(
              child: VerificationCodeScreen(
                email: state.pathParameters['email'] ?? 'no email',
              ),
            ),
      ),
      GoRoute(
        name: AppRouteConstants.yourProfileScreen,
        path: '/profile_setup',
        pageBuilder: (_, state) => TransitionPage(child: ProfileSetupScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.createPassword,
        path: '/create_password',
        pageBuilder:
            (_, state) => TransitionPage(child: CreatePasswordScreen()),
      ),
    ],
  );
}

class TransitionPage extends CustomTransitionPage {
  TransitionPage({required super.child})
    : super(
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        transitionDuration: Duration(milliseconds: 500),
        reverseTransitionDuration: Duration(milliseconds: 500),
      );
}
