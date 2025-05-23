part of 'analysis_list_bloc.dart';

@freezed
sealed class AnalysisListEvent with _$AnalysisListEvent {
  const factory AnalysisListEvent.anaysisAdded({
    required AnalysisModel analysis,
  }) = AnaysisAdded;
}
