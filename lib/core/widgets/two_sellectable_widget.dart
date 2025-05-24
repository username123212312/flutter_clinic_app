import 'dart:developer';

import 'package:flutter/material.dart';

import '../theme/app_pallete.dart';
import '../utils/general_utils.dart';

class TwoSelectableWidget extends StatefulWidget {
  const TwoSelectableWidget({
    super.key,
    required this.twoTitles,
    required this.onToggleIndex,
    this.leftPadding,
    this.inBetweenPadding,
    this.currentIndex,
  });

  final List<String> twoTitles;
  final void Function(int index) onToggleIndex;
  final double? leftPadding;
  final double? inBetweenPadding;
  final int? currentIndex;

  @override
  State<TwoSelectableWidget> createState() => _TwoSelectableWidgetState();
}

class _TwoSelectableWidgetState extends State<TwoSelectableWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Offset> _slideAnimation;

  late int? _currentIndex;

  @override
  void initState() {
    _currentIndex = widget.currentIndex ?? 0;
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset(0.0, 0.0),
      end: Offset(1.0, 0.0),
    ).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTapDown: (TapDownDetails details) {
          // Get the local position of the tap relative to the widget
          final localPosition = details.localPosition;

          // Get the size of the widget
          final renderBox = context.findRenderObject() as RenderBox;
          final size = renderBox.size;

          // Divide the widget into areas and call different methods
          if (localPosition.dx < size.width / 2) {
            log('left clicked');
            _toggleLoginMethod(0);
          } else {
            log('right clicked');
            _toggleLoginMethod(1);
          }
        },
        child: Container(
          width: screenWidth(context) * 0.8,
          height: 50,
          decoration: BoxDecoration(
            color: Pallete.grayScaleColor200,
            borderRadius: BorderRadius.circular(28),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 15,
                left: widget.leftPadding ?? 17,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: screenWidth(context) * 0.1),
                    Text(
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: 15,
                        color: Pallete.grayScaleColor400,
                      ),
                      textAlign: TextAlign.center,
                      widget.twoTitles[0],
                    ),
                    SizedBox(
                      width:
                          widget.inBetweenPadding ??
                          screenWidth(context) * 0.18,
                    ),
                    Text(
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: 15,
                        color: Pallete.grayScaleColor400,
                      ),
                      textAlign: TextAlign.center,
                      widget.twoTitles[1],
                    ),
                  ],
                ),
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),

                left:
                    (widget.currentIndex ?? _currentIndex) == 0
                        ? 10
                        : screenWidth(context) * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: screenWidth(context) * 0.38,
                      height: screenHeight(context) * 0.05,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Text(
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                        widget.twoTitles[widget.currentIndex ?? _currentIndex!],
                      ),
                    ),
                    Container(
                      width: screenWidth(context) * 0.38,
                      height: screenHeight(context) * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _toggleLoginMethod(int index) {
    if (index == 0) {
      setState(() {
        _animationController.reverse();
        widget.onToggleIndex(_currentIndex = 0);
      });
    } else if (index == 1) {
      setState(() {
        _animationController.forward();
        widget.onToggleIndex(_currentIndex = 1);
      });
    }
  }
}
