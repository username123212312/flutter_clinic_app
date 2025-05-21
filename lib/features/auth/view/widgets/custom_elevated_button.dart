import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/core/utils/general_utils.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.fillColor,
    required this.textColor,
    this.elevation = 1,
    this.borderColor,
    this.prefix,
    this.fontSize,
    this.borderRadius,
    this.isEnabled = true,
  });
  final String title;
  final double elevation;
  final Color? fillColor;
  final Color textColor;
  final Color? borderColor;
  final void Function() onTap;
  final Widget? prefix;
  final double? fontSize;
  final double? borderRadius;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isEnabled ? onTap : null,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        fixedSize: Size(
          screenWidth(context) * 0.37,
          screenHeight(context) * 0.07,
        ),
        disabledBackgroundColor: Pallete.grayScaleColor500,
        backgroundColor: fillColor,
        foregroundColor: textColor,
        shape: RoundedRectangleBorder(
          borderRadius:
              borderRadius == null
                  ? BorderRadius.circular(8)
                  : BorderRadius.circular(borderRadius!),
          side: BorderSide(color: borderColor ?? Colors.transparent),
        ),
      ),

      child: Row(
        mainAxisAlignment:
            prefix == null ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          if (prefix != null) prefix!,
          if (prefix != null) Spacer(flex: 1),

          Text(
            title,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontSize: fontSize ?? 18,
              color: textColor,
            ),
          ),
          if (prefix != null) Spacer(flex: 1),
        ],
      ),
    );
  }
}
