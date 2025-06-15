import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';

class AppointmentDetailsCard extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String? imagePath;
  final String hourlyRate;
  final double rating;
  final Color backgroundColor;

  const AppointmentDetailsCard({
    super.key,
    required this.doctorName,
    required this.specialty,
    required this.imagePath,
    required this.hourlyRate,
    required this.rating,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenHeight(context) * 0.12,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 32,
            width: 32,
            child: CircleAvatar(
              backgroundColor: Pallete.graysGray4,
              radius: 32,
              backgroundImage:
                  imagePath == null
                      ? AssetImage('assets/images/profile.png')
                      : NetworkImage('${AppConstants.serverUrl}/${imagePath!}'),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      doctorName,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontSize: 14,
                        color: Pallete.black1,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          rating.toString(),
                          style: Theme.of(context).textTheme.labelMedium!
                              .copyWith(fontSize: 14, color: Pallete.black1),
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
                    fontSize: 14,
                    color: Pallete.gray2,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  hourlyRate,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 14,
                    color: Pallete.black1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
