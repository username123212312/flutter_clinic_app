import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:flutter_clinic_app/core/widgets/error_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/on_boarding_screen.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/welcome_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouteConfig {
  static final router = GoRouter(
    initialLocation: '/on_boarding',
    errorPageBuilder: (_, __) => MaterialPage(child: ErrorScreen()),
    routes: [
      GoRoute(
        name: AppRouteConstants.welcomeRouteName,
        path: '/',
        pageBuilder: (_, __) => MaterialPage(child: WelcomeScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.onBoardingRouteName,
        path: '/on_boarding',
        pageBuilder: (_, __) => MaterialPage(child: OnBoardingScreen()),
      ),
    ],
  );
}
