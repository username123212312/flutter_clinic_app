import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums.dart';
import '../../../../core/utils/utils.dart';
import '../../model/appointment_model.dart';
import '../../repository/reservation_details_repository.dart';

part 'reservation_details_state.dart';
part 'reservation_details_cubit.freezed.dart';

class ReservationDetailsCubit extends Cubit<ReservationDetailsState> {
  ReservationDetailsCubit({
    required this.appointmentId,
    required ReservationDetailsRepository reservationDetailsRepository,
  }) : _reservationDetailsRepository = reservationDetailsRepository,
       super(ReservationDetailsState.initial()) {
    fetchAppointment();
  }

  Future<void> fetchAppointment() async {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    try {
      final response = await _reservationDetailsRepository.fetchAppointment(
        appointmentId,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          appointment: r.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> createReservationPaymentIntent() async {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    try {
      final response = await _reservationDetailsRepository
          .createReservationPaymentIntent(appointmentId);
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          paymentIntentId: r.data?['paymentIntentId'],
          clientID: r.data?['clientSecret'],
        ),
      };
      emit(newState);
      if (state.clientID != null) {
        final completed = await handlePayment(state.clientID!);
        if (completed) {
          await confirmReservationPayment(
            appointmentId,
            state.paymentIntentId!,
          );
        }
      }
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> confirmReservationPayment(
    int appointmentId,
    String paymentIntentId,
  ) async {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    try {
      final response = await _reservationDetailsRepository
          .confirmReservationPayment(appointmentId, paymentIntentId);
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

  final ReservationDetailsRepository _reservationDetailsRepository;
  final int appointmentId;
}
