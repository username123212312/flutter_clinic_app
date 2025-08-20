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
        // emit(state.copyWith(status: DataStatus.loading));
      }
    });
    on<AppointmentsRefreshed>((event, emit) {
      emit(
        state.copyWith(
          hasMore: true,
          currentPage: 0,
          status: DataStatus.loading,
        ),
      );
      add(AppointmentsFetched());
    });
    on<AppointmentsFetched>(_fetchAppointments);
    on<AppointmentStatusChanged>((event, emit) {
      emit(state.copyWith(appointmentStatus: event.appointmentStatus));
      add(AppointmentsRefreshed());
    });
    on<AppointmentTypeChanged>((event, emit) {
      emit(state.copyWith(appointmentType: event.appointmentType));
      add(AppointmentsRefreshed());
    });
    on<AppointmentCanceled>(_removeAppointment);
  }

  FutureOr<void> _fetchAppointments(
    AppointmentsFetched event,
    Emitter<AppointmentsState> emit,
  ) async {
    try {
      if (state.currentPage == 0) {
        emit(state.copyWith(status: DataStatus.loading));
      } else {
        emit(state.copyWith(status: DataStatus.loadingMore));
      }
      if (state.hasMore) {
        final newPage = state.currentPage + 1;
        final currentList = List.of(state.appointments);
        final response = await _appointmentsRepository.fetchAllAppointments(
          state.appointmentStatus,
          state.appointmentType,
          page: newPage,
        );
        final newState = switch (response) {
          Left(value: final l) => state.copyWith(
            status: DataStatus.error,
            statusMessage: l.message,
          ),
          Right(value: final r) => state.copyWith(
            appointments:
                r.data == null
                    ? state.appointments
                    : newPage == 1
                    ? r.data!
                    : [...currentList, ...r.data!],
            hasMore: r.success,
            currentPage: newPage,
            status: DataStatus.data,
            statusMessage: r.message,
          ),
        };
        emit(newState);
      }
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
      if (state.status.isData) {
        add(AppointmentsRefreshed());
      }
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error));
    }
  }

  final AppointmentsRepository _appointmentsRepository;
}
