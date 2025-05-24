part of 'analysis_list_bloc.dart';

@freezed
sealed class AnalysisListEvent with _$AnalysisListEvent {
  const factory AnalysisListEvent.anaysisAdded({
    required AnalysisModel analysis,
  }) = AnaysisAdded;
  const factory AnalysisListEvent.analysisRemoved({required int analysisId}) =
      AnalysisRemoved;
  const factory AnalysisListEvent.analysisFetchRequested() =
      AnalysisFetchRequested;
  const factory AnalysisListEvent.analysisFilterRequested({
    required AnalysisStatus analysisStatus,
  }) = AnalysisFilterRequested;
}
