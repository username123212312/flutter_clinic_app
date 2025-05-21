part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    AuthUser? authUser,
    String? token,
    @Default(false) bool isAuth,
  }) = _AuthState;
  factory AuthState.initial() {
    return AuthState(isAuth: false, authUser: AuthUser(token: '', user: null));
  }
}
