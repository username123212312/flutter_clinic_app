import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_config.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/theme/app_theme.dart';
import 'package:our_flutter_clinic_app/features/home/controller/analysis_list_bloc/analysis_list_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/controller/appointments_bloc/appointments_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/controller/home_bloc/home_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/controller/labtech_analysis_bloc/labtech_analysis_bloc.dart';
import 'package:our_flutter_clinic_app/service_locator.dart';
import 'package:path_provider/path_provider.dart' as p;

import 'core/blocs/chat_bloc/chat_bloc.dart';
import 'core/cubits/change_password_cubit/change_password_cubit.dart';
import 'core/observers/custom_bloc_observer.dart';
import 'core/blocs/user_bloc/user_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'core/services/fcm/fcm_service.dart';
import 'core/services/notification/notification_service.dart';
import 'features/home/controller/chat_doctors_list_cubit/chat_doctors_list_cubit.dart';
import 'features/home/controller/doctor_appointments_bloc/doctor_appointments_bloc.dart';
import 'features/home/controller/doctor_patients_bloc/doctor_patients_bloc.dart';
import 'features/home/controller/select_vaccination_cubit/select_vaccination_cubit.dart';
import 'features/home/view/screens/doctor/doctor_home_screen.dart';
import 'features/home/view/screens/patient/switch_account_screen.dart';

void main() async {
  await initMain();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((
    _,
  ) {
    runApp(ClinicApp());
  });
}

class ClinicApp extends StatelessWidget {
  const ClinicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: ServiceLocator.instance<AuthBloc>()),
        BlocProvider.value(value: ServiceLocator.instance<UserBloc>()),
        BlocProvider.value(value: ServiceLocator.instance<AnalysisListBloc>()),
        BlocProvider.value(value: ServiceLocator.instance<AppointmentsBloc>()),
        BlocProvider.value(
          value: ServiceLocator.instance<LabtechAnalysisBloc>(),
        ),
        BlocProvider.value(value: ServiceLocator.instance<HomeBloc>()),
        BlocProvider.value(
          value: ServiceLocator.instance<ChangePasswordCubit>(),
        ),
        BlocProvider.value(
          value: ServiceLocator.instance<DoctorAppointmentsBloc>(),
        ),
        BlocProvider.value(
          value: ServiceLocator.instance<DoctorPatientsBloc>(),
        ),
        BlocProvider.value(value: ServiceLocator.instance<ChatBloc>()),
        BlocProvider.value(
          value: ServiceLocator.instance<ChatDoctorsListCubit>(),
        ),
        BlocProvider.value(
          value: ServiceLocator.instance<SelectVaccinationCubit>(),
        ),
      ],
      // child: MaterialApp(
      //   debugShowCheckedModeBanner: false,
      //   title: 'Clinic App',
      //   themeMode: ThemeMode.system,
      //   theme: AppTheme.lightThemeMode,
      //   darkTheme: AppTheme.darkThemeMode,
      //   home: DoctorHomeScreen(),
      // ),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouteConfig.router,
        title: 'Clinic App',
        themeMode: ThemeMode.system,
        theme: AppTheme.lightThemeMode,
        darkTheme: AppTheme.darkThemeMode,
      ),
    );
  }
}

Future<void> initMain() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    await NotificationService().init();
    await FCMService().init();
    await dotenv.load();
    Stripe.publishableKey = dotenv.env['STRIPE_PUBLISHABLE_KEY']!;

    await Stripe.instance.applySettings();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory:
          kIsWeb
              ? HydratedStorageDirectory.web
              : HydratedStorageDirectory(
                (await p.getApplicationDocumentsDirectory()).path,
              ),
    );
    Bloc.observer = CustomBlocObserver();
    ServiceLocator.setup();
  } catch (e) {
    log(e.toString());
  }
}
