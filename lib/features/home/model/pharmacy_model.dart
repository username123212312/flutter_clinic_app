import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy_model.freezed.dart';
part 'pharmacy_model.g.dart';

@freezed
class PharmacyModel with _$PharmacyModel {
  factory PharmacyModel({
    int? id,
    String? name,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'finish_time') String? finishTime,
    String? phone,
    double? latitude,
    double? longitude,
    String? location,
  }) = _PharmacyModel;

  factory PharmacyModel.fromJson(Map<String, dynamic> json) =>
      _$PharmacyModelFromJson(json);
}
