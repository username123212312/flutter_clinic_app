import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/core/models/app_failure.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/features/home/model/medical_info_model.dart';

import '../../../core/consts/app_constants.dart';
import '../../../core/models/app_response.dart';
import '../../../core/providers/file_manager/file_manager.dart';
import '../model/appointment_model.dart';

class AppointmentDetailsRepository {
  AppointmentDetailsRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;
  Future<Either<AppFailure, AppResponse<AppointmentModel>>> fetchAppointment(
    int appointmentId,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.showAppointmentInfoPath,
        data: {'appointment_id': appointmentId},
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

  Future<Either<AppFailure, AppResponse<MedicalInfoModel>>>
  fetchAppointmentResults(int appointmentId) async {
    try {
      final response = await _dio.post(
        AppConstants.showAppointmentResultsPath,
        data: {'appointment_id': appointmentId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Appointment Fetched successfully!',
            data: MedicalInfoModel.fromJson(response.data),
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

  Future<Either<AppFailure, AppResponse<String>>> downloadPrescription(
    int prescriptionId, [
    void Function(double)? onProgress,
  ]) async {
    try {
      final response = await _dio.post(
        AppConstants.downloadPerscriptionPath,
        data: {'prescription_id': prescriptionId},
      );
      if (response.data['statusCode'] < 300) {
        final prescriptionFile = await FileManager.convertLargeBase64ToPdf(
          base64String: response.data['pdf_base64'],
          fileName: response.data['filename'],
          onProgress: onProgress,
        );
        return Right(
          AppResponse<String>(
            success: true,
            data: prescriptionFile.path,
            message: 'Prescription downloaded successfully!',
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
