import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../consts/app_constants.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CachedNetworkImage(
        errorWidget: (context, url, error) {
          return Image.asset('assets/images/logo.webp', fit: BoxFit.contain);
        },
        fit: BoxFit.contain,
        imageUrl: '${AppConstants.serverUrl}$imagePath',
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
