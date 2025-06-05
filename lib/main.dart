import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_config.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/theme/app_theme.dart';
import 'package:our_flutter_clinic_app/features/home/controller/analysis_list_bloc/analysis_list_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/controller/appointments_bloc/appointments_bloc.dart';
import 'package:our_flutter_clinic_app/service_locator.dart';
import 'package:path_provider/path_provider.dart' as p;

import 'core/observers/custom_bloc_observer.dart';
import 'core/blocs/user_bloc/user_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

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
      ],
      // child: MaterialApp(
      //   debugShowCheckedModeBanner: false,
      //   title: 'Clinic App',
      //   themeMode: ThemeMode.system,
      //   theme: AppTheme.lightThemeMode,
      //   darkTheme: AppTheme.darkThemeMode,
      //   home: RescheduleScreen(
      //     appointment: AppointmentModel(id: 55, clinicId: 1, doctorId: 5),
      //   ),
      // ),
      child: BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (previous, current) {
          return previous.isAuth != current.isAuth;
        },
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouteConfig.router,
            title: 'Clinic App',
            themeMode: ThemeMode.system,
            theme: AppTheme.lightThemeMode,
            darkTheme: AppTheme.darkThemeMode,
          );
        },
      ),
    );
  }
}

Future<void> initMain() async {
  WidgetsFlutterBinding.ensureInitialized();
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
}
