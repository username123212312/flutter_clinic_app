import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';

class DayDoctor extends StatelessWidget {
  final String day;
  final bool isSelected;
  final bool isDisabled;
  final VoidCallback? onTap;

  const DayDoctor({
    super.key,
    required this.day,
    required this.isSelected,
    required this.isDisabled,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor =
        isDisabled
            ? Pallete.grayScaleColor300
            : isSelected
            ? Pallete.primaryColor
            : Pallete.grayScaleColor0;

    final textColor =
        isDisabled
            ? Pallete.black1
            : isSelected
            ? Pallete.grayScaleColor0
            : Pallete.black1;

    final borderColor =
        isDisabled ? Pallete.grayScaleColor500 : Pallete.grayScaleColor300;

    return GestureDetector(
      onTap: isDisabled ? null : onTap,
      child: Container(
        width: screenWidth(context) * 0.16,
        height: screenHeight(context) * 0.052,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: borderColor),
        ),
        child: FittedBox(
          child: Text(
            day,
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(fontSize: 12, color: textColor),
          ),
        ),
      ),
    );
  }
}
