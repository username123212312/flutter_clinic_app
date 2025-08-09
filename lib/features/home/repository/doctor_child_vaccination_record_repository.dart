import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';

import '../../../core/models/app_failure.dart';
import '../../../core/models/app_response.dart';
import '../model/requests/doctor_edit_vac_record_request.dart';
import '../model/vaccinationrecord.dart';

class DoctorChildVaccinationRecordRepository {
  Future<Either<AppFailure, AppResponse<List<VaccinationRecord>>>>
  fetchAllRecords(int childId) async {
    try {
      final response = await _dio.get(
        AppConstants.doctorShowChildVacRecordsPath,
        queryParameters: {'child_id': childId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<VaccinationRecord>>(
            success: true,
            message: 'Vacccination Records fetched successfully',
            data:
                (response.data['data'] as List<dynamic>).map((vacRecord) {
                  return VaccinationRecord.fromJson(vacRecord);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Vacccination Records are not fetched');
      }
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<VaccinationRecord>>>
  fetchVacRecordDetails(int vaccinationRecordId) async {
    try {
      final response = await _dio.get(
        AppConstants.doctorShowChildVacRecordDetailsPath,
        queryParameters: {'vaccination_record_id': vaccinationRecordId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<VaccinationRecord>(
            success: true,
            message: 'Vacccination Record fetched successfully',
            data: VaccinationRecord.fromJson(response.data),
          ),
        );
      } else {
        throw HttpException('Vacccination Record is not fetched');
      }
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<VaccinationRecord>>>
  editVacRecordDetails(DoctorEditVacRecordRequest request) async {
    try {
      final response = await _dio.post(
        AppConstants.doctorEditChildVacRecordDetailsPath,
        data: {
          'isTaken': request.isTaken ? 1 : 0,
          'record_id': request.recordId,
          if (request.doseNumber != null) 'dose_number': request.doseNumber,
          if (request.notes != null) 'notes': request.notes,
          if (request.nextVaccineDate != null)
            'next_vaccine_date': DateFormat(
              'yyyy-MM-dd',
            ).format(request.nextVaccineDate!),
        },
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<VaccinationRecord>(
            success: true,
            message: 'Vacccination Record fetched successfully',
            data: VaccinationRecord.fromJson(response.data),
          ),
        );
      } else {
        throw HttpException('Vacccination Record is not fetched');
      }
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  final Dio _dio = DioClient().instance;
}
