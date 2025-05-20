part of 'user_bloc.dart';

@freezed
sealed class UserState with _$UserState {
  const factory UserState({required UserModel? user}) = _UserState;

  factory UserState.initial() {
    return UserState(user: null);
  }
  const factory UserState.loading() = _UserLoading;
  factory UserState.modified({required UserModel user}) {
    return UserState(user: user);
  }
}
