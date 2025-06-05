import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/custom_elevated_button.dart';
import 'package:our_flutter_clinic_app/features/home/model/analysis_model.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/analysis_item_widget.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/home_widgets.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/widgets.dart';

class LabtechHomeScreen extends StatefulWidget {
  const LabtechHomeScreen({super.key});

  @override
  State<LabtechHomeScreen> createState() => _LabtechHomeScreenState();
}

class _LabtechHomeScreenState extends State<LabtechHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final currentUser = context.read<AuthBloc>().state.authUser?.user;
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        toolbarHeight: screenHeight(context) * 0.11,
        title: Text('Analysis'),
        titleTextStyle: Theme.of(
          context,
        ).textTheme.titleMedium!.copyWith(fontSize: 25),
      ),
      body: Column(
        children: [
          Center(
            child: TwoSelectableWidget(
              twoTitles: ['Pending', 'Finished'],
              onToggleIndex: (newIndex) {},
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemExtent: screenHeight(context) * 0.1,
              padding: EdgeInsets.symmetric(horizontal: 30),
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: AnalysisItemWidget(
                    onTap: () {
                      context.goNamed(
                        AppRouteConstants.analysisInfoRouteName,
                        extra: AnalysisModel(name: 'name $index'),
                      );
                    },
                    analysis: AnalysisModel(name: 'name $index'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      drawer: _buildDrawer(context, currentUser),
    );
  }

  Drawer _buildDrawer(BuildContext context, UserModel? currentUser) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: screenHeight(context) * 0.08),
          Center(
            child: CircleAvatar(
              radius: 40,
              child: Icon(Icons.account_circle, size: 60),
            ),
          ),
          SizedBox(height: 15),
          Text(
            (currentUser?.firstName ?? 'No ') +
                (currentUser?.lastName ?? 'User'),
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontSize: 20,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          SizedBox(height: 20),
          Text(currentUser?.email ?? currentUser?.phone ?? 'No Email'),
          SizedBox(height: screenHeight(context) * 0.5),
          CustomElevatedButton(
            fontSize: 15,
            title: 'Logout',
            onTap: () {
              context.read<UserBloc>().add(UserLoggedOut());
            },
            fillColor: Theme.of(context).colorScheme.primary,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
