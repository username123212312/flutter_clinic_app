import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/features/home/model/review_model.dart';

import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';
import '../../../core/utils/utils.dart';
import '../model/doctor_model.dart';
import '../model/requests/add_new_appointment_request.dart';
import '../model/requests/rate_doctor_request.dart';

class DoctorInfoRepository {
  DoctorInfoRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<DoctorModel>>> fetchDoctorDetails(
    int doctorId,
  ) async {
    try {
      final response = await _dio.get(
        AppConstants.showDoctorDetailsPath,
        queryParameters: {'doctor_id': doctorId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<DoctorModel>(
            success: true,
            message: 'Doctor details fetched sucessfullly',
            data: DoctorModel.fromJson(response.data),
          ),
        );
      } else {
        throw HttpException('Doctor details are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<DateTime>>>> fetchDoctorWorkDays(
    int doctorId,
  ) async {
    try {
      final response = await _dio.get(
        AppConstants.showDoctorWorkDaysPath,
        queryParameters: {'doctor_id': doctorId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<DateTime>>(
            success: true,
            message: 'Doctor Work days fetched sucessfullly',
            data:
                (response.data['available_dates'] as List<dynamic>).map((date) {
                  return DateTime.tryParse(date) ?? DateTime.now();
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Doctor Work days are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<ReviewModel>>>> fetchDoctorReviews(
    int doctorId,
  ) async {
    try {
      final response = await _dio.get(
        AppConstants.patientShowDoctorReviewsPath,
        queryParameters: {'doctor_id': doctorId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<ReviewModel>>(
            success: true,
            message: 'Reviews fetched sucessfullly',
            data:
                (response.data['items'] as List<dynamic>).map((review) {
                  return ReviewModel.fromJson(review);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Reviews are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
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
          AppResponse<List<TimeOfDay>>(
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

  Future<Either<AppFailure, AppResponse<int>>> addNewAppointment(
    AddNewAppointmentRequest request,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.addReservationPath,
        data: {
          'doctor_id': request.doctorId,
          'date': DateFormat('dd/MM/yy').format(request.date),
          if (request.time != null) 'time': formatTime24(request.time!),
          if (getChildId() != null) 'child_id': getChildId(),
        },
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<int>(
            data: response.data['id'],
            success: true,
            message: 'Appointment added successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else if (400 == response.data['statusCode']) {
        throw HttpException(parseStringList(response.data['message']));
      } else {
        throw HttpException(parseStringList(response.data['message']));
      }
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

  Future<Either<AppFailure, AppResponse>> rateDoctor(
    RateDoctorRequest request,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.doctorRatePath,
        data: {
          'doctor_id': request.doctorId,
          'comment': request.comment,
          'rate': request.rate.toInt(),
        },
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Doctor Rated successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(parseStringList(response.data['message']));
      }
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
