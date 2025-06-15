// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModifyPasswordRequestImpl _$$ModifyPasswordRequestImplFromJson(
  Map<String, dynamic> json,
) => _$ModifyPasswordRequestImpl(
  oldPassword: json['oldPassword'] as String,
  newPassword: json['newPassword'] as String,
);

Map<String, dynamic> _$$ModifyPasswordRequestImplToJson(
  _$ModifyPasswordRequestImpl instance,
) => <String, dynamic>{
  'oldPassword': instance.oldPassword,
  'newPassword': instance.newPassword,
};
