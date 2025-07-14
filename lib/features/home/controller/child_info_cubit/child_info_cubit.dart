import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';

import '../../../../core/consts/app_constants.dart';
import '../../../../core/enums.dart';
import '../../../../core/models/app_failure.dart';
import '../../../../core/models/app_response.dart';
import '../../../../core/models/usermodel.dart';

part 'child_info_state.dart';
part 'child_info_cubit.freezed.dart';

class ChildInfoCubit extends Cubit<ChildInfoState> {
  ChildInfoCubit({required UserModel child})
    : super(ChildInfoState.initial(child: child));

  Future<void> fetchChildInfo() async {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    try {
      final response = await _showProfile(state.child.id ?? -1);
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          child: r.data ?? state.child,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> removeChild() async {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    try {
      final response = await _deleteChild(state.child.id ?? -1);
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

  Future<Either<AppFailure, AppResponse<UserModel>>> _showProfile(
    int childId,
  ) async {
    try {
      final response = await DioClient().instance.get(
        AppConstants.showProfilePath,
        queryParameters: {'child_id': childId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<UserModel>(
            data: UserModel.fromJson(response.data['data']),
            success: true,
            message: 'account fetched successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else if (response.data['statusCode'] == 404) {
        throw HttpException('There is no schedules yet');
      } else {
        throw HttpException('account\'s not fetched');
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

  Future<Either<AppFailure, AppResponse>> _deleteChild(int childId) async {
    try {
      final response = await DioClient().instance.delete(
        AppConstants.deleteChildPath,
        queryParameters: {'child_id': childId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'child removed successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException('child\'s not removed');
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
}
