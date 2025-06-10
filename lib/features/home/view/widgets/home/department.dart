import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';

class Department extends StatelessWidget {
  final String name;
  final String iconPath;
  final VoidCallback? onTap;

  const Department({
    super.key,
    required this.name,
    required this.iconPath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context) * 0.2,
      height: screenHeight(context) * 0.2,
      decoration: BoxDecoration(
        color: Pallete.buttonBG0,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            width: screenWidth(context) * 0.05,
            height: screenHeight(context) * 0.03,
          ),
          const SizedBox(height: 8),
          Text(
            name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontSize: 12,
              color: Pallete.gray1,
            ),
          ),
        ],
      ),
    );
  }
}
