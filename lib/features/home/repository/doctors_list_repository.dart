import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/features/home/model/doctor_model.dart';

import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';
import '../model/clinic_model.dart';

class DoctorsListRepository {
  DoctorsListRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<List<ClinicModel>>>>
  fetchAllClinics() async {
    try {
      final response = await _dio.get(AppConstants.showClinicsPath);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<ClinicModel>>(
            success: true,
            message: 'Clinics are fetched successfully',
            data:
                (response.data['items'] as List<dynamic>).map((clinic) {
                  return ClinicModel.fromJson(clinic);
                }).toList(),
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

  Future<Either<AppFailure, AppResponse<List<DoctorModel>>>>
  fetchAllDoctors() async {
    try {
      final response = await _dio.get(AppConstants.showDoctorsPath);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<DoctorModel>>(
            success: true,
            message: 'All doctors are fetched successfully',
            data:
                (response.data['data'] as List<dynamic>).map((doctor) {
                  return DoctorModel.fromJson(doctor);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('All doctors are not fetched');
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
          AppResponse<List<DoctorModel>>(
            success: true,
            message: 'Clinic doctors are fetched successfully',
            data:
                (response.data['items'] as List<dynamic>).map((doctor) {
                  return DoctorModel.fromJson(doctor);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Clinic doctors are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<DoctorModel>>>> searchDoctor(
    String query,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.searchDoctorPath,
        data: {'name': query},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<DoctorModel>>(
            success: true,
            message: 'Clinic doctors are fetched successfully',
            data:
                (response.data['items'] as List<dynamic>).map((doctor) {
                  return DoctorModel.fromJson(doctor);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Clinic doctors are not fetched');
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
