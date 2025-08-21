import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/models/app_failure.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';

import '../../../../core/enums.dart';
import '../../../../core/models/app_response.dart';
import '../../model/requests/doctor_change_schedules_request.dart';

part 'change_appointments_state.dart';
part 'change_appointments_cubit.freezed.dart';

class ChangeAppointmentsCubit extends Cubit<ChangeAppointmentsState> {
  ChangeAppointmentsCubit() : super(ChangeAppointmentsState.initial());

  Future<void> changeAppointmentsSchedules({
    required DoctorChangeSchedulesRequest request,
  }) async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final response = await _changeAppointments(request);
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

  Future<Either<AppFailure, AppResponse>> _changeAppointments(
    DoctorChangeSchedulesRequest request,
  ) async {
    try {
      final response = await DioClient().instance.post(
        AppConstants.doctorChangSchedulePath,
        data: {
          'start_leave_date': DateFormat(
            'dd-MM-yyyy',
          ).format(request.startLeaveDate),
          'end_leave_date': DateFormat(
            'dd-MM-yyyy',
          ).format(request.endLeaveDate),
          'start_leave_time': formatTime24(request.startLeaveTime),
          'end_leave_time': formatTime24(request.endLeaveTime),
        },
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(success: true, message: 'Schedule successfully updated!'),
        );
      } else if (response.data['statusCode'] == 404) {
        throw HttpException('Schedule is not found');
      } else {
        throw HttpException('Appointments are not changed');
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
