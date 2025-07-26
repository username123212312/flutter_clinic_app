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

  void reset() {
    emit(SelectVaccinationState.initial());
  }

  void chooseVaccine(VaccinationRecord vaccine) {
    emit(state.copyWith(selectedVaccine: vaccine));
  }

  void changeFilter(VaccintaionType type) {
    emit(state.copyWith(type: type));
    fetchVaccines();
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
}
