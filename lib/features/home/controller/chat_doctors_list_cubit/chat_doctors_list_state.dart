part of 'chat_doctors_list_cubit.dart';

@freezed
class ChatDoctorsListState with _$ChatDoctorsListState {
  const factory ChatDoctorsListState({
    required DataStatus status,
    required String message,
    required List<UserModel> doctors,
  }) = _ChatDoctorsListState;
  factory ChatDoctorsListState.initial() {
    return ChatDoctorsListState(
      status: DataStatus.noData,
      doctors: [],
      message: 'No data',
    );
  }
}
