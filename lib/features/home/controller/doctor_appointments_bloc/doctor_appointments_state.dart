part of 'doctor_appointments_bloc.dart';

@freezed
class DoctorAppointmentsState with _$DoctorAppointmentsState {
  const factory DoctorAppointmentsState({
    required DoctorAppointmentStatus doctorAppointmentStatus,
    required DoctorAppointmentType doctorAppointmentType,
    required List<AppointmentModel> appointments,
    required DataStatus status,
    required String message,
  }) = _DoctorAppointmentsState;
  factory DoctorAppointmentsState.initial() {
    return DoctorAppointmentsState(
      doctorAppointmentStatus: DoctorAppointmentStatus.pending,
      doctorAppointmentType: DoctorAppointmentType.firstTime,
      appointments: [],
      status: DataStatus.noData,
      message: 'no data',
    );
  }
}
