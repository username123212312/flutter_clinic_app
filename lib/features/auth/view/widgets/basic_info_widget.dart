import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class BasicInfoWidget extends StatelessWidget {
  const BasicInfoWidget({
    super.key,
    this.controller,
    required this.title,
    required this.hintText,
    required this.keyboardType,
    this.maxLength,
    this.maxLines,
    this.readOnly = false,
    this.suffixIcon,
    this.initialValue,
    this.onTap,
    this.validator,
    this.onSaved,
    this.obsecureText = false,
    this.textInputAction = TextInputAction.next,
  });

  final TextEditingController? controller;
  final String title;
  final String hintText;
  final TextInputType keyboardType;
  final int? maxLength;
  final int? maxLines;
  final bool readOnly;
  final Widget? suffixIcon;
  final String? initialValue;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final bool obsecureText;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: RichText(
            text: TextSpan(
              text: title,
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontSize: 12),
              children: [
                TextSpan(
                  text: '*',
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
        CustomTextField(
          textInputAction: textInputAction,
          obscureText: obsecureText,
          validator: validator,
          onSaved: onSaved,
          onTap: onTap,
          initialValue: initialValue,
          maxLength: maxLength,
          maxLines: maxLines,
          hintText: hintText,
          controller: controller,
          keyboardType: keyboardType,
          readOnly: readOnly,
          suffixIcon: suffixIcon,
        ),
        // SizedBox(height: 10),
      ],
    );
  }
}
