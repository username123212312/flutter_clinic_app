import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';

import '../../../../core/utils/utils.dart';
import '../../repository/payment_repository.dart';

part 'my_wallet_state.dart';
part 'my_wallet_cubit.freezed.dart';

class MyWalletCubit extends Cubit<MyWalletState> {
  MyWalletCubit({required PaymentRepository paymentRepo})
    : _paymentRepository = paymentRepo,
      super(MyWalletState.initial()) {
    fetchWalletRange();
  }

  Future<void> fetchWalletRange() async {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    try {
      final response = await _paymentRepository.showWalletRange();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          walletRange: r.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> createPaymentIntent(double amount) async {
    emit(
      state.copyWith(
        clientSecret: null,
        paymentIntentId: null,
        message: 'Loading',
        status: DataStatus.loading,
      ),
    );
    try {
      final response = await _paymentRepository.createPaymentIntent(amount);
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          clientSecret: r.data?['clientSecret'],
          paymentIntentId: r.data?['paymentIntentId'],
        ),
      };

      emit(newState);
      if (state.clientSecret != null) {
        final completed = await handlePayment(state.clientSecret!);

        if (completed) {
          await confirmWalletRecharge();
        }
      }
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> confirmWalletRecharge() async {
    emit(state.copyWith(message: 'Loading', status: DataStatus.loading));
    try {
      final response = await _paymentRepository.confirmWalletRecharge(
        state.paymentIntentId!,
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

  final PaymentRepository _paymentRepository;
}
