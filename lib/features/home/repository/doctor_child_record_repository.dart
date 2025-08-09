import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/features/home/model/child_record.dart';

import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';
import '../model/requests/child_record_request.dart';

class DoctorChildRecordRepository {
  Future<Either<AppFailure, AppResponse>> addChildRecord(
    ChildRecordRequest request,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.addChildRecordPath,
        data: request.toJson(),
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(message: 'Record added successfully', success: true),
        );
      } else {
        throw HttpException('Record is not added');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse>> editChildRecord(
    ChildRecordRequest request,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.editChildRecordsPath,
        data: request.toJson(),
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(message: 'Record modified successfully', success: true),
        );
      } else {
        throw HttpException('Record is not modified');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<ChildRecord>>> showChildRecord(
    int childId,
  ) async {
    try {
      final response = await _dio.get(
        AppConstants.editChildRecordsPath,
        queryParameters: {'child_id': childId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<ChildRecord>(
            data: ChildRecord.fromJson(response.data),
            message: 'Record fetched successfully',
            success: true,
          ),
        );
      } else {
        throw HttpException('Record is not fetched');
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
