import 'dart:developer';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
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
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../widgets/chat/chat_list_widget.dart';
import '../../widgets/child_info_dialog.dart';
import '../../widgets/home/home_screen_widget.dart';
import '../../widgets/home_widgets.dart';
import '../../widgets/profile/profile_widget.dart';
import '../../widgets/vaccines/vaccine_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
                centerTitle: _currentIndex == 3 ? false : true,
                forceMaterialTransparency: true,
                title: FadeTransition(
                  opacity: _animationController,
                  child: Text(
                    _currentIndex == 1
                        ? 'Appointments'
                        : _currentIndex == 2
                        ? 'Chat'
                        : _currentIndex == 3
                        ? 'Vaccienes'
                        : 'My Profile',
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 20,
                      color: Pallete.grayScaleColor700,
                    ),
                  ),
                ),
                actionsPadding: EdgeInsets.only(right: 10, top: 20, bottom: 20),
                actions: [
                  if (_currentIndex == 3 || _currentIndex == 4)
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
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: setHome(_currentIndex),
        ),
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Container _buildBottomBar() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, -1.0),
            blurRadius: 7.9,
            color: Colors.black.withAlpha(80),
            spreadRadius: 0.1,
          ),
        ],
      ),
      child: ConvexAppBar(
        backgroundColor: Pallete.backgroundColor,
        initialActiveIndex: _currentIndex,
        color: Pallete.grayScaleColor500,
        onTap: (p0) {
          setState(() {
            _currentIndex = p0;
          });
        },
        items: [
          TabItem(
            icon: Padding(
              padding: EdgeInsets.all(_currentIndex == 0 ? 10.0 : 0),
              child: Image.asset(
                'assets/icons/home.png',
                width: 32,
                height: 32,
                fit: BoxFit.contain,
                color:
                    _currentIndex == 0
                        ? Theme.of(context).colorScheme.primary
                        : null,
              ),
            ),
            title: 'Home',
            // isIconBlend: true,
          ),
          TabItem(
            icon: Padding(
              padding: EdgeInsets.all(_currentIndex == 1 ? 10.0 : 0),
              child: Image.asset(
                'assets/icons/task.png',
                width: 32,
                height: 32,
                fit: BoxFit.contain,
                color:
                    _currentIndex == 1
                        ? Theme.of(context).colorScheme.primary
                        : null,
              ),
            ),
            title: 'Appoints',
          ),
          TabItem(
            icon: Padding(
              padding: EdgeInsets.all(_currentIndex == 2 ? 10.0 : 0),
              child: Image.asset(
                'assets/icons/messenger.png',
                width: 32,
                height: 32,
                fit: BoxFit.contain,
                color:
                    _currentIndex == 2
                        ? Theme.of(context).colorScheme.primary
                        : null,
              ),
            ),
            title: 'Chat',
          ),
          TabItem(
            icon: Padding(
              padding: EdgeInsets.all(_currentIndex == 3 ? 10.0 : 0),
              child: Image.asset(
                'assets/icons/child_vaccination.png',
                width: 32,
                height: 32,
                fit: BoxFit.contain,
                color:
                    _currentIndex == 3
                        ? Theme.of(context).colorScheme.primary
                        : null,
              ),
            ),
            title: 'Vaccine',
          ),
          TabItem(
            icon: Padding(
              padding: EdgeInsets.all(_currentIndex == 4 ? 10.0 : 0),
              child: Image.asset(
                'assets/icons/profile.png',
                width: 32,
                height: 32,
                fit: BoxFit.contain,
                color:
                    _currentIndex == 4
                        ? Theme.of(context).colorScheme.primary
                        : null,
              ),
            ),
            title: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget setHome(int index) {
    _animationController.reset();
    _animationController.forward();
    return switch (index) {
      0 => HomeScreenWidget(),
      1 => AppontmentsScreen(),
      2 => ChatListWidget(),
      3 => VaccineScreenWidget(),
      4 => ProifileWidget(),
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

                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 16,
                    color: Pallete.black1,
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
                    effect: SoldColorEffect(color: Pallete.grayScaleColor300),
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
                        return GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  backgroundColor: Pallete.grayScaleColor200,
                                  content: ChildInfoDialog(child: child),
                                );
                              },
                            );
                          },
                          child: Padding(
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
                                    ).textTheme.titleLarge!.copyWith(
                                      fontSize: 16,
                                      color: Pallete.black1,
                                    ),
                                  ),
                                  if ((state.currentChildId ?? -1) !=
                                      child.id) ...[
                                    Spacer(),
                                    IconButton.outlined(
                                      style: IconButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            25,
                                          ),
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


// SalomonBottomBar(
//           backgroundColor: Pallete.backgroundColor,
//           selectedItemColor: Theme.of(context).colorScheme.primary,
//           currentIndex: _currentIndex,
//           onTap: (p0) {
//             setState(() {
//               _currentIndex = p0;
//             });
//           },
//           items: [
//             SalomonBottomBarItem(
//               icon: Image.asset(
//                 'assets/icons/home.png',
//                 width: 32,
//                 height: 32,
//                 fit: BoxFit.cover,
//                 color: _currentIndex == 0 ? Colors.black : null,
//               ),
//               title: FittedBox(
//                 child: Text(
//                   'Home',
//                   style: Theme.of(
//                     context,
//                   ).textTheme.labelMedium!.copyWith(fontSize: 15),
//                 ),
//               ),
//             ),
//             SalomonBottomBarItem(
//               icon: Image.asset(
//                 'assets/icons/task.png',
//                 width: 32,
//                 height: 32,
//                 fit: BoxFit.cover,
//                 color: _currentIndex == 1 ? Colors.black : null,
//               ),
//               title: FittedBox(
//                 child: Text(
//                   'Appoints',
//                   style: Theme.of(
//                     context,
//                   ).textTheme.labelMedium!.copyWith(fontSize: 12),
//                 ),
//               ),
//             ),
//             SalomonBottomBarItem(
//               icon: Image.asset(
//                 'assets/icons/messenger.png',
//                 width: 32,
//                 height: 32,
//                 fit: BoxFit.cover,
//                 color: _currentIndex == 2 ? Colors.black : null,
//               ),
//               title: FittedBox(
//                 child: Text(
//                   'Chat',
//                   style: Theme.of(
//                     context,
//                   ).textTheme.labelMedium!.copyWith(fontSize: 15),
//                 ),
//               ),
//             ),
//             SalomonBottomBarItem(
//               icon: Image.asset(
//                 'assets/icons/child_vaccination.png',
//                 width: 32,
//                 height: 32,
//                 fit: BoxFit.cover,
//                 color: _currentIndex == 3 ? Colors.black : null,
//               ),
//               title: FittedBox(
//                 child: Text(
//                   'Vaccine',
//                   style: Theme.of(
//                     context,
//                   ).textTheme.labelMedium!.copyWith(fontSize: 15),
//                 ),
//               ),
//             ),
//             SalomonBottomBarItem(
//               icon: Image.asset(
//                 'assets/icons/profile.png',
//                 width: 32,
//                 height: 32,
//                 fit: BoxFit.cover,
//                 color: _currentIndex == 4 ? Colors.black : null,
//               ),
//               title: FittedBox(
//                 child: Text(
//                   'Profile',
//                   style: Theme.of(
//                     context,
//                   ).textTheme.labelMedium!.copyWith(fontSize: 15),
//                 ),
//               ),
//             ),
//           ],
//         ),