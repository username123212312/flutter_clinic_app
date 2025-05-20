part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({AuthUser? authUser, String? token, bool? isAuth}) =
      _AuthState;
  factory AuthState.initial() {
    return AuthState(authUser: AuthUser(isAuth: false, token: '', user: null));
  }
  factory AuthState.modified({required UserModel user}) {
    return AuthState(authUser: AuthUser(isAuth: false, token: '', user: user));
  }
  factory AuthState.authenticated({
    required UserModel user,
    required String token,
  }) {
    return AuthState(
      authUser: AuthUser(isAuth: true, token: token, user: user),
    );
  }
}
