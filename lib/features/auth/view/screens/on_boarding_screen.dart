import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:go_router/go_router.dart';
import '../widgets/auth_widgets.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool patientSelected = true;
  bool doctorSelected = false;
  final _pageController = PageController();
  int _currentIndex = 0;

  final _pageTitles = [
    'Mediverse - Your health, our universe.',
    'Your Health. Our Mission.',
    'Healing starts at Mediverse.',
  ];
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BackgroundContainer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _headerWidget(),
              _pageViewWithIndicators(),
              _welcomingText(),
              _bottomButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Flexible _bottomButtons() {
    return Flexible(
      fit: FlexFit.tight,
      flex: 2,
      child: Container(
        child:
            _currentIndex == 2
                ? Align(
                  alignment: Alignment.center,
                  child: CustomElevatedButton(
                    title: 'Continue',
                    onTap: () {
                      context.pushNamed(AppRouteConstants.loginAsRouteName);
                    },
                    fillColor: Pallete.primaryColor,
                    textColor: Colors.white,
                  ),
                )
                : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (_currentIndex < 2)
                      CustomElevatedButton(
                        title: 'Previous',
                        onTap: () {
                          _pageController.previousPage(
                            duration: Duration(microseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        elevation: 0,
                        fillColor: Colors.transparent,
                        textColor: Pallete.primaryColor,
                      ),
                    if (_currentIndex < 2)
                      CustomElevatedButton(
                        title: 'Next',
                        onTap: () {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        fillColor: Pallete.primaryColor,
                        textColor: Colors.white,
                      ),
                  ],
                ),
      ),
    );
  }

  Flexible _welcomingText() {
    return Flexible(
      fit: FlexFit.tight,
      flex: 2,
      child: Container(
        alignment: Alignment.center,
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: Text(
            key: ValueKey<int>(_currentIndex),
            textAlign: TextAlign.center,
            _pageTitles[_currentIndex],
            style: Theme.of(
              context,
            ).textTheme.labelSmall!.copyWith(fontSize: 18),
            // overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }

  Flexible _pageViewWithIndicators() {
    return Flexible(
      flex: 4,
      fit: FlexFit.tight,
      child: SizedBox(
        child: Column(
          children: [
            Flexible(
              flex: 13,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: PageView(
                  onPageChanged: (index) {
                    setState(() {
                      log(index.toString());
                      _currentIndex = index;
                    });
                  },
                  controller: _pageController,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/on_boarding_slide1.webp',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/on_boarding_slide2.webp',
                          ),
                        ),
                      ),
                    ),
                    Transform.scale(
                      scaleX: 1.5,
                      scaleY: 0.9,
                      child: Image.asset(
                        fit: BoxFit.fill,
                        'assets/images/on_boarding_slide3.webp',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Pallete.primaryColor,
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            (_currentIndex == 1 || _currentIndex == 2)
                                ? Pallete.primaryColor
                                : Pallete.inactiveColor1,
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _currentIndex == 2
                                ? Pallete.primaryColor
                                : Pallete.inactiveColor1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Flexible _headerWidget() {
    return Flexible(
      flex: 2,
      fit: FlexFit.tight,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          transitionBuilder:
              (child, animation) =>
                  FadeTransition(opacity: animation, child: child),
          child: Container(
            key: ValueKey(_currentIndex),
            alignment: Alignment(0.0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text:
                        _currentIndex == 0
                            ? 'Welcome to '
                            : _currentIndex == 1
                            ? 'Choose your '
                            : 'Book an ',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(fontSize: 20),
                    children: [
                      TextSpan(
                        text:
                            _currentIndex == 0
                                ? 'Mediverse'
                                : _currentIndex == 1
                                ? 'Doctor'
                                : 'Appointment',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
