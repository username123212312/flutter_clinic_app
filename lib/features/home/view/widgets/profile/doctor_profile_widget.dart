import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';

import '../../../../../core/widgets/loading_overlay.dart';
import '../../screens/patient/report_screen.dart';

class DoctorProfileWidget extends StatelessWidget {
  const DoctorProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
                context.pushNamed(AppRouteConstants.doctorProfileRouteName);
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
                      FontAwesomeIcons.person,
                      size: 25,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),

                  SizedBox(width: 10),
                  Text(
                    'My Profile',
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
                context.pushNamed(AppRouteConstants.doctorScheduleRouteName);
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
                      Icons.schedule,
                      size: 25,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),

                  SizedBox(width: 10),
                  Text(
                    'Edit Schedule',
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                context.pushNamed(AppRouteConstants.doctorReviewsRouteName);
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
                      Icons.reviews,
                      size: 25,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),

                  SizedBox(width: 10),
                  Text(
                    'Reviews',
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
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return BlocBuilder<AuthBloc, AuthState>(
                builder: (context, authState) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${state.authUser?.user?.firstName ?? 'No'} ${state.authUser?.user?.lastName ?? 'User'}',
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
              context.pushNamed(AppRouteConstants.doctorEditProfileRouteName);
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
