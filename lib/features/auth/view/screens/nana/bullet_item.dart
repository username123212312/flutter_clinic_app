import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';

class BulletItem extends StatelessWidget {
  final String text;
  const BulletItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "• ",
          style: TextStyle(fontSize: 16, color: Pallete.sliverSand),
        ),
        SizedBox(
          child: FittedBox(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, color: Pallete.sliverSand),
            ),
          ),
        ),
      ],
    );
  }
}
