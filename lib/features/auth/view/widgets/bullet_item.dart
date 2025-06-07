import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';

class BulletItem extends StatelessWidget {
  final String text;
  final double? fontSize;
  const BulletItem({super.key, required this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "• ",
          style: TextStyle(
            fontSize: (fontSize ?? 16) + 2,
            color: Pallete.sliverSand,
          ),
        ),
        SizedBox(
          child: FittedBox(
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize ?? 16,
                color: Pallete.sliverSand,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
