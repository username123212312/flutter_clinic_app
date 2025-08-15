import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../consts/app_constants.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: CachedNetworkImage(
        errorWidget: (context, url, error) {
          return Image.asset(fit: BoxFit.cover, 'assets/images/logo.webp');
        },
        fit: BoxFit.cover,
        imageUrl: '${AppConstants.serverUrl}$imagePath',
      ),
    );
  }
}
