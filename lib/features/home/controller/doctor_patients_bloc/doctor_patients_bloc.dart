import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';

import '../../../../core/enums.dart';
import '../../../../core/models/app_failure.dart';
import '../../../../core/models/app_response.dart';

part 'doctor_patients_event.dart';
part 'doctor_patients_state.dart';
part 'doctor_patients_bloc.freezed.dart';

class DoctorPatientsBloc
    extends Bloc<DoctorPatientsEvent, DoctorPatientsState> {
  DoctorPatientsBloc() : super(DoctorPatientsState.initial()) {
    on<DoctorPatientsEvent>((event, emit) {
      if (event is LoadData || event is PatientsSearched) {
        emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
      }
    });
    on<PatientsFetched>(_fetchPatients);
    on<PatientsSearched>(_searchPatient);
    on<NotificationsFetched>(_fetchNotificationCount);
    on<LoadData>(_loadAllData);
  }

  Future<void> _fetchPatients(
    PatientsFetched event,
    Emitter<DoctorPatientsState> emit,
  ) async {
    try {
      final response = await _fetchVisitedPatients();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          patients: r.data ?? state.patients,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> _searchPatient(
    PatientsSearched event,
    Emitter<DoctorPatientsState> emit,
  ) async {
    try {
      final response = await _searchVisitedPatients(query: event.query);
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          patients: r.data ?? state.patients,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> _fetchNotificationCount(
    NotificationsFetched event,
    Emitter<DoctorPatientsState> emit,
  ) async {
    try {
      final response = await _fetchNotificationsCount();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          notificationsCount: r.data ?? state.notificationsCount,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> _loadAllData(
    LoadData event,
    Emitter<DoctorPatientsState> emit,
  ) async {
    add(PatientsFetched());
    add(NotificationsFetched());
  }

  Future<Either<AppFailure, AppResponse<int>>>
  _fetchNotificationsCount() async {
    try {
      final response = await _dio.get(AppConstants.getAllNotificationsPath);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<int>(
            success: true,
            message: 'Patients fetched successfully',
            data: (response.data['items'] as List<dynamic>).length,
          ),
        );
      } else {
        throw HttpException('Patients are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<UserModel>>>>
  _fetchVisitedPatients() async {
    try {
      final response = await _dio.get(AppConstants.showVisitedPatientsPath);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<UserModel>>(
            success: true,
            message: 'Patients fetched successfully',
            data:
                (response.data['data'] as List<dynamic>).map((patient) {
                  return UserModel.fromJson(patient);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Patients are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<UserModel>>>>
  _searchVisitedPatients({required String query}) async {
    try {
      final response = await _dio.post(
        AppConstants.searchVisitedPatientsPath,
        data: {'name': query},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<UserModel>>(
            success: true,
            message: 'Patients fetched successfully',
            data:
                (response.data['Patients'] as List<dynamic>).map((patient) {
                  return UserModel.fromJson(patient);
                }).toList(),
          ),
        );
      } else if (response.data['statusCode'] == 404) {
        return Right(
          AppResponse<List<UserModel>>(
            success: true,
            message: 'No Patients found',
            data: [],
          ),
        );
      } else {
        throw HttpException('Patients are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  final Dio _dio = DioClient().instance;
}
