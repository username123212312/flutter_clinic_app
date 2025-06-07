import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_analysis_result_request.freezed.dart';

@freezed
sealed class AddAnalysisResultRequest with _$AddAnalysisResultRequest {
  factory AddAnalysisResultRequest({
    required int id,
    String? filePath,
    String? photoPath,
  }) = _AddAnalysisResultRequest;
}
