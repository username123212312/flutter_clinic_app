import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';

class DoctorReviewsScreen extends StatelessWidget {
  const DoctorReviewsScreen({super.key});

  final List<Map<String, dynamic>> reviews = const [
    {
      'name': 'Ali Ahmad',
      'rating': 4.5,
      'comment': 'Very good doctor, explained everything clearly.',
    },
    {
      'name': 'Sara Khaled',
      'rating': 5.0,
      'comment': 'Professional and friendly. Highly recommended!',
    },
    {
      'name': 'Mohamed Noor',
      'rating': 3.0,
      'comment': 'It was okay, waiting time was a bit long.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        backgroundColor: Pallete.grayScaleColor0,
        centerTitle: false,
        scrolledUnderElevation: 0,
        title: Text(
          'Patient Reviews',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 17,
            color: Pallete.black1,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Pallete.black1,
            size: 18,
          ),
        ),
      ),

      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("im/background-new.webp"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              final review = reviews[index];
              return GestureDetector(
                onTap: () => _showReviewDialog(context, review),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Pallete.grayScaleColor200),
                  ),
                  color: Pallete.grayScaleColor0,
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          review['name'],
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(color: Pallete.black1, fontSize: 14),
                        ),
                        RatingBarIndicator(
                          rating: review['rating'].roundToDouble(),
                          itemBuilder:
                              (context, _) => Icon(
                                FontAwesomeIcons.solidStar,
                                color: Pallete.star,
                              ),
                          itemCount: 5,
                          itemSize: 15,
                          unratedColor: Pallete.graysGray4,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void _showReviewDialog(BuildContext context, Map<String, dynamic> review) {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            backgroundColor: Pallete.grayScaleColor0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Pallete.primaryColor, width: 1),
            ),
            insetPadding: const EdgeInsets.symmetric(horizontal: 24),
            contentPadding: const EdgeInsets.all(24),
            content: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 10),
                    Image.asset(
                      'assets/images/star_rate.png',
                      height: screenHeight(context) * 0.1,
                      width: screenWidth(context) * 0.2,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            review['name'],
                            style: Theme.of(context).textTheme.titleLarge!
                                .copyWith(color: Pallete.black1, fontSize: 15),
                          ),
                        ),
                        RatingBarIndicator(
                          rating: review['rating'].roundToDouble(),
                          itemBuilder:
                              (context, _) => Icon(
                                FontAwesomeIcons.solidStar,
                                color: Pallete.star,
                                size: 17,
                              ),
                          itemCount: 5,
                          itemSize: 17,
                          unratedColor: Pallete.graysGray4,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      review['comment'],
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.sliverSand,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Positioned(
                  top: -4,
                  left: -4,
                  child: IconButton(
                    icon: Icon(Icons.close, color: Pallete.black1, size: 22),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
