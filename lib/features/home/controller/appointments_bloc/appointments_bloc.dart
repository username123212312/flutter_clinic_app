import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';

import '../../repository/appointments_repository.dart';

part 'appointments_event.dart';
part 'appointments_state.dart';
part 'appointments_bloc.freezed.dart';

class AppointmentsBloc extends Bloc<AppointmentsEvent, AppointmentsState> {
  AppointmentsBloc({required AppointmentsRepository appointmentsRepository})
    : _appointmentsRepository = appointmentsRepository,
      super(AppointmentsState.initial()) {
    on<AppointmentsEvent>((event, emit) {
      if (event is! AppointmentStatusChanged) {
        emit(state.copyWith(status: DataStatus.loading));
      }
    });
    on<AppointmentsFetched>(_fetchAppointments);
    on<AppointmentStatusChanged>((event, emit) {
      emit(state.copyWith(appointmentStatus: event.appointmentStatus));
      add(AppointmentsEvent.appointmentsFetched());
    });
    on<AppointmentTypeChanged>((event, emit) {
      emit(state.copyWith(appointmentType: event.appointmentType));
      add(AppointmentsEvent.appointmentsFetched());
    });
    on<AppointmentCanceled>(_removeAppointment);
  }

  FutureOr<void> _fetchAppointments(
    AppointmentsFetched event,
    Emitter<AppointmentsState> emit,
  ) async {
    try {
      final response = await _appointmentsRepository.fetchAllAppointments(
        state.appointmentStatus,
        state.appointmentType,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          statusMessage: l.message,
        ),
        Right(value: final r) => state.copyWith(
          appointments: r.data,
          status: DataStatus.data,
          statusMessage: r.message,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error));
    }
  }

  Future<void> _removeAppointment(
    AppointmentCanceled event,
    Emitter<AppointmentsState> emit,
  ) async {
    try {
      final response = await _appointmentsRepository.removeAppointment(
        event.reservationId,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          statusMessage: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          statusMessage: r.message,
        ),
      };
      emit(newState);
      if (state.status!.isData) {
        add(AppointmentsFetched());
      }
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error));
    }
  }

  final AppointmentsRepository _appointmentsRepository;
}
