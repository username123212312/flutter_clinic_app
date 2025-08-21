import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';

import '../../../../core/enums.dart';
import '../../repository/doctor_appointments_repository.dart';

part 'doctor_appointments_event.dart';
part 'doctor_appointments_state.dart';
part 'doctor_appointments_bloc.freezed.dart';

class DoctorAppointmentsBloc
    extends Bloc<DoctorAppointmentsEvent, DoctorAppointmentsState> {
  DoctorAppointmentsBloc({
    required DoctorAppointmentsRepository doctorAppointmentsRepository,
  }) : _doctorAppointmentsRepository = doctorAppointmentsRepository,
       super(DoctorAppointmentsState.initial()) {
    on<DoctorAppointmentsEvent>((event, emit) {
      if (event is! ChangeAppointmentStatus &&
          event is! ChangeAppointmentType) {
        // emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
      }
    });
    on<ResetAppointments>((event, emit) {
      emit(
        state.copyWith(
          doctorAppointmentStatus: DoctorAppointmentStatus.pending,
          doctorAppointmentType: DoctorAppointmentType.firstTime,
          currentPage: 0,
          hasMore: true,
        ),
      );
      add(FetchAppointmentsByType());
    });
    on<ChangeAppointmentStatus>((event, emit) {
      emit(
        state.copyWith(
          doctorAppointmentStatus: event.status,
          currentPage: 0,
          hasMore: true,
        ),
      );
      add(FetchAppointmentsByType());
    });
    on<ChangeAppointmentMonth>((event, emit) {
      emit(
        state.copyWith(
          currentMonth: event.month,
          currentPage: 0,
          hasMore: true,
        ),
      );
      add(FetchAppointmentsByType());
    });
    on<ChangeAppointmentType>((event, emit) {
      emit(
        state.copyWith(
          doctorAppointmentType: event.type,
          currentPage: 0,
          hasMore: true,
        ),
      );
      add(FetchAppointmentsByType());
    });

    on<CancelAppointment>(_cancelAppointment);

    on<FetchAppointmentsByType>(_fetchAppointmentsByType);
  }
  Future<void> _fetchAppointmentsByType(
    FetchAppointmentsByType event,
    Emitter<DoctorAppointmentsState> emit,
  ) async {
    try {
      if (state.hasMore || event.isRefresh) {
        final newPage = event.isRefresh ? 1 : state.currentPage + 1;
        if (newPage == 1) {
          emit(state.copyWith(status: DataStatus.loading));
        } else {
          emit(state.copyWith(status: DataStatus.loadingMore));
        }
        final currentList = List.of(state.appointments);
        final response = await _doctorAppointmentsRepository
            .fetchAppointmentsByType(
              date: state.currentMonth,
              appointmentStatus: state.doctorAppointmentStatus,
              appointmentType: state.doctorAppointmentType,
              page: newPage,
            );
        final newState = switch (response) {
          Left(value: final l) => state.copyWith(
            status: DataStatus.error,
            message: l.message,
          ),
          Right(value: final r) => state.copyWith(
            hasMore: r.success,
            status: DataStatus.data,
            currentPage: newPage,
            message: r.message,
            appointments:
                r.data == null
                    ? state.appointments
                    : newPage == 1
                    ? r.data!
                    : [...currentList, ...r.data!],
          ),
        };
        emit(newState);
      }
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  final DoctorAppointmentsRepository _doctorAppointmentsRepository;

  Future<void> _cancelAppointment(
    CancelAppointment event,
    Emitter<DoctorAppointmentsState> emit,
  ) async {
    try {
      emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
      final response = await _doctorAppointmentsRepository.cancelAppointment(
        reservationId: event.reservationId,
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
      if (state.status.isDone) {
        emit(state.copyWith(currentPage: 0, hasMore: true));
        add(FetchAppointmentsByType());
      }
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }
}
