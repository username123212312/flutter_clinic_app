import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';

import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';
import '../../../core/navigation/navigation_exports.dart';
import '../model/appointment_model.dart';
import '../model/requests/edit_reservation_request.dart';

class RescheduleAppointmentRepository {
  RescheduleAppointmentRepository({Dio? dio})
    : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<AppointmentModel>>>
  fetchAppointmentDetails(int appointmentId) async {
    try {
      final response = await _dio.get(
        AppConstants.showAppointmentInfoPath,
        queryParameters: {'appointment_id': appointmentId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Appointment Fetched successfully!',
            data: AppointmentModel.fromJson(response.data),
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

  Future<Either<AppFailure, AppResponse<List<DateTime>>>> showDoctorWorkDays(
    int clinicId,
    int doctorId,
  ) async {
    try {
      final response = await _dio.get(
        AppConstants.showDoctorWorkDaysPath,
        queryParameters: {'doctor_id': doctorId},
      );
      eLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Doctor work days fetched successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
            data:
                (response.data['available_dates'] as List<dynamic>).map((date) {
                  return DateTime.tryParse(date) ?? DateTime.now();
                }).toList(),
          ),
        );
      } else {
        throw HttpException(response.data['message'] ?? response.data['error']);
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

  Future<Either<AppFailure, AppResponse<List<TimeOfDay>>>> showDoctorWorkTimes(
    int clinicId,
    int doctorId,
    DateTime selectedDate,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.showTimesPath,
        data: {
          'clinic_id': clinicId,
          'doctor_id': doctorId,
          'date': DateFormat('dd/MM/yy').format(selectedDate).toString(),
        },
      );
      eLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Doctor work times fetched successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
            data:
                (response.data['items'] as List<dynamic>).map((time) {
                  return parseTimeWithDateFormat(time);
                }).toList(),
          ),
        );
      } else {
        throw HttpException(response.data['message'] ?? response.data['error']);
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

  Future<Either<AppFailure, AppResponse>> editReservation(
    EditReservationRequest request,
  ) async {
    try {
      final t = formatTime(request.newTime, false);
      final response = await _dio.post(
        AppConstants.editReservationPath,
        data: {
          'appointment_id': request.appointmentId,
          'clinic_id': request.clinicId,
          'doctor_id': request.doctorId,
          'new_date': DateFormat('dd/MM/yy').format(request.newDate),
          'new_time': t,
        },
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Appointment Rescheduled successfully!',
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
