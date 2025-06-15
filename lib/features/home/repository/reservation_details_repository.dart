import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';

import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';
import '../model/appointment_model.dart';

class ReservationDetailsRepository {
  ReservationDetailsRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<AppointmentModel>>> fetchAppointment(
    int appointmentId,
  ) async {
    try {
      final response = await _dio.get(
        AppConstants.showAppointmentInfoPath,
        queryParameters: {'appointment_id': appointmentId},
      );

      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Appointment fetched successfully',
            data: AppointmentModel.fromJson(response.data),
          ),
        );
      } else {
        throw HttpException('Appointment is not fetched');
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
