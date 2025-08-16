import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import '../home/TimeRangeWidget.dart';
import '../../../../auth/view/widgets/custom_button.dart';

class DoctorInfCard extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final double rating;
  final String avgDuration;
  final Color backgroundColor;

  final VoidCallback? onRatePressed;

  const DoctorInfCard({
    super.key,
    required this.doctorName,
    required this.specialty,
    required this.rating,
    required this.avgDuration,
    this.backgroundColor = Pallete.grayScaleColor0,

    this.onRatePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                doctorName,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 18,
                  color: Pallete.black1,
                ),
              ),
              Row(
                children: [
                  Text(
                    rating.toString(),
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontSize: 14,
                      color: Pallete.black1,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.star, color: Pallete.star, size: 16),
                ],
              ),
            ],
          ),

          const SizedBox(height: 4),
          Text(
            specialty,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: 16,
              color: Pallete.gray1,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(Icons.access_time, size: 16, color: Pallete.gray1),
              const SizedBox(width: 4),
              Text(
                avgDuration,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Pallete.black1,
                ),
              ),
            ],
          ),

          const SizedBox(height: 2),
          if (onRatePressed != null)
            Align(
              alignment: Alignment.centerRight,
              child: CustomButton(
                text: 'Rate Doctor',
                onPressed: onRatePressed!,
                color: Pallete.primaryColor,
                width: screenWidth(context) * 0.3,
                height: screenHeight(context) * 0.045,
                padding: const EdgeInsets.symmetric(vertical: 6),
                borderRadius: 32,
                fontSize: 14,
                textColor: Pallete.grayScaleColor0,
              ),
            ),
        ],
      ),
    );
  }
}
