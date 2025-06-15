import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_flutter_clinic_app/core/utils/logger.dart';
import 'package:our_flutter_clinic_app/features/home/model/clinic_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/requests/add_new_appointment_request.dart';
import 'package:our_flutter_clinic_app/features/home/repository/new_appointment_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums.dart';
import '../../model/doctor_model.dart';

part 'new_appointment_event.dart';
part 'new_appointment_state.dart';
part 'new_appointment_bloc.freezed.dart';

class NewAppointmentBloc
    extends Bloc<NewAppointmentEvent, NewAppointmentState> {
  NewAppointmentBloc({
    required NewAppointmentRepository newAppointmentRepository,
  }) : _newAppointmentRepository = newAppointmentRepository,
       super(NewAppointmentState.initial()) {
    on<NewAppointmentEvent>((event, emit) {
      if (event is! ScheduleSelected) {
        emit(
          state.copyWith(statusMessage: 'loading', status: DataStatus.loading),
        );
      }
    });
    on<ClinicsFetched>(_fetchClinics);
    on<ClinicDoctorsFetched>(_fetchClinicDoctors);
    on<DoctorSelected>(_showDoctorWorkDays);
    on<DateSelected>(_showAvailableTimes);
    on<ScheduleSelected>((event, emit) {
      emit(
        state.copyWith(
          time: event.time,
          status: DataStatus.data,
          statusMessage: 'Schedule added',
        ),
      );
    });
    on<BookedNewAppointment>(_bookNewAppointment);
    on<DoctorSearched>(_searchDoctor, transformer: restartable());
    on<AllDoctorsFetched>(_fetchAllDoctors);
  }

  Future<void> _fetchClinics(
    ClinicsFetched event,
    Emitter<NewAppointmentState> emit,
  ) async {
    try {
      final response = await _newAppointmentRepository.fetchAllClinics();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          statusMessage: l.message,
          status: DataStatus.error,
        ),
        Right(value: final r) => state.copyWith(
          statusMessage: r.message,
          department:
              state.department ?? ClinicModel(name: 'Choose Department'),
          clinics: r.data,
          status: DataStatus.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(statusMessage: e.toString(), status: DataStatus.error),
      );
    }
  }

  Future<void> _fetchClinicDoctors(
    ClinicDoctorsFetched event,
    Emitter<NewAppointmentState> emit,
  ) async {
    try {
      final response = await _newAppointmentRepository.fetchClinicDoctors(
        event.clinic.id ?? 0,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          statusMessage: l.message,
          status: DataStatus.error,
        ),
        Right(value: final r) => state.copyWith(
          statusMessage: r.message,
          department: event.clinic,
          doctor: null,
          doctors: r.data,
          status: DataStatus.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(statusMessage: e.toString(), status: DataStatus.error),
      );
    }
  }

  Future<void> _fetchAllDoctors(
    AllDoctorsFetched event,
    Emitter<NewAppointmentState> emit,
  ) async {
    try {
      final response = await _newAppointmentRepository.fetchAllDoctors();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          statusMessage: l.message,
          status: DataStatus.error,
        ),
        Right(value: final r) => state.copyWith(
          statusMessage: r.message,
          searchList: r.data,
          status: DataStatus.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(statusMessage: e.toString(), status: DataStatus.error),
      );
    }
  }

  Future<void> _showDoctorWorkDays(
    DoctorSelected event,
    Emitter<NewAppointmentState> emit,
  ) async {
    try {
      final response = await _newAppointmentRepository.showDoctorWorkDays(
        state.department?.id ?? 0,
        event.doctor.id ?? 0,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          statusMessage: l.message,
          status: DataStatus.error,
        ),
        Right(value: final r) => state.copyWith(
          statusMessage: r.message,
          dates: r.data,
          doctor: event.doctor,
          status: DataStatus.data,
        ),
      };

      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(statusMessage: e.toString(), status: DataStatus.error),
      );
    }
  }

  Future<void> _showAvailableTimes(
    DateSelected event,
    Emitter<NewAppointmentState> emit,
  ) async {
    try {
      final response = await _newAppointmentRepository.showDoctorWorkTimes(
        state.department?.id ?? 0,
        state.doctor?.id ?? 0,
        event.date,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          statusMessage: l.message,
          status: DataStatus.error,
        ),
        Right(value: final r) => state.copyWith(
          statusMessage: r.message,
          date: event.date,
          availableTimes: r.data,
          status: DataStatus.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(statusMessage: e.toString(), status: DataStatus.error),
      );
    }
  }

  Future<void> _bookNewAppointment(
    BookedNewAppointment event,
    Emitter<NewAppointmentState> emit,
  ) async {
    try {
      final response = await _newAppointmentRepository.addNewAppointment(
        AddNewAppointmentRequest(
          doctorId: state.doctor?.id ?? 0,
          date: state.date ?? DateTime.now(),
          time: state.time ?? TimeOfDay.now(),
        ),
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          statusMessage: l.message,
          status: DataStatus.error,
        ),
        Right(value: final r) => state.copyWith(
          statusMessage: r.message,
          status: DataStatus.data,
          appointmentID: r.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(statusMessage: e.toString(), status: DataStatus.error),
      );
    }
  }

  Future<void> _searchDoctor(
    DoctorSearched event,
    Emitter<NewAppointmentState> emit,
  ) async {
    try {
      final response = await _newAppointmentRepository.searchDoctor(
        event.query,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          statusMessage: l.message,
          status: DataStatus.error,
        ),
        Right(value: final r) => state.copyWith(
          statusMessage: r.message,
          searchList: r.data,
          status: DataStatus.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(statusMessage: e.toString(), status: DataStatus.error),
      );
    }
  }

  final NewAppointmentRepository _newAppointmentRepository;
}
