import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:our_flutter_clinic_app/features/home/repository/home_repository.dart';

import '../../../../core/enums.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required HomeRepository homeRepository})
    : _homeRepository = homeRepository,
      super(HomeState.initial()) {
    on<HomeEvent>((event, emit) {
      emit(
        state.copyWith(
          departmentsListStatus: DataStatus.loading,
          doctorsListStatus: DataStatus.loading,
          pharmaciesListStatus: DataStatus.loading,
          upcomingAppointmentsListStatus: DataStatus.loading,
        ),
      );
    });
    on<AllListsFetched>(_fetchAllLists);
  }
  Future<void> _fetchAllLists(
    AllListsFetched event,
    Emitter<HomeState> emit,
  ) async {
    await _fetchUpcomingAppointments(emit);
    await _fetchAllClinics(emit);
  }

  Future<void> _fetchUpcomingAppointments(Emitter<HomeState> emit) async {
    try {
      final response = await _homeRepository.fetchUpcomingAppointments();
      final newState = switch (response) {
        Left() => state.copyWith(
          upcomingAppointmentsListStatus: DataStatus.error,
        ),
        Right(value: final r) => state.copyWith(
          upcomingAppointmentsList: r.data ?? state.upcomingAppointmentsList,
          upcomingAppointmentsListStatus: DataStatus.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(upcomingAppointmentsListStatus: DataStatus.error));
    }
  }

  Future<void> _fetchAllClinics(Emitter<HomeState> emit) async {
    try {
      final response = await _homeRepository.fetchAllClinics();
      final newState = switch (response) {
        Left() => state.copyWith(departmentsListStatus: DataStatus.error),
        Right(value: final r) => state.copyWith(
          departmentsList: r.data ?? state.upcomingAppointmentsList,
          departmentsListStatus: DataStatus.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(departmentsListStatus: DataStatus.error));
    }
  }

  final HomeRepository _homeRepository;
}
