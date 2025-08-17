import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/features/home/model/clinic_model.dart';

import '../../../core/enums.dart';
import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';
import '../model/analysis_model.dart';

class DoctorPatientAnalysisRepository {
  Future<Either<AppFailure, AppResponse<List<AnalysisModel>>>>
  fetchAnalysisByStatus({
    required int patientId,
    required AnalysisStatus analysisStatus,
    int page = 1,
  }) async {
    try {
      final response = await _dio.get(
        AppConstants.showPatientAnalysisPath,
        queryParameters: {
          'page': page,
          'patient_id': patientId,
          'status': analysisStatus.name.toLowerCase(),
        },
      );

      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<AnalysisModel>>(
            success: doesListHaveMore(response.data['meta']),
            message: 'Analysis fetched successfully',
            data:
                (response.data['data'] as List<dynamic>).map((analysis) {
                  return AnalysisModel.fromJson(analysis);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Analysis are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<AnalysisModel>>>>
  fetchAnalysisByClinic({
    required int patientId,
    required int clinicId,
    required AnalysisStatus analysisStatus,
    int page = 1,
  }) async {
    try {
      final response = await _dio.get(
        AppConstants.showPatientAnalysisPath,
        queryParameters: {
          'page': page,
          'patient_id': patientId,
          'clinic_id': clinicId,

          'status': analysisStatus.name.toLowerCase(),
        },
      );

      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<AnalysisModel>>(
            success: doesListHaveMore(response.data['meta']),
            message: 'Analysis fetched successfully',
            data:
                (response.data['data'] as List<dynamic>).map((analysis) {
                  return AnalysisModel.fromJson(analysis);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Analysis are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<ClinicModel>>>>
  showClinics() async {
    try {
      final response = await _dio.get(AppConstants.doctorShowClinicPath);

      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<ClinicModel>>(
            success: true,
            message: 'Clinics fetched successfully',
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

  final Dio _dio = DioClient().instance;
}
