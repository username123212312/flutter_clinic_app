import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';

class ShiftDoctor extends StatelessWidget {
  final String title;
  final String time;
  final bool isSelected;
  final bool isDisabled;
  final VoidCallback? onTap;

  const ShiftDoctor({
    super.key,
    required this.title,
    required this.time,
    this.isSelected = false,
    this.isDisabled = false,
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
        width: screenWidth(context) * 0.28,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: borderColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.titleMedium!.copyWith(fontSize: 12, color: textColor),
            ),
            Text(
              time,
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontSize: 11, color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
