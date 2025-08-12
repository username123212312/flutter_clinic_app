import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/models/app_failure.dart';
import 'package:our_flutter_clinic_app/core/models/app_response.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/features/home/model/vaccinationrecord.dart';

import '../../../../core/enums.dart';

part 'doctor_all_vaccines_state.dart';
part 'doctor_all_vaccines_cubit.freezed.dart';

class DoctorAllVaccinesCubit extends Cubit<DoctorAllVaccinesState> {
  DoctorAllVaccinesCubit() : super(DoctorAllVaccinesState.initial());

  Future<void> fetchAllVaccines() async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final response = await _fetchAllVaccines();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          vaccines: r.data ?? state.vaccines,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<VaccinationRecord>>>>
  _fetchAllVaccines() async {
    try {
      final response = await DioClient().instance.get(
        AppConstants.doctorShowVaccinesPath,
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<VaccinationRecord>>(
            success: true,
            message: 'Vaccines fetched successfully',
            data:
                (response.data['data'] as List<dynamic>).map((vaccine) {
                  return VaccinationRecord.fromJson(vaccine);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Vaccines are not fetched');
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
