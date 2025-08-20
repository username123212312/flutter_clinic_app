import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';

class InfoBox extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color backgroundColor;

  const InfoBox({
    super.key,
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context) * 0.20,
      height: screenHeight(context) * 0.10,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
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
          SizedBox(
            height: screenHeight(context) * 0.023,
            width: screenWidth(context) * 0.07,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Text(
                textAlign: TextAlign.center,
                subtitle,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 13,
                  color: Pallete.graysGray2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
