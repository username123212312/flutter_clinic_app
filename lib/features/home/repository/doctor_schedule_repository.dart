import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';

import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';
import '../model/work_day.dart';

class DoctorScheduleRepository {
  DoctorScheduleRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<List<WorkDay>>>>
  fetchDoctorWorkDays() async {
    try {
      final response = await _dio.get(AppConstants.availableWorkDaysPath);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<WorkDay>>(
            success: true,
            message: 'Work days fetched successfuly',
            data:
                (response.data['items'] as List<dynamic>).map((workDay) {
                  return WorkDay.fromJson(workDay);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Work days are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse>> setSchedule({
    required List<WorkDay> workDays,
  }) async {
    try {
      final response = await _dio.post(
        AppConstants.schedulePath,
        data: {
          'RosterDays':
              workDays.map((workDay) {
                return {
                  'day': workDay.day,
                  'shift': workDay.availableShifts?.first.toJson,
                };
              }).toList(),
        },
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(success: true, message: 'Work days fetched successfuly'),
        );
      } else {
        throw HttpException('Work days are not fetched');
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
