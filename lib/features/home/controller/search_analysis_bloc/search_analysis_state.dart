part of 'search_analysis_bloc.dart';

@freezed
sealed class SearchAnalysisState with _$SearchAnalysisState {
  const factory SearchAnalysisState({
    required List<AnalysisModel> analysisList,
  }) = _SearchAnalysisState;
  factory SearchAnalysisState.initial() {
    return SearchAnalysisState(analysisList: []);
  }
}
