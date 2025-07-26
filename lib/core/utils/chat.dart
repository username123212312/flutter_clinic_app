import 'package:our_flutter_clinic_app/core/models/usermodel.dart';

import '../../features/home/model/chat/chat_participant_model.dart';

String getChatName(
  List<ChatParticipantEntity> participants,
  UserModel currentUser,
) {
  final otherParticipants =
      participants.where((el) => el.userId != currentUser.id).toList();

  if (otherParticipants.isNotEmpty) {
    return '${otherParticipants[0].user.firstName ?? 'No'}'
        ' ${otherParticipants[0].user.lastName ?? 'Name'}';
  }

  return 'N/A';
}
