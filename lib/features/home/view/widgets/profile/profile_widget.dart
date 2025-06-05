import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/core/utils/logger.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/custom_switch.dart';
import 'package:go_router/go_router.dart';

class ProifileWidget extends StatelessWidget {
  const ProifileWidget({super.key});

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

  Column _buildProfileItems(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: screenWidth(context),
          child: Divider(color: Pallete.grayScaleColor400),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
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
                  Icons.notifications_active_outlined,
                  size: 25,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Notifications',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall!.copyWith(fontSize: 17),
              ),
              Spacer(),
              CustomSwitch(onToggle: (newValue) {}),
            ],
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
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            context.read<UserBloc>().add(UserLoggedOut());
          },
          child: BlocListener<UserBloc, UserState>(
            listener: (context, state) {
              clearAndShowSnackBar(context, state.statusMessage);
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
      ],
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
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${state.authUser!.user!.firstName ?? 'No'} ${state.authUser!.user!.lastName ?? 'User'}',
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium!.copyWith(fontSize: 20),
                  ),
                  Text(
                    state.authUser?.user?.email == null
                        ? (state.authUser?.user?.phone ?? 'no phone')
                        : state.authUser!.user!.email!,
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(fontSize: 12),
                  ),
                ],
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
