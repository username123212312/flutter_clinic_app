import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/core/widgets/widgets.dart';

import '../../../../../core/blocs/user_bloc/user_bloc.dart';
import '../../../../../core/utils/general_utils.dart';

class SwitchAccountScreen extends StatefulWidget {
  const SwitchAccountScreen({super.key});

  @override
  State<SwitchAccountScreen> createState() => _SwitchAccountScreenState();
}

class _SwitchAccountScreenState extends State<SwitchAccountScreen> {
  @override
  void initState() {
    super.initState();
    LoadingOverlay().hideAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: BlocListener<UserBloc, UserState>(
          listener: (context, state) {
            if (!state.status.isLoading) {
              context.goNamed(AppRouteConstants.homeRouteName);
            }
          },
          child: Center(
            child: Lottie.asset(
              height: screenHeight(context) * 0.2,
              width: screenWidth(context) * 0.45,
              fit: BoxFit.cover,
              'assets/lottie/switch_profile_lottie.json',
            ),
          ),
        ),
      ),
    );
  }
}
