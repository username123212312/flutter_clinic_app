part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    AuthUser? authUser,
    String? token,
    @Default(false) bool? isAuth,
    required DataStatus status,
    required String statusMessage,
  }) = _AuthState;
  factory AuthState.initial() {
    return AuthState(
      status: DataStatus.noData,
      statusMessage: 'No data',
      isAuth: false,
      authUser: AuthUser(token: '', user: null),
    );
  }
}
