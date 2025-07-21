part of 'doctor_patient_bloc.dart';

@freezed
class DoctorPatientEvent with _$DoctorPatientEvent {
  const factory DoctorPatientEvent.patientProfileFetched() =
      PatientProfileFetched;
  const factory DoctorPatientEvent.patientAppointmentsFetched() =
      PatientAppointmentsFetched;
}
