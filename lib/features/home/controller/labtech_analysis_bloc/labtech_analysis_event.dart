part of 'labtech_analysis_bloc.dart';

@freezed
sealed class LabtechAnalysisEvent with _$LabtechAnalysisEvent {
  const factory LabtechAnalysisEvent.analysisFetched() = AnalysisFetched;
  const factory LabtechAnalysisEvent.analysisStatusChanged({
    required AnalysisStatus analysisStatus,
  }) = AnalysisStatusChanged;
  const factory LabtechAnalysisEvent.analysisShown({required int analysisId}) =
      AnalysisShown;
  const factory LabtechAnalysisEvent.searched({required String query}) =
      AnalysisSearched;
  const factory LabtechAnalysisEvent.addAnalysis({
    required AddAnalysisRequest request,
  }) = AnalysisAdded;
}
