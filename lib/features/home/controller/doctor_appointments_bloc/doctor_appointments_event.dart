part of 'doctor_appointments_bloc.dart';

@freezed
class DoctorAppointmentsEvent with _$DoctorAppointmentsEvent {
  const factory DoctorAppointmentsEvent.fetchAppointmentsByType([
    @Default(false) bool isRefresh,
  ]) = FetchAppointmentsByType;
  const factory DoctorAppointmentsEvent.resetAppointments() = ResetAppointments;
  const factory DoctorAppointmentsEvent.changeAppointmentStatus({
    required DoctorAppointmentStatus status,
  }) = ChangeAppointmentStatus;
  const factory DoctorAppointmentsEvent.changeAppointmentType({
    required DoctorAppointmentType type,
  }) = ChangeAppointmentType;
  const factory DoctorAppointmentsEvent.changeAppointmentMonth({
    required DateTime month,
  }) = ChangeAppointmentMonth;
}
