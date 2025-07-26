import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';

class VaccineFlipCard extends StatelessWidget {
  final List<Map<String, String>> flipFacts;

  const VaccineFlipCard({super.key, required this.flipFacts});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            flipFacts.map((fact) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: screenWidth(context) * 0.33,
                height: screenHeight(context) * 0.17,
                child: FlipCard(
                  direction: FlipDirection.HORIZONTAL,
                  front: Card(
                    color: Pallete.grayScaleColor0,
                    elevation: 1,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          fact['front']!,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleMedium!
                              .copyWith(fontSize: 16, color: Pallete.black1),
                        ),
                      ),
                    ),
                  ),
                  back: Card(
                    color: Pallete.grayScaleColor0,
                    elevation: 1,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          fact['back']!,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleMedium!
                              .copyWith(fontSize: 14, color: Pallete.black1),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
