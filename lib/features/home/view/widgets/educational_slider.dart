import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../core/theme/app_pallete.dart';
import '../../../../core/utils/general_utils.dart';

class EducationalSlider extends StatefulWidget {
  const EducationalSlider({super.key});

  @override
  State<EducationalSlider> createState() => _EducationalSliderState();
}

class _EducationalSliderState extends State<EducationalSlider> {
  int _currentPage = 0;

  final List<Map<String, String>> educationalTips = [
    {
      'image': 'assets/images/Routine doctor visits.jpg',
      'text': 'Routine doctor visits keep your child healthy and safe.',
    },
    {
      'image': 'assets/images/Balanced meals.jpg',
      'text': 'Balanced meals build strong bodies and bright minds.',
    },
    {
      'image': 'assets/images/parents-playing-with-child-floor.jpg',
      'text': 'Daily playtime keeps your child happy and healthy.',
    },
    {
      'image': 'assets/images/sleep.jpg',
      'text': 'Quality sleep helps your child grow and learn.',
    },
    {
      'image': 'assets/images/vaccination .jpg',
      'text': 'Vaccines protect your child from dangerous diseases.',
    },
    {
      'image': 'assets/images/mother reading.jpg',
      'text': 'Reading daily builds your child’s mind and imagination.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: educationalTips.length,
          options: CarouselOptions(
            height: screenHeight(context) * 0.24,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 4),
            enlargeCenterPage: true,
            viewportFraction: 0.85,
            onPageChanged: (index, reason) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
          itemBuilder: (context, index, realIndex) {
            final tip = educationalTips[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Pallete.grayScaleColor200.withValues(alpha: 0.15),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(tip['image']!, fit: BoxFit.cover),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Pallete.black1.withValues(alpha: 0.3),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          tip['text']!,
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium!.copyWith(
                            fontSize: 14,
                            color: Pallete.grayScaleColor0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            educationalTips.length,
            (index) => GestureDetector(
              onTap: () {},
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: _currentPage == index ? 12 : 8,

                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color:
                      _currentPage == index
                          ? Pallete.primaryColor
                          : Pallete.grayScaleColor300,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
