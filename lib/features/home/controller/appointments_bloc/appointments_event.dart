part of 'appointments_bloc.dart';

@freezed
class AppointmentsEvent with _$AppointmentsEvent {
  const factory AppointmentsEvent.appointmentsFetched() = AppointmentsFetched;
  const factory AppointmentsEvent.appointmentsRefreshed() =
      AppointmentsRefreshed;
  const factory AppointmentsEvent.appointmentStatusChanged({
    required AppointmentStatus appointmentStatus,
  }) = AppointmentStatusChanged;
  const factory AppointmentsEvent.appointmentTypeChanged({
    required AppointmentType appointmentType,
  }) = AppointmentTypeChanged;
  const factory AppointmentsEvent.appointmentCanceled({
    required int reservationId,
  }) = AppointmentCanceled;
}
