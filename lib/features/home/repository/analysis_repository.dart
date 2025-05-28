import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_clinic_app/core/consts/app_constants.dart';
import 'package:flutter_clinic_app/core/enums.dart';
import 'package:flutter_clinic_app/core/models/app_failure.dart';
import 'package:flutter_clinic_app/core/models/app_response.dart';
import 'package:flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:flutter_clinic_app/core/utils/utils.dart';
import 'package:flutter_clinic_app/features/home/model/analysis_model.dart';
import 'package:flutter_clinic_app/features/home/model/requests/add_analysis_request.dart';
import 'package:flutter_clinic_app/service_locator.dart';
import 'package:fpdart/fpdart.dart';

class AnalysisRepository {
  final Dio _dio;
  AnalysisRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<AnalysisModel>>> addAnalysis(
    AddAnalysisRequest request, {
    void Function(double progressValue)? onSendProgress,
  }) async {
    try {
      final FormData formData = FormData.fromMap({
        'name': request.name,
        if (request.description != null) 'description': request.description,
        if (request.resultFilePath != null)
          'result_file': await MultipartFile.fromFile(
            request.resultFilePath!,
            filename: request.resultFilePath!.split('/').last,
          ),
        if (request.resultImagePath != null)
          'result_photo': await MultipartFile.fromFile(
            request.resultImagePath!,
            filename: request.resultImagePath!.split('/').last,
          ),
      });
      final response = await _dio.post(
        onSendProgress:
            onSendProgress == null
                ? null
                : (count, total) {
                  onSendProgress((count / total) * 100);
                },
        data: formData,
        AppConstants.addAnalysisPath,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'multipart/form-data',
            'Authorization':
                'Bearer ${ServiceLocator.instance<AuthBloc>().state.token}',
          },
        ),
      );
      eLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Analysis added successfully!',
            data: AnalysisModel.fromJson(response.data),
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw Exception(response.data['error'] ?? 'Error Occurred');
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
  fetchAllAnalysis() async {
    try {
      final response = await _dio.get(AppConstants.showAnalysisPath);
      eLog(response.data);
      if (response.data['statusCode'] < 300) {
        final List<AnalysisModel> newList = [
          ...response.data['items'].map((analysis) {
            return AnalysisModel.fromJson(analysis);
          }),
        ];
        eLog('${newList.runtimeType} : \n ${newList.toString()}');

        return Right(
          AppResponse<List<AnalysisModel>>(
            success: true,
            message: 'fetched successfuly',
            data: newList,
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(
          response.data['message'] ?? response.data['error'] ?? 'Unknown error',
        );
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
  filterAllAnalysis(AnalysisStatus status) async {
    try {
      final response = await _dio.post(
        AppConstants.filteringAnalysisPath,
        data: {'status': status.name},
      );
      eLog(response.data);
      if (response.data['statusCode'] < 300) {
        final List<AnalysisModel> newList = [
          ...response.data['items'].map((analysis) {
            return AnalysisModel.fromJson(analysis);
          }),
        ];
        eLog('${newList.runtimeType} : \n ${newList.toString()}');

        return Right(
          AppResponse<List<AnalysisModel>>(
            success: true,
            message: 'fetched successfuly',
            data: newList,
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(
          response.data['message'] ?? response.data['error'] ?? 'Unknown error',
        );
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse>> deleteAnalysis(int analysisId) async {
    try {
      final response = await _dio.post(
        AppConstants.deleteAnalysisPath,
        data: {'analyse_id': analysisId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Analysis deleted successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(response.data['statusMessage']);
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }
}
