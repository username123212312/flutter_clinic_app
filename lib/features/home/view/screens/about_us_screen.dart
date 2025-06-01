import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/core/widgets/background_container.dart';

import '../../../../core/theme/app_pallete.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        forceMaterialTransparency: true,
        title: Text(
          'Info',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 20,
            color: Pallete.black1,
          ),
        ),
        toolbarHeight: screenHeight(context) * 0.1,
      ),
      body: BackgroundContainer(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(height: 40),
                SizedBox(
                  width: screenWidth(context) * 0.8,
                  height: screenHeight(context) * 0.2,
                  child: Image.asset(
                    'assets/images/logo.webp',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.15),
                Text(
                  'Mediverse for IOS & Android',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 18,
                    color: Pallete.black1,
                  ),
                ),
                SizedBox(height: 10),

                Text(
                  'Email: mediverse@gmail.com',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 18,
                    color: Pallete.black1,
                  ),
                ),
                SizedBox(height: 10),

                Text(
                  'Phone: 1234567890',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 18,
                    color: Pallete.black1,
                  ),
                ),
                SizedBox(height: 10),

                Text(
                  'Address: Damascus, Jaramana, alnahda',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 18,
                    color: Pallete.black1,
                  ),
                ),
                SizedBox(height: 10),

                Text(
                  'Mediverse™ - All rights reserved',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 18,
                    color: Pallete.black1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
