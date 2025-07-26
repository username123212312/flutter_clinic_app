// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_chat_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateChatMessageRequestImpl _$$CreateChatMessageRequestImplFromJson(
  Map<String, dynamic> json,
) => _$CreateChatMessageRequestImpl(
  chatId: (json['chat_id'] as num).toInt(),
  message: json['message'] as String,
);

Map<String, dynamic> _$$CreateChatMessageRequestImplToJson(
  _$CreateChatMessageRequestImpl instance,
) => <String, dynamic>{'chat_id': instance.chatId, 'message': instance.message};
