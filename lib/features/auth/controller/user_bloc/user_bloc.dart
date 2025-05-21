import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_clinic_app/core/utils/logger.dart';
import 'package:flutter_clinic_app/features/auth/model/requests/auth_requests.dart';
import 'package:flutter_clinic_app/features/auth/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/usermodel.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required AuthBloc authBloc, required AuthRepository authRepository})
    : _authBloc = authBloc,
      _authRepository = authRepository,
      super(UserState.initial()) {
    on<UserEvent>((event, emit) async {
      emit(
        UserState(
          user: state.user,
          status: UserStatus.loading,
          statusMessage: 'loading',
        ),
      );
    });
    on<UserModified>(
      (event, emit) =>
          emit(state.copyWith(user: event.user, status: UserStatus.modified)),
    );
    on<UserLoggedInWithEmail>(_logUserIn);
    on<UserLoggedInWithPhone>(_logUserIn);
    on<UserRegisteredWithEmail>(_registerUser);
    on<UserRegisteredWithPhone>(_registerUser);
  }
  Future<void> _registerUser(UserEvent event, Emitter<UserState> emit) async {
    (state as _UserState).user;
    late final RegisterPatientRequest request;
    if (event is UserRegisteredWithEmail) {
      request = RegisterPatientRequest(
        email: state.user?.email,
        password: event.password,
        phone: null,
        passwordConfirmation: event.password,
      );
    } else if (event is UserRegisteredWithPhone) {
      request = RegisterPatientRequest(
        email: null,
        password: event.password,
        phone: state.user!.phone,
        passwordConfirmation: event.password,
      );
    }
    final newState = switch (await _authRepository.registerPatient(request)) {
      Right(value: final r) => UserState(
        user: r.data ?? state.user,
        status: UserStatus.modified,
        statusMessage: r.statusMessage,
      ),
      Left(value: final l) => UserState(
        user: state.user,
        status: UserStatus.error,
        statusMessage: l.message,
      ),
    };
    emit(newState);
  }

  Future<void> _logUserIn(UserEvent event, Emitter<UserState> emit) async {
    late final LogPatientInRequest request;
    if (event is UserLoggedInWithEmail) {
      request = LogPatientInRequest(
        email: event.email,
        password: event.password,
        phone: null,
      );
    } else if (event is UserLoggedInWithPhone) {
      request = LogPatientInRequest(
        email: null,
        password: event.password,
        phone: event.phone,
      );
    }
    final response = await _authRepository.logUserIn(request);
    log(response.toString());
    final newState = switch (response) {
      Left(value: final l) => UserState(
        user: state.user,
        status: UserStatus.error,
        statusMessage: l.message,
      ),
      Right(value: final r) => UserState(
        user: r.data,
        status: UserStatus.modified,
        statusMessage: r.message,
      ),
    };
    emit(newState);
  }

  final AuthBloc _authBloc;
  final AuthRepository _authRepository;
}
