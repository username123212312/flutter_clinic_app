part of 'doctor_reviews_cubit.dart';

@freezed
class DoctorReviewsState with _$DoctorReviewsState {
  const factory DoctorReviewsState({
    required DataStatus status,
    required String message,
    required List<ReviewModel> reviews,
  }) = _DoctorReviewsState;
  factory DoctorReviewsState.initial() {
    return DoctorReviewsState(
      message: 'No data',
      status: DataStatus.noData,
      reviews: [],
    );
  }
}
