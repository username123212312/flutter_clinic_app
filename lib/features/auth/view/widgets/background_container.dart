import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/utils/general_utils.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    super.key,
    required this.child,
    this.imagePath = 'assets/images/background.webp',
  });
  final Widget child;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context),
      width: screenWidth(context),
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(imagePath)),
      ),
      child: child,
    );
  }
}
