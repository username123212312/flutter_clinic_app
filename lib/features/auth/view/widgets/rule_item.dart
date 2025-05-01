import 'package:flutter/material.dart';
import '../../../../core/theme/app_pallete.dart';

class RuleItem extends StatelessWidget {
  const RuleItem({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Icon(
              Icons.circle,
              size: 6,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Pallete.sliverSand,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
