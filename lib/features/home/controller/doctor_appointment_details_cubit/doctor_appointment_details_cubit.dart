import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/medical_info_model.dart';

import '../../../../core/consts/app_constants.dart';
import '../../../../core/enums.dart';
import '../../../../core/models/app_failure.dart';
import '../../../../core/models/app_response.dart';
import '../../../../core/providers/dio_client/dio_client.dart';
import '../../model/appointment_model.dart';
import '../../model/prescription_model.dart';

part 'doctor_appointment_details_state.dart';
part 'doctor_appointment_details_cubit.freezed.dart';

class DoctorAppointmentDetailsCubit
    extends Cubit<DoctorAppointmentDetailsState> {
  DoctorAppointmentDetailsCubit({required AppointmentModel appointment})
    : super(DoctorAppointmentDetailsState.initial(appointment: appointment));

  Future<void> fetchAppointmentResults() async {
    if (!(state.appointment.status ?? AppointmentStatus.cancelled).isVisited) {
      return;
    }
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    try {
      final response = await _fetchAppointmentsResults(
        appointmentId: state.appointment.id ?? -1,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          medicalInfo: r.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<Either<AppFailure, AppResponse<MedicalInfoModel>>>
  _fetchAppointmentsResults({required int appointmentId}) async {
    try {
      final response = await DioClient().instance.get(
        AppConstants.doctorshowAppointmantResultsPath,
        queryParameters: {'appointment_id': appointmentId},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<MedicalInfoModel>(
            data: MedicalInfoModel.fromJson(
              response.data['medicalInfo'],
            ).copyWith(
              prescription: PrescriptionModel.fromJson(
                response.data['prescription'],
              ),
            ),
            message: 'Appointments fetched successfully',
            success: true,
          ),
        );
      } else {
        throw HttpException('Appointments are not fetched');
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
