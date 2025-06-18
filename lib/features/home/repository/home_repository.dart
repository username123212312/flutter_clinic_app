import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/clinic_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/doctor_model.dart';

import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';
import '../model/pharmacy_model.dart';

class HomeRepository {
  HomeRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<List<AppointmentModel>>>>
  fetchUpcomingAppointments() async {
    try {
      final response = await _dio.post(
        AppConstants.showAppointmentPath,
        data: {'status': 'pending'},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<AppointmentModel>>(
            success: true,
            message: 'Appointments fetched successfully!',
            data:
                (response.data['items'] as List<dynamic>)
                    .map((appointment) {
                      return AppointmentModel.fromJson(appointment);
                    })
                    .take(5)
                    .toList(),
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

  Future<Either<AppFailure, AppResponse<List<DoctorModel>>>>
  fetchBestDoctors() async {
    try {
      final response = await _dio.get(AppConstants.showTopRatedDoctorsPath);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<DoctorModel>>(
            success: true,
            message: 'Doctors fetched successfully!',
            data:
                (response.data['top rated doctors'] as List<dynamic>)
                    .map((doctor) {
                      return DoctorModel.fromJson(doctor);
                    })
                    .take(5)
                    .toList(),
          ),
        );
      } else {
        throw HttpException('Doctors are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<PharmacyModel>>>>
  fetchNearByPharmacies() async {
    try {
      final response = await _dio.get(AppConstants.showAllPharmaciesPath);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<PharmacyModel>>(
            success: true,
            message: 'Pharmacies fetched successfully!',
            data:
                (response.data['data'] as List<dynamic>).map((pharmacy) {
                  return PharmacyModel.fromJson(pharmacy);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Pharmacies are not fetched');
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
