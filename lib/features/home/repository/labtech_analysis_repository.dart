import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/features/home/model/requests/add_analysis_request.dart';

import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';
import '../../../core/utils/utils.dart';
import '../model/analysis_model.dart';
import '../model/requests/add_analysis_result_request.dart';

class LabtechAnalysisRepository {
  LabtechAnalysisRepository({Dio? dio}) : _dio = DioClient().instance;

  Future<Either<AppFailure, AppResponse<List<AnalysisModel>>>> fetchAllAnalysis(
    AnalysisStatus analysisStatus,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.labTechShowAllAnalysisPath,
        data: {'status': analysisStatus.name.toLowerCase()},
      );

      eLog(response.data.toString());

      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<AnalysisModel>>(
            success: true,
            message: 'Analysis fetched successfully!',
            data:
                (response.data['items'] as List<dynamic>).map((analysis) {
                  return AnalysisModel.fromJson(analysis);
                }).toList(),
          ),
        );
      } else {
        throw HttpException(response.data['message']);
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<AnalysisModel>>> showAnalysis(
    int analysisId,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.labTechShowAnalysePath,
        data: {'id': analysisId},
      );

      eLog(response.data.toString());

      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<AnalysisModel>(
            success: true,
            message: 'Analysis fetched successfully!',
            data: AnalysisModel.fromJson(response.data),
          ),
        );
      } else {
        throw HttpException(response.data['message']);
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse>> addAnalysisResult(
    AddAnalysisResultRequest request, [
    Function(double)? onSendProgress,
  ]) async {
    if (request.filePath == null && request.photoPath == null) {
      return Left(AppFailure(message: 'file or photo must be provided'));
    }
    try {
      final formData = FormData.fromMap({
        'id': request.id,
        if (request.filePath != null)
          'result_file': await MultipartFile.fromFile(
            request.filePath!,
            filename: request.filePath!.split('/').last,
          ),
        if (request.photoPath != null)
          'result_photo': await MultipartFile.fromFile(
            request.photoPath!,
            filename: request.photoPath!.split('/').last,
          ),
      });

      final response = await _dio.post(
        AppConstants.labTechAddAnalyseResultPath,
        data: formData,
        onSendProgress:
            (count, total) =>
                onSendProgress == null ? null : onSendProgress(count / total),
      );

      eLog(response.data.toString());

      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Analysis modified successfully!',
          ),
        );
      } else {
        throw HttpException(response.data['message']);
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<AnalysisModel>>> addAnalysis(
    AddAnalysisRequest request,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.labTechAddAnalysePath,
        data: {
          'name': request.name,
          'description': request.description,
          'patient_number': request.patientNumber,
          'clinic_id': request.clinicId,
        },
      );

      eLog(response.data.toString());

      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<AnalysisModel>(
            data: AnalysisModel.fromJson(response.data['data']),
            success: true,
            message: 'Analysis modified successfully!',
          ),
        );
      } else {
        throw HttpException(response.data['message']);
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<AnalysisModel>>>> searchAnalysis(
    String query,
    AnalysisStatus analysisStatus,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.labTechSearchAnalysePath,
        data: {'name': query, 'status': analysisStatus.name.toLowerCase()},
      );

      eLog(response.data.toString());

      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<AnalysisModel>>(
            data:
                (response.data['items'] as List<dynamic>).map((analysis) {
                  return AnalysisModel.fromJson(analysis);
                }).toList(),
            success: true,
            message: 'Analysis searched successfully!',
          ),
        );
      } else if (response.data['statusCode'] == 404) {
        return Right(
          AppResponse<List<AnalysisModel>>(
            data: [],
            success: true,
            message: 'Analysis searched successfully!',
          ),
        );
      } else {
        throw HttpException(response.data['message']);
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
