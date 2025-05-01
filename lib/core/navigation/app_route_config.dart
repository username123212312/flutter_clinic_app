import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:flutter_clinic_app/core/widgets/error_screen.dart';
import 'package:flutter_clinic_app/features/auth/controller/user_bloc/user_bloc.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/create_password_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/login_as_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/on_boarding_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/register_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/verification_code_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/welcome_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/profile_setup_screen.dart';
import 'package:flutter_clinic_app/features/home/view/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/view/screens/forgot_password_screen.dart';
import '../../features/auth/view/screens/login_screen.dart';

class AppRouteConfig {
  static final router = GoRouter(
    initialLocation: '/home',
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
        name: AppRouteConstants.loginAsRouteName,
        path: '/login_as',
        pageBuilder: (_, __) => TransitionPage(child: LoginAsScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.loginRouteName,
        path: '/login',
        pageBuilder: (_, state) => TransitionPage(child: LoginScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.verificationCodeRouteName,
        path: '/verification_code',
        pageBuilder:
            (context, state) => TransitionPage(
              child: VerificationCodeScreen(
                email: context.read<UserBloc>().state.email,
              ),
            ),
      ),
      GoRoute(
        name: AppRouteConstants.yourProfileRouteName,
        path: '/profile_setup',
        pageBuilder: (_, state) => TransitionPage(child: ProfileSetupScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.createPasswordRouteName,
        path: '/create_password',
        pageBuilder:
            (_, state) => TransitionPage(child: CreatePasswordScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.registerRouteName,
        path: '/register',
        pageBuilder: (_, state) => TransitionPage(child: RegisterScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.forgotPasswordRouteName,
        path: '/forgot_password',
        pageBuilder:
            (_, state) => TransitionPage(child: ForgotPasswordScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.homeRouteName,
        path: '/home',
        pageBuilder: (_, state) => TransitionPage(child: HomeScreen()),
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
