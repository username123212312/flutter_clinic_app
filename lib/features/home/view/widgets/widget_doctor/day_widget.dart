import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';

class DayWidget extends StatelessWidget {
  final String day;
  final bool isSelected;
  final bool isAvailable;
  final VoidCallback? onTap;

  const DayWidget({
    super.key,
    required this.day,
    this.isSelected = false,
    this.isAvailable = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        isSelected
            ? Pallete.primaryColor
            : isAvailable
            ? Pallete.grayScaleColor0
            : Pallete.grayScaleColor300;
    final borderColor =
        isSelected
            ? Pallete.primaryColor
            : isAvailable
            ? Pallete.grayScaleColor300
            : Pallete.grayScaleColor500;
    final textColor =
        isSelected
            ? Pallete.whiteColor
            : isAvailable
            ? Pallete.black1
            : Pallete.black1;

    return GestureDetector(
      onTap: isAvailable ? onTap : null,
      child: Container(
        height: screenHeight(context) * 0.07,
        width: screenWidth(context) * 0.14,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor, width: 1),
        ),
        child: Text(
          day.toUpperCase(),
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontSize: 13, color: textColor),
        ),
      ),
    );
  }
}
