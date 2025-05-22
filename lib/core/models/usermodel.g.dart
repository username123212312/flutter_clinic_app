// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? 0,
      token: json['token'] as String? ?? '',
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']) ?? Role.patient,
    );

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'id': instance.id,
      'token': instance.token,
      'role': _$RoleEnumMap[instance.role],
    };

const _$RoleEnumMap = {
  Role.doctor: 'doctor',
  Role.patient: 'patient',
};
