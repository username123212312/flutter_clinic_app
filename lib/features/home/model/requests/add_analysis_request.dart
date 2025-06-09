import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_analysis_request.freezed.dart';
part 'add_analysis_request.g.dart';

@freezed
sealed class AddAnalysisRequest with _$AddAnalysisRequest {
  factory AddAnalysisRequest({
    required String name,
    String? description,
    @JsonKey(name: 'patient_number') int? patientNumber,
    int? clinicId,
    String? resultFilePath,
    String? resultImagePath,
  }) = _AddAnalysisRequest;

  factory AddAnalysisRequest.fromJson(Map<String, dynamic> json) =>
      _$AddAnalysisRequestFromJson(json);
}
