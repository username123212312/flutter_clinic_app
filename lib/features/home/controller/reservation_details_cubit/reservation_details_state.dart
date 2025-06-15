part of 'reservation_details_cubit.dart';

@freezed
class ReservationDetailsState with _$ReservationDetailsState {
  const factory ReservationDetailsState({
    AppointmentModel? appointment,
    required DataStatus status,
    required String message,
  }) = _ReservationDetailsState;
  factory ReservationDetailsState.initial() {
    return ReservationDetailsState(
      status: DataStatus.noData,
      message: 'No data',
    );
  }
}
