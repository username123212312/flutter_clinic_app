part of 'labtech_new_analysis_cubit.dart';

@freezed
sealed class LabtechNewAnalysisState with _$LabtechNewAnalysisState {
  const factory LabtechNewAnalysisState({
    required List<ClinicModel> clinics,
    required DataStatus status,
    required String statusMessage,
    ClinicModel? selectedClinic,
  }) = _LabtechNewAnalysisState;
  factory LabtechNewAnalysisState.initial() {
    return LabtechNewAnalysisState(
      clinics: [],
      status: DataStatus.noData,
      statusMessage: 'No data',
    );
  }
}
