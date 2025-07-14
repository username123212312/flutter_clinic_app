part of 'doctor_appointment_details_cubit.dart';

@freezed
class DoctorAppointmentDetailsState with _$DoctorAppointmentDetailsState {
  const factory DoctorAppointmentDetailsState({
    required DataStatus status,
    required String message,
    required AppointmentModel appointment,
    MedicalInfoModel? medicalInfo,
  }) = _DoctorAppointmentDetailsState;
  factory DoctorAppointmentDetailsState.initial({
    required AppointmentModel appointment,
  }) {
    return DoctorAppointmentDetailsState(
      appointment: appointment,
      status: DataStatus.noData,
      message: 'No data',
    );
  }
}
