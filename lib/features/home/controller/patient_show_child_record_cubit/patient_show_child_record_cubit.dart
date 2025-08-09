import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/models/app_failure.dart';
import 'package:our_flutter_clinic_app/core/models/app_response.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';

import '../../../../core/enums.dart';
import '../../model/child_record.dart';

part 'patient_show_child_record_state.dart';
part 'patient_show_child_record_cubit.freezed.dart';

class PatientShowChildRecordCubit extends Cubit<PatientShowChildRecordState> {
  PatientShowChildRecordCubit() : super(PatientShowChildRecordState.initial());

  Future<void> getChildRecord() async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final response = await _fetchChildRecord();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          childRecord: r.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<ChildRecord>>>
  _fetchChildRecord() async {
    try {
      final response = await DioClient().instance.get(
        AppConstants.showChildRecordPath,
        queryParameters: {if (getChildId() != null) 'child_id': getChildId()},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<ChildRecord>(
            data: ChildRecord.fromJson(response.data),
            success: true,
            message: 'Record fetched successfully!',
          ),
        );
      } else {
        throw HttpException('Record is not fetched');
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
