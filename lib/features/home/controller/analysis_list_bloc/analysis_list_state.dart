part of 'analysis_list_bloc.dart';

@freezed
sealed class AnalysisListState with _$AnalysisListState {
  const factory AnalysisListState({
    required List<AnalysisModel> analysisList,
    required DataStatus status,
    @Default('no change') String statusMessage,
    @Default(0.0) double progressValue,
  }) = _AnalysisListState;
  factory AnalysisListState.initial() {
    return AnalysisListState(analysisList: [], status: DataStatus.noData);
  }
}
