import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/features/auth/view/screens/change_password_screen.dart';
import 'package:our_flutter_clinic_app/features/home/model/analysis_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/child_record.dart';
import 'package:our_flutter_clinic_app/features/home/model/clinic_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/doctor_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/vaccinationrecord.dart';
import 'package:our_flutter_clinic_app/features/home/view/screens/labtech/analysis_info_screen.dart';
import 'package:our_flutter_clinic_app/features/home/view/screens/patient/reschedule_screen.dart';
import 'package:our_flutter_clinic_app/features/home/view/screens/patient/switch_account_screen.dart';

import '../../features/home/view/screens/doctor/add_child_record_screen.dart';
import '../../features/home/view/screens/doctor/change_appointments_schedules.dart';
import '../../features/home/view/screens/doctor/doctor_appointment_datails_screen.dart';
import '../../features/home/view/screens/doctor/doctor_home_screen.dart';
import '../../features/home/view/screens/doctor/doctor_profile.dart';
import '../../features/home/view/screens/doctor/doctor_reviews_screen.dart';
import '../../features/home/view/screens/doctor/doctor_schedule_screen.dart';
import '../../features/home/view/screens/doctor/doctor_show_child_record_screen.dart';
import '../../features/home/view/screens/doctor/edit_child_vaccine_record_screen.dart';
import '../../features/home/view/screens/doctor/edit_profile.dart';
import '../../features/home/view/screens/doctor/modify_child_record_screen.dart';
import '../../features/home/view/screens/doctor/patient_profile_screen.dart';
import '../../features/home/view/screens/patient/add_child_screen.dart';
import '../../features/home/view/screens/patient/chat_screen.dart';
import '../../features/home/view/screens/patient/clinic_doctors_screen.dart';
import '../../features/home/view/screens/patient/my_wallet_screen.dart';
import '../../features/home/view/screens/patient/notifications_screen.dart';
import '../../features/home/view/screens/patient/patient_show_child_record_screen.dart';
import '../../features/home/view/screens/patient/reservation_details_screen.dart';
import '../../features/home/view/screens/patient/doctor_rating_screen.dart';
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
import '../../features/home/view/screens/patient/select_vaccine_screen.dart';
import '../../features/home/view/screens/patient/vaccine_details_screen.dart';
import '../../features/home/view/screens/doctor/doctor_show_child_vaccine_records_screen.dart';
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
        name: AppRouteConstants.switchAccountRouteName,
        path: '/switch_account',
        pageBuilder: (_, __) => TransitionPage(child: SwitchAccountScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.addChildRouteName,
        path: '/add_child',
        pageBuilder: (_, __) => TransitionPage(child: AddChildScreen()),
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
        name: AppRouteConstants.chatRouteName,
        path: '/chat',
        pageBuilder: (_, state) => TransitionPage(child: ChatScreen()),
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
        name: AppRouteConstants.doctorHomeRouteName,
        path: '/doctor_home',
        pageBuilder: (_, state) => TransitionPage(child: DoctorHomeScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.doctorEditProfileRouteName,
        path: '/doctor_edit_profile',
        pageBuilder: (_, state) => TransitionPage(child: DoctorEditProfile()),
      ),
      GoRoute(
        name: AppRouteConstants.doctorProfileRouteName,
        path: '/doctor_profile',
        pageBuilder: (_, state) => TransitionPage(child: DoctorProfile()),
      ),
      GoRoute(
        name: AppRouteConstants.doctorScheduleRouteName,
        path: '/doctor_schedule',
        pageBuilder:
            (_, state) => TransitionPage(child: DoctorScheduleScreen()),
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
        name: AppRouteConstants.selectVaccineRouteName,
        path: '/select_vaccine',
        pageBuilder: (_, state) => TransitionPage(child: SelectVaccineScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.clinicDoctorsRouteName,
        path: '/clinic_doctors',
        pageBuilder: (_, state) {
          final clinic = state.extra as ClinicModel;
          return TransitionPage(child: ClinicDoctorsScreen(clinic: clinic));
        },
      ),
      GoRoute(
        name: AppRouteConstants.doctorListRouteName,
        path: '/doctor_list',
        pageBuilder: (_, state) => TransitionPage(child: DoctorList()),
      ),
      GoRoute(
        name: AppRouteConstants.doctorInfoRouteName,
        path: '/doctor_info',
        pageBuilder: (_, state) {
          final doctor = state.extra as DoctorModel;
          return TransitionPage(child: DoctorInfoScreen(doctor: doctor));
        },
      ),
      GoRoute(
        name: AppRouteConstants.doctorChangeSchedulesRouteName,
        path: '/doctor_change_schedules',
        pageBuilder: (_, state) {
          return TransitionPage(child: ChangeAppointmentsSchedules());
        },
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
        pageBuilder: (_, state) {
          final doctor = state.extra as DoctorModel;
          return TransitionPage(child: RatingScreen(doctor: doctor));
        },
      ),
      GoRoute(
        name: AppRouteConstants.doctorAppointmentDetailsRouteName,
        path: '/doctor_appointment_details',
        pageBuilder: (_, state) {
          final appointment = state.extra as AppointmentModel;
          return TransitionPage(
            child: DoctorAppointmentDatailsScreen(appointment: appointment),
          );
        },
      ),
      GoRoute(
        name: AppRouteConstants.patientProfileRouteName,
        path: '/patient_profile',
        pageBuilder: (_, state) {
          final patient = state.extra as UserModel;
          return TransitionPage(child: PatientProfileScreen(patient: patient));
        },
      ),
      GoRoute(
        name: AppRouteConstants.vaccineDetailsRouteName,
        path: '/vaccine_details',
        pageBuilder: (_, state) {
          final vaccine = state.extra as VaccinationRecord;
          return TransitionPage(child: VaccineDetailsScreen(vaccine: vaccine));
        },
      ),
      GoRoute(
        name: AppRouteConstants.patientChildRecordRouteName,
        path: '/patient_child_record',
        pageBuilder: (_, state) {
          return TransitionPage(child: PatientShowChildRecordScreen());
        },
      ),
      GoRoute(
        name: AppRouteConstants.doctorChildRecordRouteName,
        path: '/doctor_child_record',
        pageBuilder: (_, state) {
          final child = state.extra as UserModel;
          return TransitionPage(
            child: DoctorShowChildRecordScreen(child: child),
          );
        },
      ),
      GoRoute(
        name: AppRouteConstants.doctorAddChildRecordRouteName,
        path: '/doctor_add_child_record',
        pageBuilder: (_, state) {
          final child = state.extra as UserModel;

          return TransitionPage(child: AddChildRecordScreen(child: child));
        },
      ),
      GoRoute(
        name: AppRouteConstants.doctorModifyChildRecordRouteName,
        path: '/doctor_modify_child_record',
        pageBuilder: (_, state) {
          final childRecord = state.extra as ChildRecord;
          return TransitionPage(
            child: ModifyChildRecordScreen(childRecord: childRecord),
          );
        },
      ),
      GoRoute(
        name: AppRouteConstants.doctorChildVacRecordRouteName,
        path: '/patient_child_vac_record',
        pageBuilder: (_, state) {
          final child = state.extra as UserModel;
          return TransitionPage(
            child: DoctorShowChildVaccineRecordsScreen(child: child),
          );
        },
      ),
      GoRoute(
        name: AppRouteConstants.doctorChildEditVacRecordRouteName,
        path: '/patient_child_edit_vac_record',
        pageBuilder: (_, state) {
          final record = state.extra as VaccinationRecord;
          return TransitionPage(
            child: EditChildVaccineRecordScreen(vaccineRecord: record),
          );
        },
      ),
      GoRoute(
        name: AppRouteConstants.findPharmaciesRouteName,
        path: '/find_pharmacies',
        pageBuilder: (_, state) => TransitionPage(child: PharmacyListScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.doctorReviewsRouteName,
        path: '/doctor_reviews',
        pageBuilder: (_, state) => TransitionPage(child: DoctorReviewsScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.modifyPasswordRouteName,
        path: '/modify_password',
        pageBuilder:
            (_, state) => TransitionPage(child: ModifyPasswordScreen()),
      ),
      GoRoute(
        name: AppRouteConstants.notificationsRouteName,
        path: '/notifications',
        pageBuilder: (_, state) => TransitionPage(child: NotificationScreen()),
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
