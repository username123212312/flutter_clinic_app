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
  const factory UserEvent.userLoggedInWithGoogle() = UserLoggedInWithGoogle;
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
  const factory UserEvent.allChildrenFetched() = AllChildrenFetched;
  const factory UserEvent.childAdded({
    required CompleteUserInfoRequest request,
  }) = ChildAdded;
  const factory UserEvent.childRemoved({required int childId}) = ChildRemoved;

  const factory UserEvent.accountSwitched({int? childId}) = AccountSwitched;
  const factory UserEvent.profileFetched() = ProfileFetched;
  const factory UserEvent.doctorProfileModified({
    required ModifyDoctorInfoRequest request,
  }) = DoctorProfileModified;
  const factory UserEvent.sendFcmToken() = FCMTokenSent;
  const factory UserEvent.deleteFromSchedule({required int scheduleId}) =
      DeleteFromSchedule;
}
