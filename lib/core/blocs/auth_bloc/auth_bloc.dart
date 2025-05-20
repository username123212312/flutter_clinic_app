import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/core/models/authuser.dart';
import 'package:flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:flutter_clinic_app/features/auth/repository/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/usermodel.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<UserModified>((event, emit) {
      emit(AuthState.modified(user: event.user));
    });
  }
}
