import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';

import '../../../core/consts/app_constants.dart';
import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';
import '../model/clinic_model.dart';
import '../model/doctor_model.dart';

class ClinicsDoctorsRepository {
  ClinicsDoctorsRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<List<ClinicModel>>>>
  fetchAllClinics() async {
    try {
      final response = await _dio.get(AppConstants.showClinicsPath);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<ClinicModel>>(
            success: true,
            message: 'Clinics fetched successfully!',
            data:
                (response.data['items'] as List<dynamic>)
                    .map((clinic) {
                      return ClinicModel.fromJson(clinic);
                    })
                    .take(8)
                    .toList(),
          ),
        );
      } else {
        throw HttpException('Clinics are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<DoctorModel>>>> fetchClinicDoctors(
    int clinicId,
  ) async {
    try {
      final response = await _dio.get(
        AppConstants.showClinicDoctorsPath,
        queryParameters: {'clinic_id': clinicId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Doctors fetched successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
            data:
                (response.data['items'] as List<dynamic>).map((doctor) {
                  return DoctorModel.fromJson(doctor);
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

  final Dio _dio;
}
