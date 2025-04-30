import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/utils/utils.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.fillColor,
    required this.textColor,
    this.elevation = 1,
    this.borderColor,
  });
  final String title;
  final double elevation;
  final Color? fillColor;
  final Color textColor;
  final Color? borderColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        fixedSize: Size(
          screenWidth(context) * 0.37,
          screenHeight(context) * 0.07,
        ),
        backgroundColor: fillColor,
        foregroundColor: textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: borderColor ?? Colors.transparent),
        ),
      ),

      child: Text(
        title,
        style: Theme.of(
          context,
        ).textTheme.labelMedium!.copyWith(fontSize: 18, color: textColor),
      ),
    );
  }
}
