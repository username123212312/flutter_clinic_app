import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/service_locator.dart';

import '../../../core/blocs/user_bloc/user_bloc.dart';
import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';
import '../../../core/utils/general_utils.dart';
import '../model/appointment_model.dart';

class AppointmentsRepository {
  AppointmentsRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<List<AppointmentModel>>>>
  fetchAllAppointments(
    AppointmentStatus appointmentStatus,
    AppointmentType appointmentType, {
    int? page = 1,
  }) async {
    try {
      final response = await _dio.post(
        AppConstants.showAppointmentPath,
        data: {
          'size': 5,
          'page': page,
          'status': appointmentStatus.name,
          if (getChildId() != null) 'child_id': getChildId(),
          if (getChildId() != null) 'appointment_type': appointmentType.name,
        },
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<AppointmentModel>>(
            message: 'Appointments fetched successfully',
            success: doesListHaveMore(response.data['meta']),
            data:
                (response.data['data'] as List<dynamic>).map((appointment) {
                  return AppointmentModel.fromJson(appointment).copyWith(
                    type: AppointmentType.values.firstWhere((a) {
                      return a.name == appointment['appointment_type'];
                    }),
                  );
                }).toList(),
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(response.data['message'] ?? 'Error');
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse>> removeAppointment(
    int appointmentId,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.cancelReservationPath,
        data: {'reservation_id': appointmentId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            message: 'Appointment deleted successfully',
            success: true,
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(response.data['message'] ?? 'Error');
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  final Dio _dio;
}
