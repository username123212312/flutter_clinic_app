import 'package:flutter_clinic_app/features/home/view/screens/documents_screen.dart';

import 'navigation_exports.dart';

class AppRouteConfig {
  static final router = GoRouter(
    initialLocation: '/',
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
                email:
                    context.read<AuthBloc>().state.authUser?.user?.email ??
                    'johndoe@gmail.com',
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
      GoRoute(
        name: AppRouteConstants.editProfileRouteName,
        path: '/edit_profile',
        pageBuilder: (_, state) => TransitionPage(child: EditProfileScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.documentsRouteName,
        path: '/documents',
        pageBuilder: (_, state) => TransitionPage(child: DocumentsScreen()),
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
