part of 'labtech_analysis_bloc.dart';

@freezed
sealed class LabtechAnalysisEvent with _$LabtechAnalysisEvent {
  const factory LabtechAnalysisEvent.analysisFetched({
    required AnalysisStatus analysisStatus,
  }) = AnalysisFetched;
  const factory LabtechAnalysisEvent.analysisShown({required int analysisId}) =
      AnalysisShown;
}
