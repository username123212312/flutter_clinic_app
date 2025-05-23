import 'package:flutter_clinic_app/core/models/authuser.dart';
import 'package:flutter_clinic_app/core/repositories/auth_repository.dart';
import 'package:flutter_clinic_app/core/utils/utils.dart';
import 'package:flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../models/usermodel.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  AuthBloc({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(AuthState.initial()) {
    on<UserAuthenticated>((event, emit) {
      emit(
        AuthState(
          authUser: AuthUser(token: event.token, user: event.user),
          isAuth: true,
          token: event.token,
        ),
      );
    });
    on<UserReset>(
      (event, emit) =>
          emit(AuthState(authUser: null, token: '', isAuth: false)),
    );
    on<CheckUserAuthState>(_checkAuthState);
  }
  _checkAuthState(CheckUserAuthState event, Emitter emit) async {
    final response = await _authRepository.checkAuthState();
    final newState = switch (response) {
      Left() => AuthState(
        token: null,
        isAuth: false,
        authUser: AuthUser(user: null, token: null),
      ),
      Right(value: final r) => AuthState(
        token: state.token,
        isAuth: true,
        authUser: AuthUser(
          user: r.data?.copyWith(token: state.token),
          token: state.token,
        ),
      ),
    };
    emit(newState);
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    try {
      return AuthState(
        authUser: AuthUser.fromJson(json['authUser'] ?? {}),
        isAuth: json['isAuth'],
        token: json['token'],
      );
    } catch (e) {
      eLog('AuthBloc error $e');

      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    try {
      return {
        'authUser': state.authUser?.toJson(),
        'isAuth': state.isAuth,
        'token': state.token,
      };
    } catch (e) {
      eLog('AuthBloc error $e');
    }
    return null;
  }

  final AuthRepository _authRepository;
}
