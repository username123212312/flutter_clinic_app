// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authuser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthUser _$AuthUserFromJson(Map<String, dynamic> json) => _AuthUser(
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      isAuth: json['isAuth'] as bool,
      token: json['token'] as String,
    );

Map<String, dynamic> _$AuthUserToJson(_AuthUser instance) => <String, dynamic>{
      'user': instance.user,
      'isAuth': instance.isAuth,
      'token': instance.token,
    };
