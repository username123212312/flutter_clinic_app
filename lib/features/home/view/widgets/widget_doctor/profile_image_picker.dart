import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/widgets/custom_cached_network_image.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';

class ProfileImagePicker extends StatelessWidget {
  final File? image;
  final VoidCallback onPick;

  final String? existingImagePath;

  const ProfileImagePicker({
    super.key,
    this.image,
    required this.onPick,
    this.existingImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          width: screenWidth(context) * 0.27,
          height: screenWidth(context) * 0.27,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Pallete.grayScaleColor500.withAlpha(200),
              width: 1,
            ),
            color: Pallete.grayScaleColor0,
          ),
          child:
              image == null
                  ? existingImagePath == null
                      ? Center(child: Icon(Icons.camera_alt_outlined))
                      : CustomCachedNetworkImage(imagePath: existingImagePath!)
                  : ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(image!, height: 50),
                  ),
        ),
        Positioned(
          right: -9,
          bottom: -9,
          child: GestureDetector(
            onTap: onPick,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Pallete.grayScaleColor200.withAlpha(150),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
                border: Border.all(
                  color: Pallete.grayScaleColor500.withAlpha(200),
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: const Icon(
                FontAwesomeIcons.camera,
                color: Pallete.primaryColor,
                size: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
