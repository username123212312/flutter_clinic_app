import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
class ReviewModel with _$ReviewModel {
  factory ReviewModel({
    @JsonKey(name: 'patient_id') int? patientId,
    @JsonKey(name: 'patient_first_name') String? patientFirstName,
    @JsonKey(name: 'patient_last_name') String? patientLastName,
    int? rate,
    String? comment,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
