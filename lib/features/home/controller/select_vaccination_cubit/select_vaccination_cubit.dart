import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/models/app_failure.dart';
import 'package:our_flutter_clinic_app/core/models/app_response.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/features/home/model/vaccinationrecord.dart';

import '../../../../core/enums.dart';
import '../../../../core/navigation/navigation_exports.dart';

part 'select_vaccination_state.dart';
part 'select_vaccination_cubit.freezed.dart';

class SelectVaccinationCubit extends Cubit<SelectVaccinationState> {
  SelectVaccinationCubit() : super(SelectVaccinationState.initial());

  void reset([bool isResetVac = false]) {
    emit(
      isResetVac
          ? state.copyWith(selectedVaccine: null)
          : SelectVaccinationState.initial(),
    );
  }

  void chooseVaccine(VaccinationRecord vaccine) {
    emit(state.copyWith(selectedVaccine: vaccine));
  }

  void changeFilter(VaccintaionType type) {
    emit(state.copyWith(type: type));
    fetchVaccines();
  }

  Future<void> editVaccine(VaccinationRecord vaccine) async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final response = await _editVaccineStatus(
        vaccine.id ?? -1,
        vaccine.isTaken == 1,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.done,
          message: r.message,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> removeVaccine(VaccinationRecord vaccine) async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final response = await _deleteVaccine(vaccine.id ?? -1);
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.done,
          message: r.message,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> fetchVaccines() async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final response = await _fetchVaccines(state.type);
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
  _fetchVaccines(VaccintaionType type) async {
    try {
      final response = await DioClient().instance.get(
        AppConstants.showVaccinationRecordsPath,
        queryParameters: {
          if (getChildId() != null) 'child_id': getChildId(),
          if (!type.isAll) 'recommended': type.name,
        },
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<VaccinationRecord>>(
            success: true,
            message: 'vaccines fetched successfully',
            data:
                (response.data['items'] as List<dynamic>).map((vac) {
                  return VaccinationRecord.fromJson(vac);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('vaccines are not fetched');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse>> _deleteVaccine(int recordId) async {
    try {
      final response = await DioClient().instance.delete(
        AppConstants.deleteVaccinationRecordPath,
        queryParameters: {'record_id': recordId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'vaccine record deleted successfully',
          ),
        );
      } else {
        throw HttpException('vaccine record is not deleted');
      }
    } on DioException catch (e) {
      return Left(AppFailure(message: e.message ?? 'Error'));
    } on HttpException catch (e) {
      return Left(AppFailure(message: e.message));
    } catch (e) {
      return Left(AppFailure(message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse>> _editVaccineStatus(
    int recordId,
    bool isTaken,
  ) async {
    try {
      final response = await DioClient().instance.post(
        AppConstants.editVaccinationRecordPath,
        queryParameters: {'record_id': recordId, 'isTaken': isTaken ? 0 : 1},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'vaccine record edited successfully',
          ),
        );
      } else {
        throw HttpException('vaccine record is not edited');
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
