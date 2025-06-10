import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../auth/view/widgets/custom_button.dart';

class ViewOnMapWidget extends StatelessWidget {
  final double latitude;
  final double longitude;
  final String placeName;

  const ViewOnMapWidget({
    super.key,
    required this.latitude,
    required this.longitude,
    required this.placeName,
  });

  void _launchMaps() async {
    final Uri url = Uri.parse(
      "https://www.google.com/maps/search/?api=1&query=$latitude,$longitude",
    );
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open the map.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: _launchMaps,
      text: 'View On Maps',
      textColor: Theme.of(context).colorScheme.primary,
      color: Pallete.buttonBG,

      width: screenWidth(context) * 0.9,
      height: screenHeight(context) * 0.047,
      padding: EdgeInsets.all(6),
      borderRadius: 32,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );
  }
}
