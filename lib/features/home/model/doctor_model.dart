import 'package:flutter_clinic_app/core/utils/time_range.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_model.freezed.dart';
part 'doctor_model.g.dart';

@freezed
sealed class DoctorModel with _$DoctorModel {
  factory DoctorModel({
    int? id,
    String? firstName,
    String? lastName,
    String? phone,
    String? clinic,
    String? photoPath,
    bool? treated,
    String? speciality,
    String? department,
    String? finalRate,
    double? visitFee,
    String? excperience,
    String? status,
  }) = _DoctorModel;

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
}
