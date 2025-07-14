import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/models/app_failure.dart';
import 'package:our_flutter_clinic_app/core/models/app_response.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/features/home/model/review_model.dart';

import '../../../../core/enums.dart';

part 'doctor_reviews_state.dart';
part 'doctor_reviews_cubit.freezed.dart';

class DoctorReviewsCubit extends Cubit<DoctorReviewsState> {
  DoctorReviewsCubit() : super(DoctorReviewsState.initial());

  Future<void> fetchAllReviews() async {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    try {
      final response = await _fetchAllReviews();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          reviews: r.data ?? state.reviews,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<ReviewModel>>>>
  _fetchAllReviews() async {
    try {
      final response = await DioClient().instance.get(
        AppConstants.showDoctorReviewsPath,
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<ReviewModel>>(
            success: true,
            message: 'Reviews fetched successfully',
            data:
                (response.data['data'] as List<dynamic>).map((review) {
                  return ReviewModel.fromJson(review);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Reviews are not fetched');
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
