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
  const factory UserEvent.userLoggedOut() = UserLoggedOut;
  const factory UserEvent.userCompletedProfileData({required UserModel user}) =
      UserCompletedProfileData;
  const factory UserEvent.userModifiedProfileData({required UserModel user}) =
      UserModifiedProfileData;
  const factory UserEvent.userModifiedPassword({
    required String newPassword,
    required String oldPassword,
  }) = UserModifiedPassword;
}
