import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/blocs/auth_bloc/auth_bloc.dart';
import '../widgets/auth_widgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(CheckUserAuthState());
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _initialize());
  }

  void _initialize() async {
    if (!_isInit) {
      if (mounted) {
        // final authBloc = context.read<AuthBloc>()..add(CheckUserAuthState());

        // eLog(authBloc.state);
        // final redirectScreen =
        //     (authBloc.state.isAuth != null && authBloc.state.isAuth!)
        //         ? AppRouteConstants.homeRouteName
        //         : null;
        // if (redirectScreen != null) {
        //   context.goNamed(redirectScreen);
        // }
        _isInit = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) {
        return previous.isAuth == false && current.isAuth == true;
      },
      listener: (context, state) {
        eLog('New AuthState: $state');
        if (state.isAuth != null) {
          if (state.isAuth!) {
            navigateByRole(
              context,
              role: state.authUser?.user?.role ?? Role.patient,
              isCompleteProfile:
                  state.authUser?.user?.isCompleteProfile ?? false,
            );
          }
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: BackgroundContainer(
            imagePath: 'assets/images/background.webp',
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight(context) * 0.3),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.webp'),
                      ),
                    ),
                    width: screenWidth(context) * 0.5,
                    height: screenHeight(context) * 0.23,
                  ),

                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      text: 'Welcome to ',
                      style: Theme.of(
                        context,
                      ).textTheme.titleSmall!.copyWith(fontSize: 20),
                      children: [
                        TextSpan(
                          text: 'Mediverse',
                          style: Theme.of(
                            context,
                          ).textTheme.titleSmall!.copyWith(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Spacer(),
                  CustomElevatedButton(
                    title: 'Start',
                    onTap: () {
                      context.pushNamed(AppRouteConstants.onBoardingRouteName);
                    },
                    fillColor: Pallete.primaryColor,
                    textColor: Colors.white,
                  ),
                  SizedBox(height: screenHeight(context) * 0.062),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _isInit = false;
}
