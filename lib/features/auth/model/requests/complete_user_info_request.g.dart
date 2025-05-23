// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_user_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompleteUserInfoRequest _$CompleteUserInfoRequestFromJson(
        Map<String, dynamic> json) =>
    _CompleteUserInfoRequest(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      bloodType: json['blood_type'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$CompleteUserInfoRequestToJson(
        _CompleteUserInfoRequest instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'age': instance.age,
      'gender': instance.gender,
      'blood_type': instance.bloodType,
      'address': instance.address,
    };
