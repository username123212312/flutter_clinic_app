import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_model.freezed.dart';
part 'doctor_model.g.dart';

@freezed
sealed class DoctorModel with _$DoctorModel {
  factory DoctorModel({
    int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? phone,
    @JsonKey(name: 'clinic_id') int? clinicId,
    @JsonKey(name: 'photo_path') String? photoPath,
    bool? treated,
    String? speciality,
    String? department,
    @JsonKey(name: 'final_rate') String? finalRate,
    double? visitFee,
    String? excperience,
    String? status,
  }) = _DoctorModel;

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
}
