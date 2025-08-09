import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/custom_cached_network_image.dart';
import '../../../../auth/view/widgets/custom_button.dart';
import 'TimeRangeWidget.dart';

class FindDoctorCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final double rating;
  final String startTime;
  final String endTime;
  final VoidCallback? onTap;
  final VoidCallback? buttonOnTap;
  final double? padding;

  const FindDoctorCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.rating,
    required this.startTime,
    required this.endTime,
    this.onTap,
    this.buttonOnTap,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: screenWidth(context) * 1,
        padding:
            padding == null
                ? EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                : EdgeInsets.all(padding!),
        decoration: BoxDecoration(
          color: Pallete.graysGray5,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 33,
                      height: 33,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Pallete.graysGray4,
                        child: CustomCachedNetworkImage(imagePath: imagePath),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          rating.toString(),
                          style: Theme.of(context).textTheme.titleSmall!
                              .copyWith(fontSize: 14, color: Pallete.black1),
                        ),
                        const SizedBox(width: 4),
                        const Icon(Icons.star, color: Pallete.star, size: 16),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.labelMedium!
                            .copyWith(fontSize: 14, color: Pallete.black1),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,

                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 14,
                          color: Pallete.gray2,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TimeRangeWidget(
                            startTime: startTime,
                            endTime: endTime,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (buttonOnTap != null) const SizedBox(height: 15),
            if (buttonOnTap != null)
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  text: "Book Appointment",
                  onPressed: buttonOnTap,
                  color: Pallete.buttonBG,
                  width: screenWidth(context) * 0.9,
                  height: screenHeight(context) * 0.05,
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  borderRadius: 32,
                  textColor: Pallete.primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
