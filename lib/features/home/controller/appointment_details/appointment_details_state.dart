part of 'appointment_details_bloc.dart';

@freezed
sealed class AppointmentDetailsState with _$AppointmentDetailsState {
  const factory AppointmentDetailsState({
    required AppointmentModel appointment,
  }) = _AppointmentDetailsState;
  factory AppointmentDetailsState.initial(AppointmentModel appointment) {
    return AppointmentDetailsState(appointment: appointment);
  }
}
