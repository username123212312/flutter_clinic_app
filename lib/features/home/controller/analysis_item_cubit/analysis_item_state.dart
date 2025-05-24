part of 'analysis_item_cubit.dart';

@freezed
sealed class AnalysisItemState with _$AnalysisItemState {
  const factory AnalysisItemState({
    AnalysisModel? analysis,
    DownloadedFile? downloadedAnalysis,
    required DataStatus status,
    @Default(0.0) double? downloadProgress,
  }) = _AnalysisItemState;
  factory AnalysisItemState.initial() {
    return AnalysisItemState(analysis: null, status: DataStatus.noData);
  }
}
