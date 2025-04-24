import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/splash_screen.dart';

void main() {
  runApp(ClinicApp());
}

class ClinicApp extends StatelessWidget {
  const ClinicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Clinic App', home: SplashScreen());
  }
}
