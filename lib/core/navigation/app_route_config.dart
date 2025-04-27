import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:flutter_clinic_app/core/widgets/error_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/login_as_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/on_boarding_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/welcome_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/view/screens/login_screen.dart';

class AppRouteConfig {
  static final router = GoRouter(
    initialLocation: '/login',
    errorPageBuilder: (_, __) => TransitionPage(child: ErrorScreen()),
    routes: [
      GoRoute(
        name: AppRouteConstants.welcomeRouteName,
        path: '/',
        pageBuilder: (_, __) => TransitionPage(child: WelcomeScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.onBoardingRouteName,
        path: '/on_boarding/',
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
