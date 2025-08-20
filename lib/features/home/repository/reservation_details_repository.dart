import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';

import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';
import '../model/appointment_model.dart';

class ReservationDetailsRepository {
  ReservationDetailsRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<int>>> fetchDiscountPoints() async {
    try {
      final response = await _dio.get(
        AppConstants.showProfilePath,
        queryParameters:
            getChildId() != null ? {'child_id': getChildId()} : null,
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<int>(
            data: response.data['data']['discount_points'],
            success: true,
            message: 'discount points fetched successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException('discount points are not fetched');
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

  Future<Either<AppFailure, AppResponse<AppointmentModel>>> fetchAppointment(
    int appointmentId,
  ) async {
    try {
      final response = await _dio.get(
        AppConstants.showAppointmentInfoPath,
        queryParameters: {
          'appointment_id': appointmentId,
          if (getChildId() != null) 'child_id': getChildId(),
        },
      );

      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Appointment fetched successfully',
            data: AppointmentModel.fromJson(response.data),
          ),
        );
      } else {
        throw HttpException('Appointment is not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse>> confirmReservationPayment(
    int appointmentId, [
    bool useDiscountPoints = false,
  ]) async {
    try {
      final response = await _dio.post(
        AppConstants.reservationPaymentPath,
        data: {
          'reservation_id': appointmentId,
          'discount_points': useDiscountPoints,
        },
      );

      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Appointment confirmed successfully',
          ),
        );
      } else {
        throw HttpException(parseStringList(response.data['message']));
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse>> setReminder(
    int appointmentId,
    int reminderOffset,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.setReminderPath,
        data: {
          'appointment_id': appointmentId,
          'reminder_offset': reminderOffset,
        },
      );

      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(success: true, message: 'Reminder set successfully'),
        );
      } else {
        throw HttpException('Reminder is not set');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  final Dio _dio;
}
