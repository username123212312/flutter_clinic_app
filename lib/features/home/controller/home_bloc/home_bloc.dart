import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/clinic_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/pharmacy_model.dart';
import 'package:our_flutter_clinic_app/features/home/repository/home_repository.dart';

import '../../../../core/enums.dart';
import '../../model/doctor_model.dart';

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
    on<NotificationCountFetched>(_fetchNotoficationCount);
  }
  Future<void> _fetchAllLists(
    AllListsFetched event,
    Emitter<HomeState> emit,
  ) async {
    add(NotificationCountFetched());
    try {
      await _fetchUpcomingAppointments(emit);
      await _fetchAllClinics(emit);
      await _fetchBestDoctors(emit);
      await _fetchNearByPharmacies(emit);
    } catch (e) {
      emit(
        state.copyWith(
          departmentsListStatus: DataStatus.error,
          doctorsListStatus: DataStatus.error,
          pharmaciesListStatus: DataStatus.error,
          upcomingAppointmentsListStatus: DataStatus.error,
        ),
      );
    }
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
          departmentsList: r.data ?? state.departmentsList,
          departmentsListStatus: DataStatus.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(departmentsListStatus: DataStatus.error));
    }
  }

  Future<void> _fetchBestDoctors(Emitter<HomeState> emit) async {
    try {
      final response = await _homeRepository.fetchBestDoctors();
      final newState = switch (response) {
        Left() => state.copyWith(doctorsListStatus: DataStatus.error),
        Right(value: final r) => state.copyWith(
          doctorsList: r.data ?? state.doctorsList,
          doctorsListStatus: DataStatus.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(doctorsListStatus: DataStatus.error));
    }
  }

  Future<void> _fetchNearByPharmacies(Emitter<HomeState> emit) async {
    try {
      final response = await _homeRepository.fetchNearByPharmacies();
      final newState = switch (response) {
        Left() => state.copyWith(departmentsListStatus: DataStatus.error),
        Right(value: final r) => state.copyWith(
          pharmaciesList: r.data ?? state.pharmaciesList,
          pharmaciesListStatus: DataStatus.data,
          status: DataStatus.data,
          message: 'All Lists fetched',
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(pharmaciesListStatus: DataStatus.error));
    }
  }

  Future<void> _fetchNotoficationCount(
    NotificationCountFetched event,
    Emitter<HomeState> emit,
  ) async {
    try {
      final response = await _homeRepository.fetchNotificationsCount();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          notificationCount: r.data ?? state.notificationCount,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  final HomeRepository _homeRepository;
}
