import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/repositories/change_password_repository.dart';

import '../../enums.dart';

part 'change_password_state.dart';
part 'change_password_cubit.freezed.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit({
    required ChangePasswordRepository changePasswordRepository,
  }) : _changePasswordRepository = changePasswordRepository,
       super(ChangePasswordState.initial());

  void reset() {
    emit(ChangePasswordState.initial());
  }

  Future<void> sendEmailOtp(String email, {bool isResend = false}) async {
    emitLoading();
    try {
      final response = await _changePasswordRepository.sendEmailOtp(email);

      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          email: email,
          phone: null,
          status: isResend ? DataStatus.loaded : DataStatus.data,
          message: r.message,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> sendSMSOtp(String phone, {bool isResend = false}) async {
    emitLoading();
    try {
      final response = await _changePasswordRepository.sendSMSOtp(phone);

      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          phone: phone,
          email: null,
          status: isResend ? DataStatus.loaded : DataStatus.data,
          message: r.message,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> verifyEmailOtp(int otp) async {
    emitLoading();
    try {
      final response = await _changePasswordRepository.verifyEmailOtp(
        state.email ?? '',
        otp,
      );

      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          resetToken: r.data,
          status: DataStatus.done,
          message: r.message,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> verifySMSOtp(int otp) async {
    emitLoading();
    try {
      final response = await _changePasswordRepository.verifySMSOtp(
        state.phone ?? '',
        otp,
      );

      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          resetToken: r.data,
          status: DataStatus.done,
          message: r.message,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> emailResetPassword(String password) async {
    emitLoading();
    try {
      final response = await _changePasswordRepository.emailResetPassword(
        state.email ?? '',
        state.resetToken ?? '',
        password,
      );

      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.done,
          message: r.message,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> phoneResetPassword(String password) async {
    emitLoading();
    try {
      final response = await _changePasswordRepository.phoneResetPassword(
        state.phone ?? '',
        state.resetToken ?? '',
        password,
      );

      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.done,
          message: r.message,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  void emitLoading() {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
  }

  final ChangePasswordRepository _changePasswordRepository;
}
