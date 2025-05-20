part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.userModified({required UserModel user}) =
      UserModified;
  const factory AuthEvent.userReset() = UserReset;
}
