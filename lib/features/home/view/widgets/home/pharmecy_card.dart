import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import 'TimeRangeWidget.dart';
import 'view_on_map.dart';

class PharmacyCard extends StatelessWidget {
  final String name;
  final String startTime;
  final String endTime;
  final String phone;
  final String location;
  final VoidCallback? onTap;
  final double latitude;
  final double longitude;
  final String namelocation;

  const PharmacyCard({
    super.key,
    required this.name,
    required this.startTime,
    required this.endTime,
    this.onTap,
    required this.latitude,
    required this.longitude,
    required this.namelocation,
    required this.phone,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context) * 1,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Pallete.graysGray5,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontSize: 14,
              color: Pallete.black1,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            namelocation,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: 14,
              color: Pallete.sliverSand,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            phone,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: 14,
              color: Pallete.sliverSand,
            ),
          ),
          const SizedBox(height: 10),
          TimeRangeWidget(startTime: startTime, endTime: endTime),
          const SizedBox(height: 12),
          ViewOnMapWidget(
            latitude: latitude,
            longitude: longitude,
            placeName: namelocation,
          ),
        ],
      ),
    );
  }
}
