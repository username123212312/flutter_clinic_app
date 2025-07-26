import 'dart:convert';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

import '../../../../../core/blocs/auth_bloc/auth_bloc.dart';
import '../../../../../core/blocs/chat_bloc/chat_bloc.dart';
import '../../../../../core/services/pusher_service/pusher_client.dart';
import '../../../../../core/services/pusher_service/pusher_functions.dart';
import '../../../../../core/utils/chat.dart';
import '../../../../../core/widgets/start_up_container.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  static const routeName = 'chat';

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final chatBloc = context.read<ChatBloc>();
    final authBloc = context.read<AuthBloc>();
    return StartUpContainer(
      onInit: () {
        chatBloc.add(const GetChatMessage());
        if (chatBloc.state.selectedChat != null) {
          listenChatChannel(chatBloc.state.selectedChat!, context);
        }
      },

      onDisposed: () {
        leaveChatChannel(chatBloc.state.selectedChat!);
        chatBloc.add(const ChatReset());
        chatBloc.add(const ChatStarted());
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            // IconButton(
            //   iconSize: 18,
            //   onPressed: () {
            //     chatBloc.add(
            //       UserSelected(
            //         chatBloc.state.selectedChat!.participants.last.user,
            //       ),
            //     );

            //     chatBloc.add(const GetChatMessage());
            //   },
            //   icon: Icon(FontAwesomeIcons.arrowsRotate),
            // ),
          ],
          centerTitle: false,
          title: BlocConsumer<ChatBloc, ChatState>(
            listener: (context, state) {
              if (state.selectedChat != null) {
                listenChatChannel(state.selectedChat!, context);
              }
            },
            listenWhen:
                (previous, current) =>
                    previous.selectedChat != current.selectedChat,
            builder: (context, state) {
              final chat = state.selectedChat;
              return Text(
                (chat == null || authBloc.state.authUser == null)
                    ? "N/A"
                    : getChatName(
                      chat.participants,
                      authBloc.state.authUser!.user ??
                          UserModel(firstName: 'No', lastName: 'Name'),
                    ),
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 17),
              );
            },
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              repeat: ImageRepeat.repeat,
              image: AssetImage('assets/images/background-new.webp'),
            ),
          ),
          child: BlocBuilder<ChatBloc, ChatState>(
            builder: (context, state) {
              return DashChat(
                inputOptions: InputOptions(
                  inputTextStyle: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 18),
                  sendButtonBuilder: (send) {
                    return IconButton(
                      color: Color.fromRGBO(45, 132, 251, 1),
                      onPressed: send,
                      icon: Icon(Icons.send),
                    );
                  },
                  inputDecoration: InputDecoration(
                    isDense: true,
                    fillColor: Color.fromRGBO(217, 217, 217, 1),
                    filled: true,
                    contentPadding: const EdgeInsets.only(
                      left: 18,
                      top: 10,
                      bottom: 10,
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
                currentUser: authBloc.state.authUser!.user!.toChatUser,
                onSend: (message) async {
                  final socketId = await PusherService.socketId;
                  if (socketId != null) {
                    chatBloc.add(
                      SendMessage(
                        state.selectedChat!.id,
                        message,
                        socketId: socketId,
                      ),
                    );
                  }
                },
                messageOptions: MessageOptions(
                  avatarBuilder: (p0, onPressAvatar, onLongPressAvatar) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/Doctor Image (2).png',
                        ),
                        radius: 18,
                      ),
                    );
                  },
                  containerColor: Color.fromRGBO(217, 217, 217, 1),
                  textColor: Colors.black,
                  currentUserContainerColor: Color.fromRGBO(45, 132, 251, 1),
                  currentUserTextColor: Color(0xfffbf665),
                  currentUserTimeTextColor: Color.fromRGBO(73, 0, 100, 1),
                  messagePadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                  spaceWhenAvatarIsHidden: 6,
                ),
                messages: state.uiChatMessages,
                messageListOptions: MessageListOptions(
                  onLoadEarlier: () async {
                    chatBloc.add(const LoadMoreChatMessage());

                    /// Loads more messages
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
