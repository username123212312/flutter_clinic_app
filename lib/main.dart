import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/core/cubits/role/role_cubit.dart';
import 'package:flutter_clinic_app/core/enums.dart';
import 'package:flutter_clinic_app/core/navigation/app_route_config.dart';
import 'package:flutter_clinic_app/core/theme/app_theme.dart';
import 'package:flutter_clinic_app/features/auth/controller/user_bloc/user_bloc.dart';
import 'package:flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:flutter_clinic_app/features/home/model/doctor_model.dart';
import 'package:flutter_clinic_app/features/home/model/patient_model.dart';
import 'package:flutter_clinic_app/features/home/view/screens/appointment_details_screen.dart';
import 'package:flutter_clinic_app/features/home/view/screens/book_new_appointment_screen.dart';
import 'package:flutter_clinic_app/features/home/view/screens/home_screen.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as p;

import 'core/providers/hive_client/hive_adapters/downloaded_file.dart';
import 'features/auth/view/screens/nana/login.dart';
import 'features/auth/view/screens/nana/register.dart';
import 'features/home/view/screens/documents_screen.dart';
import 'features/home/view/screens/edit_profile_screen.dart';
import 'features/home/view/widgets/home_widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Directory dir = await p.getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  // Hive.registerAdapter(DownloadedFileAdapter());
  await Hive.openBox<DownloadedFile>('downloadedFiles');

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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clinic App',
        themeMode: ThemeMode.system,
        theme: AppTheme.lightThemeMode,
        darkTheme: AppTheme.darkThemeMode,
        home: NanaRegisterScreen(),
      ),

      // MaterialApp.router(
      //   debugShowCheckedModeBanner: false,
      //   routerConfig: AppRouteConfig.router,
      //   title: 'Clinic App',
      //   themeMode: ThemeMode.system,
      //   theme: AppTheme.lightThemeMode,
      //   darkTheme: AppTheme.darkThemeMode,
      // ),
    );
  }
}
