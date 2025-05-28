import 'package:freezed_annotation/freezed_annotation.dart';

part 'clinic_model.freezed.dart';
part 'clinic_model.g.dart';

@freezed
sealed class ClinicModel with _$ClinicModel {
  factory ClinicModel({
    int? id,
    String? name,
    int? numOfDoctors,
    String? location,
  }) = _ClinicModel;

  factory ClinicModel.fromJson(Map<String, dynamic> json) =>
      _$ClinicModelFromJson(json);
}
