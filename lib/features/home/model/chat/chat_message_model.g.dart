// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageEntityImpl _$$ChatMessageEntityImplFromJson(
  Map<String, dynamic> json,
) => _$ChatMessageEntityImpl(
  id: (json['id'] as num).toInt(),
  chatId: (json['chat_id'] as num).toInt(),
  userId: (json['user_id'] as num).toInt(),
  message: json['message'] as String,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
  user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ChatMessageEntityImplToJson(
  _$ChatMessageEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'chat_id': instance.chatId,
  'user_id': instance.userId,
  'message': instance.message,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'user': instance.user,
};
