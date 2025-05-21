import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/core/models/usermodel.dart';
import 'package:flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/core/utils/general_utils.dart';
import 'package:flutter_clinic_app/core/blocs/auth_bloc/auth_bloc.dart';
import '../../controller/user_bloc/user_bloc.dart';
import '../widgets/auth_widgets.dart';

import 'package:go_router/go_router.dart';

import '../../../../core/enums.dart';

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
        body: BackgroundContainer(
          child: Column(
            children: [
              SizedBox(height: screenHeight(context) * 0.117),
              RichText(
                text: TextSpan(
                  text: 'Choose Your ',
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall!.copyWith(fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Account Type',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
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
                  ChooseFromWidget(
                    onToggleSelect: () => _toggleRoles(Role.patient),
                    isSelected: _patientSelected,
                    title: 'Patient',
                    imagePath: 'assets/images/account_type_patient.webp',
                  ),
                  SizedBox(width: 20),
                  ChooseFromWidget(
                    onToggleSelect: () => _toggleRoles(Role.doctor),
                    isSelected: _doctorSelected,
                    title: 'Doctor',
                    imagePath: 'assets/images/account_type_doctor.webp',
                  ),
                ],
              ),
              SizedBox(height: screenHeight(context) * 0.23),
              CustomElevatedButton(
                title: 'Continue',
                onTap: () {
                  log('message');
                  context.read<UserBloc>().add(
                    UserEvent.userModified(user: UserModel(role: _currentRole)),
                  );
                  context.pushNamed(AppRouteConstants.loginRouteName);
                },
                fillColor: Pallete.primaryColor,
                textColor: Colors.white,
              ),
            ],
          ),
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
