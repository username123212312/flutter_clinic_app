import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';

class AppointmentDetailsListItem extends StatelessWidget {
  const AppointmentDetailsListItem({
    super.key,
    required this.title,
    required this.subtitle,
    this.thirdtitle,
    required this.iconImagePath,
    this.fontSize,
  });
  final String title;
  final String subtitle;
  final String? thirdtitle;
  final String iconImagePath;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: OverflowBox(
            maxWidth: 50,
            maxHeight: 50,
            child: Container(
              decoration: BoxDecoration(
                color: Pallete.graysGray6,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              child: Image.asset(
                iconImagePath,
                width: 25,
                height: 25,
                fit: BoxFit.scaleDown,
                filterQuality: FilterQuality.low,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        SizedBox(
          height: screenHeight(context) * 0.08,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (thirdtitle == null) SizedBox(height: 10),
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Pallete.sliverSand,
                  fontSize: 14,
                ),
              ),
              Text(
                subtitle,
                style: Theme.of(
                  context,
                ).textTheme.labelSmall!.copyWith(fontSize: fontSize ?? 14),
              ),
              if (thirdtitle == null) SizedBox(height: 10),
              if (thirdtitle != null)
                Text(
                  thirdtitle!,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 9,
                    color: Pallete.sliverSand,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
