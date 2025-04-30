import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/core/cubits/role/role_cubit.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/core/utils/utils.dart';

import '../../../../core/enums.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final Role _role;

  @override
  void didChangeDependencies() {
    _role = context.read<RoleCubit>().state.role;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Column(
          children: [
            _buildHeader(),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                decoration: BoxDecoration(color: Colors.pink),
                child: Container(
                  width: screenWidth(context),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Row(children: [
                  
                                ],),
                ),
              ),
            ),
            Flexible(
              flex: 4,
              fit: FlexFit.tight,
              child: Container(
                decoration: BoxDecoration(color: Colors.black45),
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Container(decoration: BoxDecoration(color: Colors.blue)),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(decoration: BoxDecoration(color: Colors.green)),
            ),
          ],
        ),
      ),
    );
  }

  Flexible _buildHeader() {
    return Flexible(
      flex: 5,
      fit: FlexFit.tight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // SizedBox(height: 30),
          Container(
            width: screenWidth(context) * 0.25,
            height: screenHeight(context) * 0.12,
            color: Colors.black,
          ),
          SizedBox(height: 30),
          RichText(
            text: TextSpan(
              style: Theme.of(
                context,
              ).textTheme.labelSmall!.copyWith(fontSize: 18),
              text: 'Welcome to ',
              children: [
                TextSpan(
                  text: 'Clinic',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Text(
            _role.isPatient
                ? 'Want to get treatment immediately? Come in!'
                : 'Doctor Text',
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: Pallete.grayScaleColor500,
              fontSize: 13,
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
