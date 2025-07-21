import 'package:fluttertoast/fluttertoast.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/custom_switch.dart';

import '../../screens/patient/report_screen.dart';

class ProifileWidget extends StatelessWidget {
  const ProifileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:
            getChildId() == null
                ? null
                : DecorationImage(
                  repeat: ImageRepeat.repeat,
                  image: AssetImage('assets/images/background child.png'),
                ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              _buildHeader(context),
              SizedBox(height: 25),

              _buildProfileItems(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileItems(BuildContext context) {
    return SizedBox(
      height: screenHeight(context) * 0.65,
      child: ListView(
        children: [
          SizedBox(
            width: screenWidth(context),
            child: Divider(color: Pallete.grayScaleColor400),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                context.pushNamed(AppRouteConstants.documentsRouteName);
              },
              child: Row(
                children: [
                  Container(
                    width: screenWidth(context) * 0.13,
                    height: screenHeight(context) * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Pallete.grayScaleColor200,
                    ),
                    child: Icon(
                      Icons.document_scanner,
                      size: 25,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),

                  SizedBox(width: 10),
                  Text(
                    'Documents',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(fontSize: 17),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          SizedBox(
            width: screenWidth(context),
            child: Divider(color: Pallete.grayScaleColor400),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                context.pushNamed(AppRouteConstants.myWalletRouteName);
              },
              child: Row(
                children: [
                  Container(
                    width: screenWidth(context) * 0.13,
                    height: screenHeight(context) * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Pallete.grayScaleColor200,
                    ),
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/icons/wallet_icon.png',
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(width: 10),
                  Text(
                    'My Wallet',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(fontSize: 17),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          SizedBox(
            width: screenWidth(context),
            child: Divider(color: Pallete.grayScaleColor400),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                context.pushNamed(AppRouteConstants.aboutUsRouteName);
              },
              child: Row(
                children: [
                  Container(
                    width: screenWidth(context) * 0.13,
                    height: screenHeight(context) * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Pallete.grayScaleColor200,
                    ),
                    child: Icon(
                      Icons.info_outline,
                      size: 25,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),

                  SizedBox(width: 10),
                  Text(
                    'Info',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(fontSize: 17),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          SizedBox(
            width: screenWidth(context),
            child: Divider(color: Pallete.grayScaleColor400),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                ReportScreen.show(context);
              },
              child: Row(
                children: [
                  Container(
                    width: screenWidth(context) * 0.13,
                    height: screenHeight(context) * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Pallete.grayScaleColor200,
                    ),
                    child: Icon(
                      Icons.report,
                      size: 25,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),

                  SizedBox(width: 10),
                  Text(
                    'Report',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(fontSize: 17),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),

          SizedBox(
            width: screenWidth(context),
            child: Divider(color: Pallete.grayScaleColor400),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                context.pushNamed(AppRouteConstants.modifyPasswordRouteName);
              },
              child: Row(
                children: [
                  Container(
                    width: screenWidth(context) * 0.13,
                    height: screenHeight(context) * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Pallete.grayScaleColor200,
                    ),
                    child: Icon(
                      Icons.lock,
                      size: 25,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),

                  SizedBox(width: 10),
                  Text(
                    'Change Password',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(fontSize: 17),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),

          SizedBox(
            width: screenWidth(context),
            child: Divider(color: Pallete.grayScaleColor400),
          ),

          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              context.read<UserBloc>().add(UserLoggedOut());
            },
            child: BlocListener<UserBloc, UserState>(
              listener: (context, state) {
                if (state.status.isLoading) {
                  LoadingOverlay().show(context);
                } else {
                  LoadingOverlay().hideAll();
                  if (state.status.isError) {
                    Fluttertoast.showToast(msg: state.statusMessage);
                  }
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Container(
                      width: screenWidth(context) * 0.13,
                      height: screenHeight(context) * 0.06,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Pallete.grayScaleColor200,
                      ),
                      child: Icon(
                        Icons.logout,
                        size: 25,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),

                    SizedBox(width: 10),
                    Text(
                      'Log out',
                      style: Theme.of(
                        context,
                      ).textTheme.titleSmall!.copyWith(fontSize: 17),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              return BlocBuilder<AuthBloc, AuthState>(
                builder: (context, authState) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${state.user?.firstName ?? 'No'} ${state.user?.lastName ?? 'User'}',
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium!.copyWith(fontSize: 20),
                      ),
                      Text(
                        authState.authUser?.user?.email == null
                            ? (authState.authUser?.user?.phone ?? 'no phone')
                            : authState.authUser!.user!.email!,
                        style: Theme.of(
                          context,
                        ).textTheme.titleSmall!.copyWith(fontSize: 12),
                      ),
                    ],
                  );
                },
              );
            },
          ),

          GestureDetector(
            behavior: HitTestBehavior.opaque,

            onTap: () {
              context.pushNamed(AppRouteConstants.editProfileRouteName);
            },
            child: Icon(
              Icons.edit_square,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
