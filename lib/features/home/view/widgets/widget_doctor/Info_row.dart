import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';

class InfoRow extends StatelessWidget {
  final String label1;
  final String value1;
  final String label2;
  final String value2;

  const InfoRow({
    super.key,
    required this.label1,
    required this.value1,
    required this.label2,
    required this.value2,
  });

  @override
  Widget build(BuildContext context) {
    final labelStyle = Theme.of(
      context,
    ).textTheme.titleSmall!.copyWith(fontSize: 11, color: Pallete.sliverSand);

    final valueStyle = Theme.of(
      context,
    ).textTheme.titleMedium!.copyWith(fontSize: 13, color: Pallete.black1);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label1, style: labelStyle),
                const SizedBox(height: 2),
                Text(value1, style: valueStyle),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label2, style: labelStyle),
                const SizedBox(height: 2),
                Text(value2, style: valueStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
