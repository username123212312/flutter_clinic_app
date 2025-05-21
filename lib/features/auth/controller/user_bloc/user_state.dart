part of 'user_bloc.dart';

enum UserStatus {
  loading,
  error,
  modified,
  noUser;

  bool get isLoading => this == UserStatus.loading;
  bool get isError => this == UserStatus.error;
  bool get isModified => this == UserStatus.modified;
  bool get isNoUser => this == UserStatus.noUser;
}

@freezed
sealed class UserState with _$UserState {
  const factory UserState({
    required UserModel? user,
    required UserStatus status,
    @Default('Some error occurred') String statusMessage,
  }) = _UserState;

  factory UserState.initial() {
    return UserState(user: null, status: UserStatus.noUser);
  }
}
