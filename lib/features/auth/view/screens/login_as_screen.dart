import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/core/utils.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/custom_elevated_button.dart';

import '../../../../core/enums.dart';
import '../widgets/login_as_widget.dart';

class LoginAsScreen extends StatefulWidget {
  const LoginAsScreen({super.key});

  @override
  State<LoginAsScreen> createState() => _LoginAsScreenState();
}

class _LoginAsScreenState extends State<LoginAsScreen> {
  bool _patientSelected = true;
  bool _doctorSelected = false;
  Role _currentRole = Role.patient;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: screenHeight(context) * 0.19),
            Text(
              'Login as:',
              style: Theme.of(
                context,
              ).textTheme.labelSmall!.copyWith(fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginAsWidget(
                  onToggleSelect: () => _toggleRoles(Role.patient),
                  isSelected: _patientSelected,
                  title: 'Patient',
                ),
                SizedBox(width: 20),
                LoginAsWidget(
                  onToggleSelect: () => _toggleRoles(Role.doctor),
                  isSelected: _doctorSelected,
                  title: 'Doctor',
                ),
              ],
            ),
            SizedBox(height: screenHeight(context) * 0.25),
            CustomElevatedButton(
              title: 'Continue',
              onTap: () {},
              fillColor: Pallete.primaryColor,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  void _toggleRoles(Role role) {
    if (role.isPatient && !_patientSelected) {
      setState(() {
        _currentRole = Role.patient;
        _patientSelected = true;
        _doctorSelected = false;
      });
    }
    if (role.isDoctor && !_doctorSelected) {
      setState(() {
        _currentRole = Role.doctor;
        _patientSelected = false;
        _doctorSelected = true;
      });
    }
  }
}
