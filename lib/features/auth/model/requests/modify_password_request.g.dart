// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModifyPasswordRequest _$ModifyPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    _ModifyPasswordRequest(
      oldPassword: json['oldPassword'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$ModifyPasswordRequestToJson(
        _ModifyPasswordRequest instance) =>
    <String, dynamic>{
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
    };
