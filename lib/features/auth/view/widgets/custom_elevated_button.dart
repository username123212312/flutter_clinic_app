import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/utils.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.fillColor,
    required this.textColor,
  });
  final String title;
  final Color fillColor;
  final Color textColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          screenWidth(context) * 0.37,
          screenHeight(context) * 0.07,
        ),
        backgroundColor: fillColor,
        foregroundColor: textColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),

      child: Text(
        title,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(),
      ),
    );
  }
}
