import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums.dart';
import '../../repository/reservation_details_repository.dart';

part 'reminder_state.dart';
part 'reminder_cubit.freezed.dart';

class ReminderCubit extends Cubit<ReminderState> {
  ReminderCubit({
    required ReservationDetailsRepository reservationDetailsRepository,
  }) : _reservationDetailsRepository = reservationDetailsRepository,
       super(ReminderState.initial());
  Future<void> setReminder(int appointmentId, int reminderOffset) async {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    try {
      final response = await _reservationDetailsRepository.setReminder(
        appointmentId,
        reminderOffset,
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

  final ReservationDetailsRepository _reservationDetailsRepository;
}
