part of 'change_appointments_cubit.dart';

@freezed
class ChangeAppointmentsState with _$ChangeAppointmentsState {
  const factory ChangeAppointmentsState({
    required DataStatus status,
    required String message,
    required List<DateTime> availableDays,
  }) = _ChangeAppointmentsState;
  factory ChangeAppointmentsState.initial() {
    return ChangeAppointmentsState(
      availableDays: [],
      status: DataStatus.noData,
      message: 'No data',
    );
  }
}
