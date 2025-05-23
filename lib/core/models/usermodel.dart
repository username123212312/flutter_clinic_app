import 'package:flutter_clinic_app/core/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'usermodel.freezed.dart';
part 'usermodel.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: 'last_name') String? lastName,
    int? age,
    String? gender,
    @JsonKey(name: 'blood_type') String? bloodType,
    @JsonKey(name: 'first_name') String? firstName,
    int? id,
    String? address,
    String? email,
    String? phone,
    String? password,
    String? token,
    @Default(Role.patient) Role? role,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
