import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/core/utils/general_utils.dart';

import '../widgets/home_widgets.dart';

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
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: FadeTransition(
          opacity: _animationController,
          child: Text(
            _currentIndex == 0
                ? 'Home'
                : _currentIndex == 1
                ? 'Appointments'
                : 'My Profile',
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              fontSize: 20,
              color: Pallete.grayScaleColor700,
            ),
          ),
        ),
        actionsPadding: EdgeInsets.only(right: 10, top: 20, bottom: 20),
        actions: [
          if (_currentIndex == 1)
            TextButton.icon(
              icon: Icon(Icons.add),
              onPressed: () {},
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
      body: Stack(
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
              onChange: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget setHome(int index) {
    _animationController.reset();
    _animationController.forward();
    return switch (index) {
      0 => Placeholder(),
      1 => AppontmentsWidget(),
      2 => Placeholder(color: Colors.red),
      _ => Placeholder(),
    };
  }

  late final AnimationController _animationController;
  late final Animation<double> _fadeAnimation;

  String _title = 'Home Page';
  int _currentIndex = 0;
}
