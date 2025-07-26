// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_user_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompleteUserInfoRequestImpl _$$CompleteUserInfoRequestImplFromJson(
  Map<String, dynamic> json,
) => _$CompleteUserInfoRequestImpl(
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  birthDate:
      json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
  bloodType: json['blood_type'] as String?,
  gender: json['gender'] as String?,
  address: json['address'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
);

Map<String, dynamic> _$$CompleteUserInfoRequestImplToJson(
  _$CompleteUserInfoRequestImpl instance,
) => <String, dynamic>{
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'birthDate': instance.birthDate?.toIso8601String(),
  'blood_type': instance.bloodType,
  'gender': instance.gender,
  'address': instance.address,
  'email': instance.email,
  'phone': instance.phone,
};
