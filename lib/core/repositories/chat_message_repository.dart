import 'package:dio/dio.dart';

import '../../features/home/model/chat/chat_message_model.dart';
import '../consts/app_constants.dart';
import '../models/app_response.dart';
import '../models/requests/create_chat_message_request.dart';
import '../providers/dio_client/dio_client.dart';

class ChatMessageRepository {
  final Dio _dioClient;

  ChatMessageRepository({Dio? dioClient})
    : _dioClient = dioClient ?? DioClient().instance;

  Future<AppResponse<ChatMessageEntity?>> createChatMessage(
    CreateChatMessageRequest request,
    String socketId,
  ) async {
    final response = await _dioClient.post(
      AppConstants.createChatMessage,
      data: request.toJson(),
      options: Options(headers: {'X-Socket-ID': socketId}),
    );

    return AppResponse<ChatMessageEntity?>.fromJson(
      response.data,
      (dynamic json) =>
          response.data['success'] && json != null
              ? ChatMessageEntity.fromJson(json)
              : null,
    );
  }

  Future<AppResponse<List<ChatMessageEntity>>> getChatMessages({
    required int chatId,
    required int page,
  }) async {
    final response = await _dioClient.get(
      AppConstants.getChatMessages,
      queryParameters: {'page': page, 'chat_id': chatId},
    );

    return AppResponse<List<ChatMessageEntity>>.fromJson(
      response.data,
      (dynamic json) =>
          response.data['success'] && json != null
              ? (json as List<dynamic>)
                  .map((e) => ChatMessageEntity.fromJson(e))
                  .toList()
              : [],
    );
  }
}
