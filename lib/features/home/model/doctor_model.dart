import 'package:freezed_annotation/freezed_annotation.dart';

import 'schedule.dart';

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
    String? clinic,
    @JsonKey(name: 'photo_path') String? photoPath,
    String? photo,
    @JsonKey(name: 'professional_title') String? professionalTitle,
    @JsonKey(name: 'average_visit_duration') String? averageVisitDuration,
    int? treated,
    String? speciality,
    String? department,
    @JsonKey(name: 'final_rate') String? finalRate,
    @JsonKey(name: 'visit_fee') double? visitFee,
    String? excperience,
    String? status,
    String? sign,
    List<Schedule>? schedule,
  }) = _DoctorModel;

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
}
