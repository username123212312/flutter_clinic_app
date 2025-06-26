import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';

class ScheduleWidget<T> extends StatelessWidget {
  final String time;
  final T timeValue;
  final bool isSelected;
  final void Function(T newTime)? onTap;

  const ScheduleWidget({
    super.key,
    required this.time,
    required this.isSelected,
    this.onTap,
    required this.timeValue,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap == null ? null : () => onTap!(timeValue),
      child: AnimatedContainer(
        height: screenHeight(context) * 0.05,
        width: screenWidth(context) * 0.02,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? Pallete.primaryColor : Pallete.whiteColor,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: Pallete.buttonBG0, width: 1),
        ),
        child: Center(
          child: Text(
            time,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color:
                  isSelected ? Pallete.whiteColor : Pallete.grayScaleColor500,
              fontSize: 11,
            ),
          ),
        ),
      ),
    );
  }
}
