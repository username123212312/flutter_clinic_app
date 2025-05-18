part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    required bool isAuthenticated,
    required String? token,
  }) = _AuthState;
  factory AuthState.initial() {
    return const AuthState(isAuthenticated: false, token: '');
  }
  factory AuthState.authenticated({required String token}) {
    return AuthState(isAuthenticated: true, token: token);
  }
}
