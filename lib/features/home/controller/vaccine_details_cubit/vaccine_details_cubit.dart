import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/models/app_failure.dart';
import 'package:our_flutter_clinic_app/core/models/app_response.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';

import '../../../../core/enums.dart';
import '../../model/vaccinationrecord.dart';

part 'vaccine_details_state.dart';
part 'vaccine_details_cubit.freezed.dart';

class VaccineDetailsCubit extends Cubit<VaccineDetailsState> {
  VaccineDetailsCubit({required VaccinationRecord vaccine})
    : super(VaccineDetailsState.initial(vaccine: vaccine));

  Future<void> fetchVaccineDetails() async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final response = await _fetchVaccineDetails(state.vaccine.id ?? -1);
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          vaccine: (r.data ?? state.vaccine).copyWith(
            price: state.vaccine.price,
          ),
        ),
      };

      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<VaccinationRecord>>>
  _fetchVaccineDetails(int recordId) async {
    try {
      final response = await DioClient().instance.get(
        AppConstants.showVaccinationRecordDetailsPath,
        queryParameters: {'record_id': recordId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<VaccinationRecord>(
            success: true,
            message: 'Vaccination details fetched',
            data: VaccinationRecord.fromJson(response.data),
          ),
        );
      } else {
        throw HttpException('Vaccination details are not fetched');
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
