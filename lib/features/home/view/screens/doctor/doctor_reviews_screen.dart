import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:our_flutter_clinic_app/features/home/model/review_model.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../controller/doctor_reviews_cubit/doctor_reviews_cubit.dart';

class DoctorReviewsScreen extends StatefulWidget {
  const DoctorReviewsScreen({super.key});

  @override
  State<DoctorReviewsScreen> createState() => _DoctorReviewsScreenState();
}

class _DoctorReviewsScreenState extends State<DoctorReviewsScreen> {
  @override
  void initState() {
    super.initState();
    _doctorReviewsCubit.fetchAllReviews();
  }

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

      body: BackgroundContainer(
        child: BlocConsumer<DoctorReviewsCubit, DoctorReviewsState>(
          bloc: _doctorReviewsCubit,
          listener: (context, state) {
            if (state.status.isError) {
              Fluttertoast.showToast(msg: state.message);
            }
          },
          builder: (context, state) {
            if (state.reviews.isEmpty) {
              return RefreshIndicator(
                onRefresh: () async {
                  _doctorReviewsCubit.fetchAllReviews();
                },
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Center(
                    heightFactor: 2,
                    child: Column(
                      children: [
                        Image.asset(
                          fit: BoxFit.cover,
                          'assets/images/star_rate.png',
                          height: screenHeight(context) * 0.3,
                          width: screenWidth(context) * 0.5,
                        ),
                        Text(
                          'No reviews yet',
                          style: Theme.of(
                            context,
                          ).textTheme.labelMedium!.copyWith(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            return RefreshIndicator(
              onRefresh: () async {
                _doctorReviewsCubit.fetchAllReviews();
              },
              child: Skeletonizer(
                enabled: state.status.isLoading,
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: state.status.isLoading ? 20 : state.reviews.length,
                  itemBuilder: (context, index) {
                    if (state.status.isLoading) {
                      return Card(
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
                                'My Custom user',
                                style: Theme.of(
                                  context,
                                ).textTheme.titleLarge!.copyWith(
                                  color: Pallete.black1,
                                  fontSize: 14,
                                ),
                              ),
                              RatingBarIndicator(
                                rating: 0.roundToDouble(),
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
                      );
                    }
                    final review = state.reviews[index];
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
                                '${review.patientFirstName ?? 'No'} ${review.patientLastName ?? 'Patient'}',
                                style: Theme.of(
                                  context,
                                ).textTheme.titleLarge!.copyWith(
                                  color: Pallete.black1,
                                  fontSize: 14,
                                ),
                              ),
                              RatingBarIndicator(
                                rating: (review.rate ?? 0).roundToDouble(),
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
              ),
            );
          },
        ),
      ),
    );
  }

  void _showReviewDialog(BuildContext context, ReviewModel review) {
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
                            '${review.patientFirstName ?? 'No'} ${review.patientLastName ?? 'Patient'}',
                            style: Theme.of(context).textTheme.titleLarge!
                                .copyWith(color: Pallete.black1, fontSize: 15),
                          ),
                        ),
                        RatingBarIndicator(
                          rating: (review.rate ?? 0).roundToDouble(),
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
                      review.comment ?? '',
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

  final DoctorReviewsCubit _doctorReviewsCubit = DoctorReviewsCubit();
}
