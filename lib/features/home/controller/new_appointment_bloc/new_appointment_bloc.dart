import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/features/home/model/clinic_model.dart';
import 'package:flutter_clinic_app/features/home/repository/new_appointment_repository.dart';
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
      emit(
        NewAppointmentState(
          clinics: state.clinics,
          status: DataStatus.loading,
          department: state.department,
          doctors: state.doctors,
          date: state.date,
          availableSchedules: state.availableSchedules,
        ),
      );
    });
    on<ClinicsFetched>(_fetchClinics);
    on<DoctorsFetched>(_fetchDoctors);
    on<DoctorSelected>(_showDoctorWorkDays);
  }

  Future<void> _fetchClinics(
    ClinicsFetched event,
    Emitter<NewAppointmentState> emit,
  ) async {
    try {
      final response = await _newAppointmentRepository.fetchAllClinics();
      final newState = switch (response) {
        Left(value: final l) => NewAppointmentState(
          statusMessage: l.message,
          department: state.department,
          doctors: state.doctors,
          clinics: state.clinics,
          date: state.date,
          availableSchedules: state.availableSchedules,
          status: state.status,
        ),
        Right(value: final r) => NewAppointmentState(
          statusMessage: r.message,
          department: ClinicModel(name: 'Choose Department'),
          doctors: null,
          clinics: r.data,
          date: null,
          availableSchedules: null,
          status: DataStatus.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        NewAppointmentState(
          statusMessage: e.toString(),
          department: state.department,
          clinics: state.clinics,
          doctors: state.doctors,
          date: state.date,
          availableSchedules: state.availableSchedules,
          status: DataStatus.error,
        ),
      );
    }
  }

  Future<void> _fetchDoctors(
    DoctorsFetched event,
    Emitter<NewAppointmentState> emit,
  ) async {
    try {
      final response = await _newAppointmentRepository.fetchClinicDoctors(
        event.clinic.id ?? 0,
      );
      final newState = switch (response) {
        Left(value: final l) => NewAppointmentState(
          statusMessage: l.message,
          department: state.department,
          doctors: state.doctors,
          clinics: state.clinics,
          date: state.date,
          availableSchedules: state.availableSchedules,
          status: state.status,
        ),
        Right(value: final r) => NewAppointmentState(
          statusMessage: r.message,
          department: event.clinic,
          doctors: r.data,
          clinics: state.clinics,
          date: null,
          availableSchedules: null,
          status: DataStatus.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        NewAppointmentState(
          statusMessage: e.toString(),
          department: state.department,
          clinics: state.clinics,
          doctors: state.doctors,
          date: state.date,
          availableSchedules: state.availableSchedules,
          status: DataStatus.error,
        ),
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
        Left(value: final l) => NewAppointmentState(
          statusMessage: l.message,
          department: state.department,
          doctors: state.doctors,
          clinics: state.clinics,
          date: state.date,
          availableSchedules: state.availableSchedules,
          status: state.status,
        ),
        Right(value: final r) => NewAppointmentState(
          statusMessage: r.message,
          department: ClinicModel(name: 'Choose Department'),
          doctors: r.data,
          clinics: state.clinics,
          date: null,
          availableSchedules: null,
          status: DataStatus.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        NewAppointmentState(
          statusMessage: e.toString(),
          department: state.department,
          clinics: state.clinics,
          doctors: state.doctors,
          date: state.date,
          availableSchedules: state.availableSchedules,
          status: DataStatus.error,
        ),
      );
    }
  }

  final NewAppointmentRepository _newAppointmentRepository;
}
