import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/models/app_failure.dart';
import 'package:our_flutter_clinic_app/core/models/app_response.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';

import '../../model/report_model.dart';

part 'report_state.dart';
part 'report_cubit.freezed.dart';

class ReportCubit extends Cubit<ReportState> {
  ReportCubit() : super(ReportState.initial());

  Future<void> report(ReportModel report) async {
    _emitLoading();
    try {
      final response = await _report(report);
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

  void _emitLoading() {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
  }

  Future<Either<AppFailure, AppResponse>> _report(ReportModel report) async {
    try {
      final response = await DioClient().instance.post(
        AppConstants.reportPath,

        data: {'type': report.type, 'description': report.description},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(success: true, message: 'Report added successfully'),
        );
      } else {
        return throw HttpException('Report is not added');
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
