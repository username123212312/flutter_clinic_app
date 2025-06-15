// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      lastName: json['last_name'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      bloodType: json['blood_type'] as String?,
      firstName: json['first_name'] as String?,
      id: (json['id'] as num?)?.toInt(),
      address: json['address'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      token: json['token'] as String?,
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']) ?? Role.patient,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'last_name': instance.lastName,
      'age': instance.age,
      'gender': instance.gender,
      'blood_type': instance.bloodType,
      'first_name': instance.firstName,
      'id': instance.id,
      'address': instance.address,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'token': instance.token,
      'role': _$RoleEnumMap[instance.role],
    };

const _$RoleEnumMap = {
  Role.doctor: 'doctor',
  Role.labtech: 'labtech',
  Role.patient: 'patient',
  Role.admin: 'admin',
};
