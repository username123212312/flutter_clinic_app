part of 'labtech_analysis_info_bloc.dart';

@freezed
sealed class LabtechAnalysisEvent with _$LabtechAnalysisEvent {
  const factory LabtechAnalysisEvent.analysisResultAdded({
    required AddAnalysisResultRequest request,
  }) = AnalysisResultAdded;
  const factory LabtechAnalysisEvent.downloadFile() = DownloadFile;
  const factory LabtechAnalysisEvent.downloadPhoto() = DownloadPhoto;
  const factory LabtechAnalysisEvent.addBill({
    required int analysisId,
    required double price,
  }) = AddBill;
  const factory LabtechAnalysisEvent.fetchAnalysis() = FetchAnalysis;
}
