import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';

import '../../../../../core/utils/chat.dart';
import '../../../../../core/utils/formatting.dart';
import '../../../model/chat/chat_model.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({
    super.key,
    required this.item,
    required this.currentUser,
    required this.onPressed,
  });

  final ChatEntity item;
  final UserModel currentUser;
  final void Function(ChatEntity) onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.account_circle,
        size: 50.0,
        color: Colors.black,
      ),
      title: Text(
        item.name ?? getChatName(item.participants, currentUser),
        style: Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 14),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              item.lastMessage?.message ?? "...",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(fontSize: 12),
            ),
          ),
          Text(
            utcToLocal(item.updatedAt),
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.copyWith(fontSize: 10),
          ),
        ],
      ),
      onTap: () => onPressed(item),
    );
  }
}
