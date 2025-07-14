import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/models/authuser.dart';
import 'package:our_flutter_clinic_app/core/repositories/auth_repository.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
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
    on<AuthEvent>((event, emit) {
      emit(
        state.copyWith(status: DataStatus.loading, statusMessage: 'Loading'),
      );
    });
    on<UserAuthenticated>((event, emit) async {
      emit(
        state.copyWith(
          status: DataStatus.loading,
          statusMessage: 'user',
          authUser: AuthUser(token: event.token, user: event.user),
          isAuth: false,
          token: event.token,
        ),
      );
      final response = await _authRepository.sendFCMToken();
      if (response.isRight()) {
        emit(state.copyWith(isAuth: true, status: DataStatus.done));
      }
    });
    on<UserReset>(
      (event, emit) => emit(
        AuthState(
          status: DataStatus.noData,
          statusMessage: 'No user',
          authUser: null,
          token: '',
          isAuth: false,
        ),
      ),
    );
    on<UserModified>((event, emit) async {
      emit(
        state.copyWith(
          status: DataStatus.data,
          statusMessage: 'user',
          authUser: state.authUser?.copyWith(user: event.user),
        ),
      );
    });
    on<CheckUserAuthState>(_checkAuthState);
  }
  _checkAuthState(CheckUserAuthState event, Emitter emit) async {
    try {
      emit(state.copyWith(isAuth: false));
      final response = await _authRepository.checkAuthState();
      final newState = switch (response) {
        Left(value: final l) => AuthState(
          status: DataStatus.error,
          statusMessage: l.message,
        ),
        Right(value: final r) => AuthState(
          status: DataStatus.data,
          statusMessage: 'user',
          token: state.token,
          isAuth: true,
          authUser: AuthUser(
            user: r.data?.copyWith(token: state.token),
            token: state.token,
          ),
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(status: DataStatus.error, statusMessage: e.toString()),
      );
    }
  }

  @override
  AuthState? fromJson(Map<String, dynamic>? json) {
    try {
      return AuthState(
        authUser: AuthUser.fromJson(json?['authUser'] ?? {}),
        isAuth: json?['isAuth'],
        token: json?['token'],
        status: DataStatus.values.firstWhere(
          (status) => status.name == json?['status'],
        ),
        statusMessage: json?['statusMessage'],
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
        'status': state.status.name,
        'statusMessage': state.statusMessage,
      };
    } catch (e) {
      eLog('AuthBloc error $e');
    }
    return null;
  }

  final AuthRepository _authRepository;
}
