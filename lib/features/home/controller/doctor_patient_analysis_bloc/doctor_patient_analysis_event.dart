part of 'doctor_patient_analysis_bloc.dart';

@freezed
class DoctorPatientAnalysisEvent with _$DoctorPatientAnalysisEvent {
  const factory DoctorPatientAnalysisEvent.analysisFetched({
    @Default(false) bool isRefresh,
  }) = AnalysisFetched;

  const factory DoctorPatientAnalysisEvent.clinicsFetched() = ClinicsFetched;

  const factory DoctorPatientAnalysisEvent.statusChanged({
    required AnalysisStatus analysisStatus,
  }) = StatusChanged;
  const factory DoctorPatientAnalysisEvent.clinicChanged({
    required ClinicModel clinic,
  }) = ClinicChanged;
}
