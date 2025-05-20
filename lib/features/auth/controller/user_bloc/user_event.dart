part of 'user_bloc.dart';

@freezed
sealed class UserEvent with _$UserEvent {
  const factory UserEvent.userLoggedIn({required UserModel user}) =
      _UserLoggedIn;
}
