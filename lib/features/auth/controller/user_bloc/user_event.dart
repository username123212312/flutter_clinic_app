part of 'user_bloc.dart';

@freezed
sealed class UserEvent with _$UserEvent {
  const factory UserEvent.userModified({
    String? email,
    String? password,
    Role? role,
  }) = UserModified;
  const factory UserEvent.userReset() = UserReset;
}
