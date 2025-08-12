import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';

class EducationalSliderVaccine extends StatelessWidget {
  final List<Map<String, String>> vaccineInfos;

  const EducationalSliderVaccine({super.key, required this.vaccineInfos});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: vaccineInfos.length,
      itemBuilder: (context, index, _) {
        final info = vaccineInfos[index];
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(info['image']!),
              fit: BoxFit.cover,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(
                decoration: BoxDecoration(
                  color: Pallete.black1.withValues(alpha: 0.35),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      info['title']!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 20,
                        color: Pallete.grayScaleColor0,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      info['text']!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 14,
                        color: Pallete.grayScaleColor0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: screenHeight(context) * 0.2,
        enlargeCenterPage: true,
        autoPlay: true,
      ),
    );
  }
}
