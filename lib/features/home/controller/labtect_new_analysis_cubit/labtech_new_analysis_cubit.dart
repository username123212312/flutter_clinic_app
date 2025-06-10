import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/models/app_failure.dart';
import 'package:our_flutter_clinic_app/core/models/app_response.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/features/home/model/clinic_model.dart';

import '../../../../core/enums.dart';

part 'labtech_new_analysis_state.dart';
part 'labtech_new_analysis_cubit.freezed.dart';

class LabtechNewAnalysisCubit extends Cubit<LabtechNewAnalysisState> {
  LabtechNewAnalysisCubit() : super(LabtechNewAnalysisState.initial());

  void selectClinic(ClinicModel clinic) {
    emit(state.copyWith(selectedClinic: clinic));
  }

  Future<void> fetchAllClinics() async {
    emit(state.copyWith(status: DataStatus.loading, statusMessage: 'Loading'));
    try {
      final response = await _fetchAllClinics();

      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          statusMessage: l.message,
        ),
        Right(value: final r) => state.copyWith(
          selectedClinic: null,
          status: DataStatus.done,
          statusMessage: r.message,
          clinics: r.data ?? state.clinics,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(status: DataStatus.error, statusMessage: e.toString()),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<List<ClinicModel>>>>
  _fetchAllClinics() async {
    try {
      final response = await DioClient().instance.get(
        AppConstants.labTechShowClinicsPath,
      );
      if ((response.statusCode ?? 500) < 300) {
        return Right(
          AppResponse<List<ClinicModel>>(
            success: true,
            message: 'Clinics fetched successfully',
            data:
                (response.data['items'] as List<dynamic>).map((clinic) {
                  return ClinicModel.fromJson(clinic);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Error');
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
