import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_clinic_app/features/auth/model/requests/auth_requests.dart';
import 'package:flutter_clinic_app/features/auth/repository/user_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/usermodel.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required AuthBloc authBloc, required UserRepository userRepository})
    : _authBloc = authBloc,
      _userRepository = userRepository,
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
    on<UserLoggedOut>(_logUserOut);
    on<UserCompletedProfileData>(_completeUserProfileData);
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
    final response = await _userRepository.registerPatient(request);
    final newState = switch (response) {
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
    if (!state.status.isError) {
      _authBloc.add(
        UserAuthenticated(user: state.user!, token: state.user!.token!),
      );
    }
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
    final response = await _userRepository.logUserIn(request);
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

    if (!state.status.isError) {
      if (state.user != null) {
        _authBloc.add(
          UserAuthenticated(user: state.user!, token: state.user!.token!),
        );
      }
    }
  }

  Future<void> _logUserOut(UserEvent event, Emitter<UserState> emit) async {
    final response = await _userRepository.logUserOut();
    final newState = switch (response) {
      Left(value: final l) => UserState(
        user: state.user,
        status: UserStatus.error,
        statusMessage: l.message,
      ),
      Right(value: final r) => UserState(
        status: UserStatus.noUser,
        user: null,
        statusMessage: r.message,
      ),
    };
    emit(newState);
    if (!newState.status.isError) {
      _authBloc.add(UserReset());
    }
  }

  Future<void> _completeUserProfileData(
    UserCompletedProfileData event,
    Emitter<UserState> emit,
  ) async {
    late final CompleteUserInfoRequest request;
    request = CompleteUserInfoRequest(
      firstName: event.user.firstName,
      lastName: event.user.lastName,
      age: event.user.age,
      bloodType: event.user.bloodType,
      gender: event.user.gender,
      address: event.user.address,
    );
    final response = await _userRepository.completeUserInfo(request);
    final newState = switch (response) {
      Left(value: final l) => UserState(
        user: state.user,
        status: UserStatus.error,
        statusMessage: l.message,
      ),
      Right(value: final r) => UserState(
        user: state.user!.copyWith(
          firstName: r.data?.firstName,
          lastName: r.data?.lastName,
          age: r.data?.age,
          bloodType: r.data?.bloodType,
          gender: r.data?.gender,
          address: r.data?.address,
        ),
        statusMessage: r.message,
        status: UserStatus.modified,
      ),
    };
    emit(newState);
    if (!newState.status.isError) {
      _authBloc.add(
        UserAuthenticated(user: state.user!, token: state.user!.token!),
      );
    }
  }

  final AuthBloc _authBloc;
  final UserRepository _userRepository;
}
