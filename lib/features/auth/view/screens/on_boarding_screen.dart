import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/enums.dart';

import '../widgets/login_as_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool patientSelected = true;
  bool doctorSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              LoginAsWidget(
                key: ValueKey(Role.patient.toString()),
                onToggleSelect: () => _toggleRoles(Role.patient),
                isSelected: patientSelected,
              ),
              SizedBox(width: 20),
              LoginAsWidget(
                key: ValueKey(Role.doctor.toString()),
                onToggleSelect: () => _toggleRoles(Role.doctor),
                isSelected: doctorSelected,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _toggleRoles(Role r) {
    if (r.isPatient && !patientSelected) {
      setState(() {
        patientSelected = true;
        doctorSelected = false;
      });
    }
    if (r.isDoctor && !doctorSelected) {
      setState(() {
        patientSelected = false;
        doctorSelected = true;
      });
    }
  }
}
