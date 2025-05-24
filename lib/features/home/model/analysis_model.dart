import 'package:freezed_annotation/freezed_annotation.dart';

part 'analysis_model.freezed.dart';
part 'analysis_model.g.dart';

@freezed
sealed class AnalysisModel with _$AnalysisModel {
  factory AnalysisModel({
    @Default(0) int? id,
    required String name,
    String? description,
    @JsonKey(name: 'result_file') String? resultFile,
    @JsonKey(name: 'result_photo') String? resultPhoto,
  }) = _AnalysisModel;

  factory AnalysisModel.fromJson(Map<String, dynamic> json) =>
      _$AnalysisModelFromJson(json);
}
