// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditProfileRequest _$EditProfileRequestFromJson(Map<String, dynamic> json) =>
    _EditProfileRequest(
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EditProfileRequestToJson(_EditProfileRequest instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
