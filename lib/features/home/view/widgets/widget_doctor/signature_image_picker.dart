import 'dart:io';
import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';

class SignatureImagePicker extends StatelessWidget {
  final File? image;
  final VoidCallback onPick;

  const SignatureImagePicker({
    super.key,
    required this.image,
    required this.onPick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPick,
      child: Container(
        width: screenWidth(context) * 0.4,
        height: screenWidth(context) * 0.13,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Pallete.grayBorderColor),
        ),
        child:
            image == null
                ? const Center(
                  child: Text(
                    'Add signature image',
                    style: TextStyle(
                      color: Pallete.grayScaleColor500,
                      fontSize: 12,
                    ),
                  ),
                )
                : ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.file(
                    image!,
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: 100,
                  ),
                ),
      ),
    );
  }
}
