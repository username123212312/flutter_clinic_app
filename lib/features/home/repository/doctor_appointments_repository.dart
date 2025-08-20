import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/medical_info_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/prescription_model.dart';

import '../../../core/enums.dart';
import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';

class DoctorAppointmentsRepository {
  Future<Either<AppFailure, AppResponse<List<AppointmentModel>>>>
  fetchAppointmentsByType({
    required DoctorAppointmentStatus appointmentStatus,
    required DoctorAppointmentType appointmentType,
    required DateTime date,
    int? page = 1,
  }) async {
    try {
      final response = await _dio.post(
        AppConstants.doctorShowAppointmentsByTypePath,
        data: {
          'page': page,
          'date': DateFormat('MM-yyyy').format(date),
          'status': appointmentStatus.name,
          'type': appointmentType.toJson(),
        },
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<AppointmentModel>>(
            message: 'Appointments fetched successfully',
            success: doesListHaveMore(response.data['meta']),
            data:
                (response.data['data'] as List<dynamic>).map((appointment) {
                  return AppointmentModel.fromJson(
                    appointment,
                  ).copyWith(id: appointment['id']);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Appointments are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<AppointmentModel>>>
  fetchAppointmentDetails({required int appointmentId}) async {
    try {
      final response = await _dio.get(
        AppConstants.doctorShowAppointmentDetailsPath,
        queryParameters: {'appointment_id': appointmentId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<AppointmentModel>(
            data: AppointmentModel.fromJson(response.data),
            message: 'Appointments fetched successfully',
            success: true,
          ),
        );
      } else {
        throw HttpException('Appointments are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<MedicalInfoModel>>>
  fetchAppointmentsResults({required int appointmentId}) async {
    try {
      final response = await _dio.get(
        AppConstants.doctorshowAppointmantResultsPath,
        queryParameters: {'appointment_id': appointmentId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<MedicalInfoModel>(
            data: MedicalInfoModel.fromJson(
              response.data['medicalInfo'],
            ).copyWith(
              prescription: PrescriptionModel.fromJson(
                response.data['prescription'],
              ),
            ),
            message: 'Appointments fetched successfully',
            success: true,
          ),
        );
      } else {
        throw HttpException('Appointments are not fetched');
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
