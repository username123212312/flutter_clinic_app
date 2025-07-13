import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:our_flutter_clinic_app/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../widgets/home/home_screen_widget.dart';
import '../../widgets/home_widgets.dart';
import '../../widgets/profile/profile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);
    _animationController.forward();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<UserBloc>().add(AllChildrenFetched());
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          _currentIndex == 0
              ? null
              : AppBar(
                centerTitle: _currentIndex == 2 ? false : true,
                forceMaterialTransparency: true,
                title: FadeTransition(
                  opacity: _animationController,
                  child: Text(
                    _currentIndex == 1 ? 'Appointments' : 'My Profile',
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 20,
                      color: Pallete.grayScaleColor700,
                    ),
                  ),
                ),
                actionsPadding: EdgeInsets.only(right: 10, top: 20, bottom: 20),
                actions: [
                  if (_currentIndex == 2)
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (_) {
                            return SwitchProfilesSheetWidget();
                          },
                        );
                      },
                      child: Image.asset(
                        color: Theme.of(context).colorScheme.primary,
                        'assets/icons/change_profile_icon.png',
                      ),
                    ),
                  if (_currentIndex == 1)
                    TextButton.icon(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        context.pushNamed(
                          AppRouteConstants.bookNewAppointmentRouteName,
                        );
                      },
                      label: Text('Add'),
                      style: TextButton.styleFrom(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1,
                        ),
                      ),
                    ),
                ],
                toolbarHeight: screenHeight(context) * 0.1,
              ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.isAuth == false) {
            context.goNamed(AppRouteConstants.welcomeRouteName);
          }
        },
        child: Stack(
          children: [
            Positioned(
              bottom: screenHeight(context) * 0.12,
              top: 0,
              left: 0,
              right: 0,
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: setHome(_currentIndex),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CustomBottomAppBar(
                titles: [
                  {'Home': 'assets/icons/home_icon.png'},
                  {'Appointments': 'assets/icons/appointments_icon.png'},
                  {'Profile': 'assets/icons/profile_icon.png'},
                ],
                onChange: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget setHome(int index) {
    _animationController.reset();
    _animationController.forward();
    return switch (index) {
      0 => HomeScreenWidget(),
      1 => AppontmentsScreen(),
      2 => ProifileWidget(),
      _ => Placeholder(),
    };
  }

  late final AnimationController _animationController;
  late final Animation<double> _fadeAnimation;

  int _currentIndex = 0;
}

class SwitchProfilesSheetWidget extends StatelessWidget {
  const SwitchProfilesSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final userBloc = context.read<UserBloc>();
    return Container(
      width: screenWidth(context),
      height: screenHeight(context) * 0.45,
      decoration: BoxDecoration(
        color: Pallete.grayScaleColor0,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Switch Profile',
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 18),
              ),
              Spacer(),
              IconButton(
                tooltip: 'Add child',
                onPressed: () {
                  context.pushNamed(AppRouteConstants.addChildRouteName);
                },
                icon: Icon(FontAwesomeIcons.plus, size: 16),
              ),
              IconButton(
                tooltip: 'Refresh',
                onPressed: () {
                  userBloc.add(AllChildrenFetched());
                },
                icon: Icon(FontAwesomeIcons.arrowsRotate, size: 15),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: screenWidth(context),
            height: screenHeight(context) * 0.075,
            decoration: BoxDecoration(
              color: Pallete.grayScaleColor200,
              borderRadius: BorderRadius.circular(13),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              spacing: 10,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: Lottie.asset(
                    fit: BoxFit.cover,
                    'assets/lottie/single_profile_icon_lottie.json',
                  ),
                ),
                Text(
                  '${context.read<AuthBloc>().state.authUser?.user?.firstName ?? 'No'}'
                  ' ${context.read<AuthBloc>().state.authUser?.user?.lastName ?? 'User'}',

                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),

                if (userBloc.state.currentChildId != null)
                  IconButton.outlined(
                    style: IconButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                    onPressed: () {
                      userBloc.add(AccountSwitched());
                      context.pop();
                      context.goNamed(AppRouteConstants.switchAccountRouteName);
                    },
                    icon: Icon(FontAwesomeIcons.arrowsRotate, size: 15),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: screenWidth(context),
            child: Divider(color: Pallete.grayScaleColor300),
          ),
          if (userBloc.state.children.isNotEmpty) ...[
            SizedBox(height: 10),
            SizedBox(
              height: screenHeight(context) * 0.22,
              child: BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  return Skeletonizer(
                    enabled: state.childrenListStatus.isLoading,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount:
                          state.childrenListStatus.isLoading
                              ? 3
                              : userBloc.state.children.length,
                      itemBuilder: (_, index) {
                        if (state.childrenListStatus.isLoading) {
                          return _buildPlaceHolder(context);
                        }
                        final child = state.children[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                            width: screenWidth(context),
                            height: screenHeight(context) * 0.075,
                            decoration: BoxDecoration(
                              color: Pallete.grayScaleColor200,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            child: Row(
                              spacing: 10,
                              children: [
                                Container(
                                  width: 50,
                                  height: 70,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Lottie.asset(
                                    'assets/lottie/single_child_icon_lottie.json',
                                  ),
                                ),
                                Text(
                                  '${child.firstName ?? 'No'} ${child.lastName ?? 'User'}',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.displaySmall!.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                if ((state.currentChildId ?? -1) !=
                                    child.id) ...[
                                  Spacer(),
                                  IconButton.outlined(
                                    style: IconButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        side: BorderSide(
                                          width: 1,
                                          color:
                                              Theme.of(
                                                context,
                                              ).colorScheme.primary,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      userBloc.add(
                                        AccountSwitched(childId: child.id),
                                      );
                                      context.pop();
                                      context.goNamed(
                                        AppRouteConstants
                                            .switchAccountRouteName,
                                      );
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.arrowsRotate,
                                      size: 15,
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ],
      ),
    );
  }

  Padding _buildPlaceHolder(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        width: screenWidth(context),
        height: screenHeight(context) * 0.075,
        decoration: BoxDecoration(
          color: Pallete.grayScaleColor400,
          borderRadius: BorderRadius.circular(13),
        ),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Row(
          spacing: 5,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            Text('Custom User'),
            Spacer(),
            IconButton.outlined(
              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(
                    width: 1,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.arrowsRotate, size: 15),
            ),
          ],
        ),
      ),
    );
  }
}
