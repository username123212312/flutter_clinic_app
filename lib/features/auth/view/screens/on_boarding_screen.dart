import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/enums.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';

import '../widgets/custom_elevated_button.dart';
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginAsWidget(
                onToggleSelect: () => _toggleRoles(Role.patient),
                isSelected: patientSelected,
                title: 'Patient',
              ),
              SizedBox(width: 20),
              LoginAsWidget(
                onToggleSelect: () => _toggleRoles(Role.doctor),
                isSelected: doctorSelected,
                title: 'Doctor',
              ),
            ],
          ),
          SizedBox(height: 30),
          CustomElevatedButton(
            title: 'Continue',
            onTap: () {},
            fillColor: Pallete.primaryColor,
            textColor: Colors.white,
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
