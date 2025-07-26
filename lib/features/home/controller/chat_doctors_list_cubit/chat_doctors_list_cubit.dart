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
import '../../../../core/models/usermodel.dart';

part 'chat_doctors_list_state.dart';
part 'chat_doctors_list_cubit.freezed.dart';

class ChatDoctorsListCubit extends Cubit<ChatDoctorsListState> {
  ChatDoctorsListCubit() : super(ChatDoctorsListState.initial());

  Future<void> fetchDoctors() async {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    try {
      final response = await _fetchDoctors();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          doctors: r.data ?? state.doctors,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<UserModel>>>>
  _fetchDoctors() async {
    try {
      final response = await DioClient().instance.get(
        AppConstants.showDoctorsPath,
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<UserModel>>(
            success: true,
            message: 'Doctors fetched successfully',
            data:
                (response.data['items'] as List<dynamic>).map((doctor) {
                  return UserModel.fromJson(doctor);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Doctors are not fetched');
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
