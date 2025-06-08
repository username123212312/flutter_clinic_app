part of 'labtech_analysis_info_bloc.dart';

@freezed
sealed class LabtechAnalysisInfoState with _$LabtechAnalysisInfoState {
  const factory LabtechAnalysisInfoState({
    required AnalysisModel analysis,
    required DataStatus status,
    required String message,
    DownloadedFile? downloadedFile,
    DownloadedFile? downloadedPhoto,
  }) = _LabtechAnalysisInfoState;
  factory LabtechAnalysisInfoState.initial({required AnalysisModel analysis}) {
    return LabtechAnalysisInfoState(
      analysis: analysis,
      status: DataStatus.data,
      message: 'Current analysis',
    );
  }
}
