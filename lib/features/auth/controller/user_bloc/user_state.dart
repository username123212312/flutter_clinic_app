part of 'user_bloc.dart';

@freezed
sealed class UserState with _$UserState {
  const factory UserState.initial({
    required String email,
    required String password,
    required Role role,
  }) = _UserInitial;
  const factory UserState.modified({
    required String email,
    required String password,
    required Role role,
  }) = _UserModified;
}
