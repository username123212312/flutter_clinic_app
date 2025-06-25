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
import '../../model/notification.dart';

part 'notifications_state.dart';
part 'notifications_cubit.freezed.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit() : super(NotificationsState.initial());

  Future<void> fetchAllNotifications() async {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    try {
      final response = await _fetchAllNotifications();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          notifications: r.data ?? state.notifications,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<List<Notification>>>>
  _fetchAllNotifications() async {
    try {
      final response = await DioClient().instance.get(
        AppConstants.getAllNotificationsPath,
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<Notification>>(
            success: true,
            message: 'Notifications fetched',
            data:
                (response.data['items'] as List<dynamic>).map((notification) {
                  return Notification.fromJson(notification);
                }).toList(),
          ),
        );
      } else {
        throw HttpException('Notifications are not fetched');
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
