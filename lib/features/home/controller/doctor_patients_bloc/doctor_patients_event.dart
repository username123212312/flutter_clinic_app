part of 'doctor_patients_bloc.dart';

@freezed
class DoctorPatientsEvent with _$DoctorPatientsEvent {
  const factory DoctorPatientsEvent.patientsFetched() = PatientsFetched;
  const factory DoctorPatientsEvent.notificationsFetched() =
      NotificationsFetched;
  const factory DoctorPatientsEvent.patientsSearched({required String query}) =
      PatientsSearched;
  const factory DoctorPatientsEvent.loadData() = LoadData;
}
