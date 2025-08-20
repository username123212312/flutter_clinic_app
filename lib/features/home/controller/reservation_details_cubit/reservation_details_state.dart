part of 'reservation_details_cubit.dart';

@freezed
class ReservationDetailsState with _$ReservationDetailsState {
  const factory ReservationDetailsState({
    AppointmentModel? appointment,
    required DataStatus status,
    required DataStatus discountPointsStatus,
    required int discountPoints,
    required String message,
    String? paymentIntentId,
    String? clientID,
    required bool isPaid,
  }) = _ReservationDetailsState;
  factory ReservationDetailsState.initial() {
    return ReservationDetailsState(
      discountPoints: -1,
      discountPointsStatus: DataStatus.noData,
      status: DataStatus.noData,
      message: 'No data',
      isPaid: false,
    );
  }
}
