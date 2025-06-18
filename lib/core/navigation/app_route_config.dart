import 'package:our_flutter_clinic_app/features/auth/view/screens/change_password_screen.dart';
import 'package:our_flutter_clinic_app/features/home/model/analysis_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/doctor_model.dart';
import 'package:our_flutter_clinic_app/features/home/view/screens/labtech/analysis_info_screen.dart';
import 'package:our_flutter_clinic_app/features/home/view/screens/patient/reschedule_screen.dart';

import '../../features/home/view/screens/patient/my_wallet_screen.dart';
import '../../features/home/view/screens/patient/reservation_details_screen.dart';
import '../../features/home/view/widgets/widget_doctor/doctor_rating_widget.dart';
import '../../features/home/view/screens/labtech/add_new_analysis_screen.dart';
import '../../features/home/view/screens/labtech/add_result_screen.dart';
import '../../features/home/view/screens/labtech/labtech_home_screen.dart';
import '../../features/home/view/screens/patient/about_us_screen.dart';
import '../../features/home/view/screens/patient/appointment_details_screen.dart';
import '../../features/home/view/screens/patient/department_screen.dart';
import '../../features/home/view/screens/patient/doctor_list.dart';
import '../../features/home/view/screens/patient/doctor_information_screen.dart';
import '../../features/home/view/screens/patient/payment_method_screen.dart';
import '../../features/home/view/screens/patient/pharmecy_screen.dart';
import 'navigation_exports.dart';

class AppRouteConfig {
  static GoRouter get router => _router;
  static final GoRouter _router = GoRouter(
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
        path: '/verification_code/:email',
        pageBuilder:
            (context, state) => TransitionPage(
              child: VerificationCodeScreen(
                email: (state.pathParameters['email'] as String),
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
      GoRoute(
        name: AppRouteConstants.myWalletRouteName,
        path: '/my_wallet',
        pageBuilder: (_, state) => TransitionPage(child: MyWalletScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.bookNewAppointmentRouteName,
        path: '/book_new_appointment',
        pageBuilder:
            (_, state) => TransitionPage(child: BookNewAppointmentScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.departmentsRouteName,
        path: '/departments',
        pageBuilder:
            (_, state) => TransitionPage(child: AllDepartmentsScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.doctorListRouteName,
        path: '/doctor_list',
        pageBuilder: (_, state) => TransitionPage(child: DoctorList()),
      ),
      GoRoute(
        name: AppRouteConstants.doctorInfoRouteName,
        path: '/doctor_info',
        pageBuilder: (_, state) => TransitionPage(child: DoctorInfoScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.reservationDetailsRouteName,
        path: '/reservation_details/:appointmetnId',
        pageBuilder:
            (_, state) => TransitionPage(
              child: ReservationDetailsScreen(
                appointmentId:
                    int.tryParse(
                      state.pathParameters['appointmetnId'] ?? '0',
                    ) ??
                    0,
              ),
            ),
      ),
      GoRoute(
        name: AppRouteConstants.doctorRatingRouteName,
        path: '/doctor_rating',
        pageBuilder:
            (_, state) => TransitionPage(
              child: RatingScreen(
                doctorName:
                    '${(state.extra as DoctorModel).firstName ?? 'No'}'
                    ' ${(state.extra as DoctorModel).lastName ?? 'Doctor'}',
              ),
            ),
      ),
      GoRoute(
        name: AppRouteConstants.findPharmaciesRouteName,
        path: '/find_pharmacies',
        pageBuilder: (_, state) => TransitionPage(child: PharmacyListScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.modifyPasswordRouteName,
        path: '/modify_password',
        pageBuilder:
            (_, state) => TransitionPage(child: ModifyPasswordScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.changePasswordRouteName,
        path: '/change_password',
        pageBuilder:
            (_, state) => TransitionPage(child: ChangePasswordScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.paymentMethodRouteName,
        path: '/payment_method',
        pageBuilder: (_, state) => TransitionPage(child: PaymentMethodScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.appointmentDetailsRouteName,
        path: '/appointment_details',
        pageBuilder: (_, state) {
          final appointment = state.extra as AppointmentModel;
          return TransitionPage(
            child: AppointmentDetailsScreen(appointment: appointment),
          );
        },
      ),
      GoRoute(
        name: AppRouteConstants.rescheduleRouteName,
        path: '/reschedule',
        pageBuilder: (_, state) {
          final appointment = state.extra as AppointmentModel;
          return TransitionPage(
            child: RescheduleScreen(appointment: appointment),
          );
        },
      ),
      GoRoute(
        name: AppRouteConstants.aboutUsRouteName,
        path: '/about_us',
        pageBuilder: (_, state) {
          return TransitionPage(child: AboutUsScreen());
        },
      ),
      GoRoute(
        name: AppRouteConstants.labtechHomeRouteName,
        path: '/lab_tech_home',
        pageBuilder: (_, state) {
          return TransitionPage(child: LabtechHomeScreen());
        },
      ),
      GoRoute(
        name: AppRouteConstants.analysisInfoRouteName,
        path: '/analysis_info',
        pageBuilder: (_, state) {
          return TransitionPage(
            child: AnalysisInfoScreen(
              analysis:
                  state.extra as AnalysisModel? ?? AnalysisModel(name: 'name'),
            ),
          );
        },
      ),
      GoRoute(
        name: AppRouteConstants.labtechAddAnalysisRouteName,
        path: '/labtech_add_analysis',
        pageBuilder: (_, state) {
          return TransitionPage(child: AddNewAnalysisScreen());
        },
      ),
      GoRoute(
        name: AppRouteConstants.labtechAddAnalysisResultRouteName,
        path: '/labtech_add_analysis_result',
        pageBuilder: (_, state) {
          return TransitionPage(child: AddResultScreen());
        },
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
