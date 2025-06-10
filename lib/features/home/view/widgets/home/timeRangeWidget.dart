import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';

class TimeRangeWidget extends StatelessWidget {
  final String startTime;
  final String endTime;

  const TimeRangeWidget({
    super.key,
    required this.startTime,
    required this.endTime,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.access_time, size: 16, color: Pallete.gray1),
        const SizedBox(width: 4),
        Text(
          '$startTime - $endTime',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Pallete.black1,
          ),
        ),
      ],
    );
  }
}
