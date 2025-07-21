part of 'doctor_patient_analysis_bloc.dart';

@freezed
class DoctorPatientAnalysisState with _$DoctorPatientAnalysisState {
  const factory DoctorPatientAnalysisState({
    required DataStatus status,
    required DataStatus clinicsStatus,
    required String message,
    required UserModel patient,
    required List<AnalysisModel> analysisList,
    required AnalysisStatus analysisStatus,
    required List<ClinicModel> clinics,
    required ClinicModel selectedClinic,
  }) = _DoctorPatientAnalysisState;
  factory DoctorPatientAnalysisState.initial({required UserModel patient}) {
    return DoctorPatientAnalysisState(
      selectedClinic: ClinicModel(name: 'Select a clinic'),
      analysisList: [],
      analysisStatus: AnalysisStatus.pending,
      clinics: [],
      message: 'No data',
      status: DataStatus.noData,
      clinicsStatus: DataStatus.noData,
      patient: patient,
    );
  }
}
