import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

import '../../../features/home/model/chat/chat_message_model.dart';
import '../../../features/home/model/chat/chat_model.dart';
import '../../blocs/chat_bloc/chat_bloc.dart';
import '../../utils/utils.dart';
import 'pusher_client.dart';

// Updated methods to work with PusherService
void listenChatChannel(ChatEntity chat, BuildContext context) async {
  try {
    await PusherService.subscribeToChannel(
      'private-chat.${chat.id}',
      onEvent: (event) {
        log('message');
        wLog(event);
        if (event.eventName == 'message.sent') {
          if (event.data != null) {
            wLog(jsonDecode(event.data!));
            _handleNewMessage(jsonDecode(event.data!), context);
          }
        }
      },

      onSubscriptionError: (error, _, _) {
        eLog('Failed to subscribe to private-chat.${chat.id}: $error');
      },
    );
  } catch (err) {
    eLog('Error subscribing to chat channel: $err');
  }
}

void leaveChatChannel(ChatEntity chat) async {
  try {
    await PusherService.unsubscribeFromChannel('private-chat.${chat.id}');
    wLog('Left chat channel: ${chat.id}');
  } catch (err) {
    eLog('Error leaving chat channel: $err');
  }
}

void _handleNewMessage(Map<String, dynamic> data, BuildContext context) {
  final chatBloc = context.read<ChatBloc>();
  final selectedChat = chatBloc.state.selectedChat!;
  if (selectedChat.id == data['chat_id']) {
    final chatMessage = ChatMessageEntity.fromJson(data['message']);
    chatBloc.add(AddNewMessage(chatMessage));
  }
}
