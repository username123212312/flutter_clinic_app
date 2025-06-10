import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../core/theme/app_pallete.dart';
import '../../../../core/utils/general_utils.dart';

class ThreeSelectableWidget extends StatefulWidget {
  const ThreeSelectableWidget({
    super.key,
    required this.titles,
    required this.onChange,
    this.currentIndex,
  });
  final List<String> titles;
  final void Function(int newIndex) onChange;
  final int? currentIndex;

  @override
  State<ThreeSelectableWidget> createState() => _ThreeSelectableWidgetState();
}

class _ThreeSelectableWidgetState extends State<ThreeSelectableWidget>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset(0.0, 0.0),
      end: Offset(2.0, 0.0),
    ).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        final localPosition = details.localPosition;

        final renderBox = context.findRenderObject() as RenderBox;
        final size = renderBox.size;

        if (localPosition.dx < size.width / 3) {
          log('left clicked');
          onChange(0);
        } else if (localPosition.dx < (1.65 * size.width) / 3) {
          onChange(1);
          log('middle clicked');
        } else {
          onChange(2);

          log('right clicked');
        }
      },
      child: Container(
        width: screenWidth(context) * 0.83,
        height: 54,
        decoration: BoxDecoration(
          color: Pallete.grayScaleColor200,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 4,
              left: 13,
              child: SlideTransition(
                position: _slideAnimation,
                child: Container(
                  height: 45,
                  width: screenWidth(context) * 0.25,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 15,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.titles[0],
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 12,
                      color:
                          (widget.currentIndex ?? _currentIndex) == 0
                              ? Colors.white
                              : Pallete.grayScaleColor400,
                    ),
                  ),
                  Text(
                    widget.titles[1],
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 12,
                      color:
                          (widget.currentIndex ?? _currentIndex) == 1
                              ? Colors.white
                              : Pallete.grayScaleColor400,
                    ),
                  ),
                  Text(
                    widget.titles[2],
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 12,
                      color:
                          (widget.currentIndex ?? _currentIndex) == 2
                              ? Colors.white
                              : Pallete.grayScaleColor400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onChange(int index) {
    switch (index) {
      case 0:
        _animationController.animateTo(0.0);
        break;
      case 1:
        _animationController.animateTo(0.49);
        break;
      case 2:
        _animationController.animateTo(1.0);
        break;
      default:
        _animationController.animateTo(0.0);
    }
    setState(() {
      _currentIndex = index;
    });
    widget.onChange(index);
  }

  late final AnimationController _animationController;
  late final Animation<Offset> _slideAnimation;
  int _currentIndex = 0;
}
