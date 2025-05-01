import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/core/cubits/role/role_cubit.dart';
import 'package:flutter_clinic_app/core/navigation/app_route_config.dart';
import 'package:flutter_clinic_app/core/theme/app_theme.dart';
import 'package:flutter_clinic_app/features/auth/controller/user_bloc/user_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

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
      providers: [BlocProvider(create: (_) => UserBloc())],
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
