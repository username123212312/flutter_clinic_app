part of 'search_analysis_bloc.dart';

@freezed
sealed class SearchAnalysisEvent with _$SearchAnalysisEvent {
  const factory SearchAnalysisEvent.searched({required String query}) =
      Searched;
}
