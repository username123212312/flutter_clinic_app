// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_patient_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LogPatientInRequest _$LogPatientInRequestFromJson(Map<String, dynamic> json) =>
    _LogPatientInRequest(
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LogPatientInRequestToJson(
        _LogPatientInRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
    };
