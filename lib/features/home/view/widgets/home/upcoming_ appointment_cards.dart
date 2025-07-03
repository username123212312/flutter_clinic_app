import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';

class UpcomingAppointmentCard extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String imagePath;
  final String appointmentTime;
  final double rating;
  final String appointmentdate;
  final VoidCallback? onTap;

  const UpcomingAppointmentCard({
    super.key,
    required this.doctorName,
    required this.specialty,
    required this.imagePath,
    required this.appointmentTime,
    required this.rating,
    required this.appointmentdate,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: screenWidth(context) * 0.57,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 16,
                  foregroundImage: NetworkImage(
                    '${AppConstants.serverUrl}$imagePath',
                  ),
                  backgroundColor: Pallete.graysGray4,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorName,
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium!.copyWith(
                          fontSize: 13,
                          color: Pallete.grayScaleColor0,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        specialty,

                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 12,
                          color: Pallete.shadowtext,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            rating.toString(),
                            style: Theme.of(
                              context,
                            ).textTheme.labelSmall!.copyWith(
                              fontSize: 12,
                              color: Pallete.grayScaleColor0,
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Icon(Icons.star, color: Pallete.star, size: 14),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Icon(Icons.calendar_month, size: 14, color: Pallete.shadowtext),
                const SizedBox(width: 4),
                Text(
                  appointmentdate,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 12,
                    color: Pallete.grayScaleColor0,
                  ),
                ),
                const SizedBox(width: 40),
                Icon(Icons.access_time, size: 14, color: Pallete.shadowtext),
                const SizedBox(width: 4),
                Text(
                  appointmentTime,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 10,
                    color: Pallete.grayScaleColor0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
