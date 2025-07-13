import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/custom_bottom_app_bar_item.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({
    super.key,
    required this.onChange,
    required this.titles,
  });
  final void Function(int index) onChange;
  final List<Map<String, String>> titles;

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        // Get the local position of the tap relative to the widget
        final localPosition = details.localPosition;

        // Get the size of the widget
        final renderBox = context.findRenderObject() as RenderBox;
        final size = renderBox.size;

        // Divide the widget into areas and call different methods
        if (localPosition.dx < size.width / 3) {
          _setIndex(0);
        } else if (localPosition.dx < ((2 * size.width) / 3)) {
          _setIndex(1);
        } else {
          _setIndex(2);
        }
      },
      child: Container(
        padding: EdgeInsets.only(top: 13),
        height: screenHeight(context) * 0.12,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              blurRadius: 8,
              spreadRadius: 0,
              offset: Offset(0.0, -4.0),
            ),
          ],
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomBottomAppBarItem(
              activeColor: Theme.of(context).colorScheme.primary,
              isSelected: _currentIndex == 0,
              iconImagePath: widget.titles[0].values.first,
              title: widget.titles[0].keys.first,
            ),
            CustomBottomAppBarItem(
              activeColor: Theme.of(context).colorScheme.primary,
              isSelected: _currentIndex == 1,
              iconImagePath: widget.titles[1].values.first,
              title: widget.titles[1].keys.first,
            ),
            CustomBottomAppBarItem(
              activeColor: Theme.of(context).colorScheme.primary,
              isSelected: _currentIndex == 2,
              iconImagePath: widget.titles[2].values.first,
              title: widget.titles[2].keys.first,
            ),
          ],
        ),
      ),
    );
  }

  void _setIndex(int newIndex) {
    setState(() {
      widget.onChange(newIndex);
      _currentIndex = newIndex;
    });
  }
}
