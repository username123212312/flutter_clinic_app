import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';

import '../../../../core/utils/formatting.dart';

part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@freezed
class ChatMessageEntity with _$ChatMessageEntity {
  const ChatMessageEntity._();

  factory ChatMessageEntity({
    required int id,
    @JsonKey(name: "chat_id") required int chatId,
    @JsonKey(name: "user_id") required int userId,
    required String message,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
    required UserModel user,
  }) = _ChatMessageEntity;

  factory ChatMessageEntity.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageEntityFromJson(json);

  ChatMessage get toChatMessage {
    return ChatMessage(
      user: user.toChatUser,
      text: message,
      createdAt: parseDateTime(createdAt),
    );
  }
}
