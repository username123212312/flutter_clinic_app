import 'package:flutter_clinic_app/core/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'usermodel.freezed.dart';
part 'usermodel.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  factory UserModel({
    @Default('') String? firstName,
    @Default('') String? lastName,
    @Default('') String? email,
    @Default('') String? phone,
    @Default('') String? password,
    @Default(Role.patient) Role? role,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
