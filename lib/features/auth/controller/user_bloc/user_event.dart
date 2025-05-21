part of 'user_bloc.dart';

@freezed
sealed class UserEvent with _$UserEvent {
  const factory UserEvent.userLoggedInWithEmail({
    required String email,
    required String password,
  }) = UserLoggedInWithEmail;
  const factory UserEvent.userLoggedInWithPhone({
    required String phone,
    required String password,
  }) = UserLoggedInWithPhone;
  const factory UserEvent.userRegisteredWithEmail({required String password}) =
      UserRegisteredWithEmail;
  const factory UserEvent.userRegisteredWithPhone({required String password}) =
      UserRegisteredWithPhone;
  const factory UserEvent.userModified({required UserModel? user}) =
      UserModified;
}
