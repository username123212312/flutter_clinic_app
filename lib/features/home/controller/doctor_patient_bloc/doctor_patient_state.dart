part of 'doctor_patient_bloc.dart';

@freezed
class DoctorPatientState with _$DoctorPatientState {
  const factory DoctorPatientState({
    required DataStatus status,
    required String message,
    required List<AppointmentModel> appointments,
    required DataStatus appointmentsStatus,
    required UserModel patient,
  }) = _DoctorPatientState;
  factory DoctorPatientState.initial({required UserModel patient}) {
    return DoctorPatientState(
      status: DataStatus.noData,
      message: 'No data',
      appointments: [],
      appointmentsStatus: DataStatus.noData,
      patient: patient,
    );
  }
}
