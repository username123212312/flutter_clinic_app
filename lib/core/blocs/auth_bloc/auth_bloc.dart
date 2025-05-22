import 'package:flutter_clinic_app/core/models/authuser.dart';
import 'package:flutter_clinic_app/core/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../models/usermodel.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<UserAuthenticated>((event, emit) {
      emit(
        AuthState(
          authUser: AuthUser(token: event.token, user: event.user),
          isAuth: true,
        ),
      );
    });
    on<UserReset>(
      (event, emit) =>
          emit(AuthState(authUser: null, token: '', isAuth: false)),
    );
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    try {
      return AuthState(
        authUser: AuthUser.fromJson(json['authUser']),
        isAuth: json['isAuth'],
        token: json['token'],
      );
    } catch (e) {
      eLog(e.toString());

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
      eLog(e);
      return null;
    }
  }
}
