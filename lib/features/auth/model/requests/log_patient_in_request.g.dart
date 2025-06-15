// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_patient_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogPatientInRequestImpl _$$LogPatientInRequestImplFromJson(
  Map<String, dynamic> json,
) => _$LogPatientInRequestImpl(
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  password: json['password'] as String,
);

Map<String, dynamic> _$$LogPatientInRequestImplToJson(
  _$LogPatientInRequestImpl instance,
) => <String, dynamic>{
  'email': instance.email,
  'phone': instance.phone,
  'password': instance.password,
};
