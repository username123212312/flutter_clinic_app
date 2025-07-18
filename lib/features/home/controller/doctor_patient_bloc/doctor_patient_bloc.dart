import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/models/app_failure.dart';
import 'package:our_flutter_clinic_app/core/models/app_response.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/features/home/controller/appointments_bloc/appointments_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';

import '../../../../core/enums.dart';
import '../../../../core/models/usermodel.dart';

part 'doctor_patient_event.dart';
part 'doctor_patient_state.dart';
part 'doctor_patient_bloc.freezed.dart';

class DoctorPatientBloc extends Bloc<DoctorPatientEvent, DoctorPatientState> {
  DoctorPatientBloc({required UserModel patient})
    : super(DoctorPatientState.initial(patient: patient)) {
    on<DoctorPatientEvent>((event, emit) {
      if (event is! AppointmentsFetched) {
        emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
      }
    });
    on<PatientProfileFetched>(_fetchPatientProfile);
    on<PatientAppointmentsFetched>(_fetchPatientAppointments);
  }

  Future<void> _fetchPatientProfile(
    PatientProfileFetched event,
    Emitter<DoctorPatientState> emit,
  ) async {
    try {
      final response = await _fetchPatient(patientId: state.patient.id ?? -1);
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          patient: r.data ?? state.patient,
        ),
      };

      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> _fetchPatientAppointments(
    PatientAppointmentsFetched event,
    Emitter<DoctorPatientState> emit,
  ) async {
    emit(state.copyWith(appointmentsStatus: DataStatus.loading));
    try {
      final response = await _fetchAppointments(
        patientId: state.patient.id ?? -1,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          appointmentsStatus: DataStatus.error,
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          appointmentsStatus: DataStatus.data,
          status: DataStatus.data,
          message: r.message,
          appointments: r.data ?? state.appointments,
        ),
      };

      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(
          appointmentsStatus: DataStatus.error,
          message: e.toString(),
          status: DataStatus.error,
        ),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<UserModel>>> _fetchPatient({
    required int patientId,
  }) async {
    try {
      final response = await _dio.get(
        AppConstants.showPatientProfilePath,
        queryParameters: {'patient_id': patientId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<UserModel>(
            success: true,
            message: 'Patient fetched successfully',
            data: UserModel.fromJson(response.data),
          ),
        );
      } else {
        throw HttpException('Patient is not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<AppointmentModel>>>>
  _fetchAppointments({required int patientId}) async {
    try {
      final response = await _dio.get(
        AppConstants.doctorShowpatientAppointmentsPath,
        queryParameters: {'patient_id': patientId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<AppointmentModel>>(
            success: true,
            message: 'Appointments are fetched successfully',
            data:
                (response.data['data'] as List<dynamic>).map((appointment) {
                  return AppointmentModel.fromJson(
                    appointment,
                  ).copyWith(id: appointment['id']);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Appointments are not fetched');
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
