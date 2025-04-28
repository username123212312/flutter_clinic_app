import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    super.key,
    required this.child,
    this.imagePath = 'assets/images/backgound.webp',
  });
  final Widget child;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(imagePath)),
      ),
      child: child,
    );
  }
}
