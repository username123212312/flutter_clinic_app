import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';

class ShiftWidget extends StatelessWidget {
  final String title;
  final String time;

  const ShiftWidget({super.key, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.1,
      width: screenWidth(context) * 0.35,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: Pallete.primaryColor.withValues(alpha: 0.4),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
        color: Pallete.grayScaleColor0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 14,
              color: Pallete.black1,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            time,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: 12,
              color: Pallete.black1,
            ),
          ),
        ],
      ),
    );
  }
}
