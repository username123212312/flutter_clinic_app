import 'package:freezed_annotation/freezed_annotation.dart';

part 'analysis_model.freezed.dart';
part 'analysis_model.g.dart';

@freezed
sealed class AnalysisModel with _$AnalysisModel {
  factory AnalysisModel({
    required String name,
    required String description,
    @JsonKey(name: 'result_file') required String resultFile,
    @JsonKey(name: 'result_photo') required String resultPhoto,
  }) = _AnalysisModel;

  factory AnalysisModel.fromJson(Map<String, dynamic> json) =>
      _$AnalysisModelFromJson(json);
}
