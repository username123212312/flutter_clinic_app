import 'dart:io';

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/models/app_failure.dart';
import 'package:our_flutter_clinic_app/core/models/app_response.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/features/home/model/clinic_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/doctor_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:our_flutter_clinic_app/features/home/model/requests/add_new_appointment_request.dart';

class NewAppointmentRepository {
  NewAppointmentRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<List<ClinicModel>>>>
  fetchAllClinics() async {
    try {
      final response = await _dio.get(AppConstants.showClinicsPath);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Clinics fetched successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
            data:
                (response.data['items'] as List<dynamic>).map((clinic) {
                  return ClinicModel.fromJson(clinic);
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

  Future<Either<AppFailure, AppResponse<List<DoctorModel>>>> fetchClinicDoctors(
    int clinicId,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.showClinicDoctorsPath,
        data: {'clinic_id': clinicId},
      );
      eLog(response.data);
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

  Future<Either<AppFailure, AppResponse<List<DoctorModel>>>>
  fetchAllDoctors() async {
    try {
      final response = await _dio.get(AppConstants.showDoctorsPath);
      eLog(response.data);
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

  Future<Either<AppFailure, AppResponse<List<DateTime>>>> showDoctorWorkDays(
    int clinicId,
    int doctorId,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.showDoctorWorkDaysPath,
        data: {'clinic_id': clinicId, 'doctor_id': doctorId},
      );
      eLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Doctor work days fetched successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
            data:
                (response.data['available_dates'] as List<dynamic>).map((date) {
                  return DateTime.tryParse(date) ?? DateTime.now();
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

  Future<Either<AppFailure, AppResponse<List<TimeOfDay>>>> showDoctorWorkTimes(
    int clinicId,
    int doctorId,
    DateTime selectedDate,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.showTimesPath,
        data: {
          'clinic_id': clinicId,
          'doctor_id': doctorId,
          'date': DateFormat('dd/MM/yy').format(selectedDate).toString(),
        },
      );
      eLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Doctor work times fetched successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
            data:
                (response.data['items'] as List<dynamic>).map((time) {
                  return parseTimeWithDateFormat(time);
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

  Future<Either<AppFailure, AppResponse>> addNewAppointment(
    AddNewAppointmentRequest request,
  ) async {
    try {
      final time = formatTime(request.time, false).trim();
      final response = await _dio.post(
        AppConstants.addReservationPath,
        data: {
          'clinic_id': request.clinicId,
          'doctor_id': request.doctorId,
          'date': DateFormat('dd/MM/yy').format(request.date),
          'time': time,
        },
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Appointment added successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(response.data['message'] ?? 'Error');
      }
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

  Future<Either<AppFailure, AppResponse<List<DoctorModel>>>> searchDoctor(
    String query,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.searchDoctorPath,
        data: {'name': query},
      );
      eLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Doctor fetched successfully',
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

  late final Dio _dio;
}
