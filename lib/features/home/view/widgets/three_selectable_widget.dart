import 'package:flutter/material.dart';

import '../../../../core/theme/app_pallete.dart';
import '../../../../core/utils/utils.dart';

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

class _ThreeSelectableWidgetState extends State<ThreeSelectableWidget> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentIndex ?? 0;
  }

  void onChange(int index) {
    setState(() {
      _currentIndex = index;
    });
    widget.onChange(index);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth(context) * 0.8,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final segmentWidth = constraints.maxWidth / 3;

          return GestureDetector(
            onTapDown: (details) {
              final localDx = details.localPosition.dx;

              int tappedIndex = (localDx / segmentWidth).floor();
              tappedIndex = tappedIndex.clamp(0, 2);

              onChange(tappedIndex);
            },
            child: Container(
              width: constraints.maxWidth,
              height: 54,
              decoration: BoxDecoration(
                color: Pallete.grayScaleColor200,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    top: 4,
                    left: segmentWidth * _currentIndex + 10,
                    child: Container(
                      width: segmentWidth - 15, // some horizontal padding
                      height: 45,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        widget.titles[_currentIndex],
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return SizedBox(
                        width: segmentWidth,
                        child: Center(
                          child: Text(
                            widget.titles[index],
                            style: Theme.of(
                              context,
                            ).textTheme.labelSmall!.copyWith(
                              fontSize: 12,
                              color:
                                  (index == _currentIndex)
                                      ? Colors.transparent
                                      : Pallete.grayScaleColor400,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
