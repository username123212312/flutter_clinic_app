import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/home/model/doctor_model.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:toastification/toastification.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../auth/view/widgets/custom_button.dart';
import '../../../controller/doctor_rate_cubit/doctor_rate_cubit.dart';
import '../../../model/requests/rate_doctor_request.dart';
import '../../../repository/doctor_info_repository.dart';

class RatingScreen extends StatefulWidget {
  final DoctorModel doctor;
  const RatingScreen({super.key, required this.doctor});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen>
    with TickerProviderStateMixin {
  double _rating = 0;
  final TextEditingController _commentController = TextEditingController();
  final List<Map<String, dynamic>> _reviews = [];

  @override
  void initState() {
    super.initState();
    _doctorRateCubit = DoctorRateCubit(
      doctorInfoRepository: DoctorInfoRepository(),
      doctor: widget.doctor,
    );
    _doctorRateCubit.fetchDoctorRates();
  }

  void _submitReview() async {
    if (_rating > 0 &&
        _commentController.text.isNotEmpty &&
        widget.doctor.id != null) {
      _doctorRateCubit.rateDoctor(
        RateDoctorRequest(
          doctorId: widget.doctor.id!,
          comment: _commentController.text.trim(),
          rate: _rating,
        ),
      );
    }
  }

  void onDone() {
    setState(() {
      _reviews.insert(0, {
        'name': widget.doctor.firstName ?? 'No Doctor',
        'rating': _rating,
        'comment': _commentController.text,
      });
      _rating = 0;
      _commentController.clear();
    });
    _showMyDialog();
  }

  Future<dynamic> _showMyDialog() {
    return showDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.black.withValues(alpha: 0.1),
      builder: (context) {
        return Dialog(
          backgroundColor: Pallete.grayScaleColor0,
          insetPadding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 40,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Pallete.primaryColor, width: 1),
          ),
          child: Container(
            width: screenWidth(context) * 0.1,
            height: screenHeight(context) * 0.43,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.close, color: Pallete.black1, size: 22),
                    onPressed: () {
                      context.pop();
                      context.pop();
                    },
                  ),
                ),

                Center(
                  child: SizedBox(
                    width: double.infinity,
                    height: screenHeight(context) * 0.17,
                    child: Image.asset(
                      "assets/images/Doctors-pana.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Center(
                  child: Text(
                    "Thank you",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Pallete.black1,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Center(
                  child: Text(
                    "for your feedback",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Pallete.sliverSand,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 8),

                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      context.pop();
                      context.pop();
                    },
                    child: Text(
                      "back to doctor",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        title: Text(
          'Give Feedback',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 16,
            color: Pallete.black1,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Pallete.black1,
            size: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom * 0.2,
        ),
        child: Column(
          children: [
            Text(
              "doctor rate",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 17,
                color: Pallete.black1,
              ),
            ),
            const SizedBox(height: 10),
            RatingBar.builder(
              initialRating: _rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemSize: 40,
              unratedColor: Pallete.graysGray4,
              itemBuilder:
                  (context, _) => Icon(Icons.star, color: Pallete.star),
              onRatingUpdate: (rating) {
                setState(() {
                  _rating = rating;
                });
              },
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Pallete.grayScaleColor0,
                border: Border.all(
                  color: Pallete.primaryColor.withValues(alpha: 0.2),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 16,
                  color: Pallete.black1,
                ),
                textInputAction: TextInputAction.done,
                controller: _commentController,
                decoration: InputDecoration(
                  hintText: "Leave a comment",
                  hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 16,
                    color: Pallete.grayScaleColor500,
                  ),

                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),

                maxLines: 7,
              ),
            ),
            const SizedBox(height: 20),
            BlocListener<DoctorRateCubit, DoctorRateState>(
              bloc: _doctorRateCubit,
              listener: (context, state) {
                if (state.status.isLoading) {
                  LoadingOverlay().show(context);
                } else {
                  LoadingOverlay().hideAll();
                  if (state.status.isDone) {
                    onDone();
                  }
                  if (state.status.isError) {
                    showToast(
                      context: context,
                      type: ToastificationType.error,
                      msg: state.message,
                    );
                  }
                }
              },
              child: CustomButton(
                text: 'Publish Feedback',
                onPressed: _submitReview,
                color: Pallete.primaryColor,
                width: screenWidth(context) * 0.4,
                height: screenHeight(context) * 0.05,
                padding: const EdgeInsets.symmetric(vertical: 6),
                borderRadius: 32,
                fontSize: 14,
                textColor: Pallete.grayScaleColor0,
              ),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Text Reviews",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Pallete.black1,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: screenHeight(context) * 0.5,
              child: BlocBuilder<DoctorRateCubit, DoctorRateState>(
                bloc: _doctorRateCubit,
                builder: (context, state) {
                  if (state.reviews.isEmpty && !state.status.isLoading) {
                    return Center(
                      child: Image.asset(
                        width: 150,
                        height: 150,
                        fit: BoxFit.contain,
                        'assets/images/il_empty_activity.webp',
                      ),
                    );
                  }
                  return Skeletonizer(
                    enabled: state.status.isLoading,
                    child: ListView.separated(
                      itemCount:
                          state.status.isLoading ? 10 : state.reviews.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 18),
                      itemBuilder: (_, index) {
                        if (state.status.isLoading) {
                          return _buildLoading(context);
                        }
                        final review = state.reviews[index];
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeOut,
                          decoration: BoxDecoration(
                            color: Pallete.graysGray5,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.05),
                                offset: const Offset(2, 2),
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                review.patientName ?? 'No User',
                                style: Theme.of(
                                  context,
                                ).textTheme.titleMedium!.copyWith(
                                  fontSize: 16,
                                  color: Pallete.black1,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                review.comment ?? 'No comment',
                                style: Theme.of(
                                  context,
                                ).textTheme.titleSmall!.copyWith(
                                  fontSize: 14,
                                  color: Pallete.gray1,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Pallete.star,
                                    size: 18,
                                  ),
                                  Text(
                                    "${review.rate ?? 0.0}",
                                    style: Theme.of(
                                      context,
                                    ).textTheme.labelMedium!.copyWith(
                                      fontSize: 14,
                                      color: Pallete.black1,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildLoading(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Pallete.graysGray5,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            offset: const Offset(2, 2),
            blurRadius: 8,
          ),
        ],
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'No user',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 16,
              color: Pallete.black1,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'No comment',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: 14,
              color: Pallete.gray1,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.star, color: Pallete.star, size: 18),
              Text(
                "${0.0}",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: 14,
                  color: Pallete.black1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  late final DoctorRateCubit _doctorRateCubit;
}
