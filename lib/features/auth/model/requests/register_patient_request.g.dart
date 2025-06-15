// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_patient_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterPatientRequestImpl _$$RegisterPatientRequestImplFromJson(
  Map<String, dynamic> json,
) => _$RegisterPatientRequestImpl(
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  password: json['password'] as String,
  passwordConfirmation: json['password_confirmation'] as String,
);

Map<String, dynamic> _$$RegisterPatientRequestImplToJson(
  _$RegisterPatientRequestImpl instance,
) => <String, dynamic>{
  'email': instance.email,
  'phone': instance.phone,
  'password': instance.password,
  'password_confirmation': instance.passwordConfirmation,
};
