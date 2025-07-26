import 'package:dio/dio.dart';

import '../../features/home/model/chat/chat_model.dart';
import '../consts/app_constants.dart';
import '../models/app_response.dart';
import '../models/requests/create_chat_request.dart';
import '../providers/dio_client/dio_client.dart';

class ChatRepository {
  final Dio _dioClient;

  ChatRepository({Dio? dioClient})
    : _dioClient = dioClient ?? DioClient().instance;

  Future<AppResponse<ChatEntity?>> createChat(CreateChatRequest request) async {
    final response = await _dioClient.post(
      AppConstants.createChat,
      data: request.toJson(),
    );

    return AppResponse<ChatEntity?>.fromJson(
      response.data,
      (dynamic json) =>
          response.data['success'] && json != null
              ? ChatEntity.fromJson(json)
              : null,
    );
  }

  Future<AppResponse<List<ChatEntity>>> getChats() async {
    final response = await _dioClient.get(AppConstants.getChats);

    return AppResponse<List<ChatEntity>>.fromJson(
      response.data,
      (dynamic json) =>
          response.data['success'] && json != null
              ? (json as List<dynamic>)
                  .map((e) => ChatEntity.fromJson(e))
                  .toList()
              : [],
    );
  }

  Future<AppResponse<ChatEntity?>> getSingleChat(int chatId) async {
    final response = await _dioClient.get(
      "${AppConstants.getSingleChat}$chatId",
    );

    return AppResponse<ChatEntity?>.fromJson(
      response.data,
      (dynamic json) =>
          response.data['success'] && json != null
              ? ChatEntity.fromJson(json)
              : null,
    );
  }
}
