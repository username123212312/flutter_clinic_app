// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_chat_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateChatRequestImpl _$$CreateChatRequestImplFromJson(
  Map<String, dynamic> json,
) => _$CreateChatRequestImpl(
  userId: (json['user_id'] as num).toInt(),
  isPrivate: (json['is_private'] as num?)?.toInt() ?? 1,
  name: json['name'] as String?,
);

Map<String, dynamic> _$$CreateChatRequestImplToJson(
  _$CreateChatRequestImpl instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'is_private': instance.isPrivate,
  'name': instance.name,
};
