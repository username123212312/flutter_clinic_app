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
        emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
      }
    });
    on<ResetAppointments>((event, emit) {
      emit(
        state.copyWith(
          doctorAppointmentStatus: DoctorAppointmentStatus.pending,
          doctorAppointmentType: DoctorAppointmentType.firstTime,
        ),
      );
      add(FetchAppointmentsByType());
    });
    on<ChangeAppointmentStatus>((event, emit) {
      emit(state.copyWith(doctorAppointmentStatus: event.status));
      add(FetchAppointmentsByType());
    });
    on<ChangeAppointmentType>((event, emit) {
      emit(state.copyWith(doctorAppointmentType: event.type));
      add(FetchAppointmentsByType());
    });

    on<FetchAppointmentsByType>(_fetchAppointmentsByType);
  }
  Future<void> _fetchAppointmentsByType(
    FetchAppointmentsByType event,
    Emitter<DoctorAppointmentsState> emit,
  ) async {
    try {
      final response = await _doctorAppointmentsRepository
          .fetchAppointmentsByType(
            appointmentStatus: state.doctorAppointmentStatus,
            appointmentType: state.doctorAppointmentType,
          );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          appointments: r.data ?? state.appointments,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  final DoctorAppointmentsRepository _doctorAppointmentsRepository;
}
