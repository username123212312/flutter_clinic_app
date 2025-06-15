import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums.dart';
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

  final ReservationDetailsRepository _reservationDetailsRepository;
  final int appointmentId;
}
