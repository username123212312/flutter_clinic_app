part of 'reservation_details_cubit.dart';

@freezed
class ReservationDetailsState with _$ReservationDetailsState {
  const factory ReservationDetailsState({
    AppointmentModel? appointment,
    required DataStatus status,
    required String message,
    String? paymentIntentId,
    String? clientID,
  }) = _ReservationDetailsState;
  factory ReservationDetailsState.initial() {
    return ReservationDetailsState(
      status: DataStatus.noData,
      message: 'No data',
    );
  }
}
