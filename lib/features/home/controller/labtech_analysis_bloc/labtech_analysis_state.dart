part of 'labtech_analysis_bloc.dart';

@freezed
sealed class LabtechAnalysisState with _$LabtechAnalysisState {
  const factory LabtechAnalysisState({
    required List<AnalysisModel> analysisList,
    required AnalysisStatus analysisStatus,
    required bool searchByName,
    required DataStatus status,
    required String message,
  }) = _LabtechAnalysisState;
  factory LabtechAnalysisState.initial() {
    return LabtechAnalysisState(
      searchByName: true,
      analysisList: [],
      analysisStatus: AnalysisStatus.pending,
      status: DataStatus.noData,
      message: 'No data',
    );
  }
}
