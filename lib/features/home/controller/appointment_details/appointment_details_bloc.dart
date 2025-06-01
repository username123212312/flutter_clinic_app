import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/medical_info_model.dart';
import 'package:our_flutter_clinic_app/features/home/repository/appointment_details_repository.dart';

import '../../../../core/enums.dart';
import '../../model/appointment_model.dart';

part 'appointment_details_event.dart';
part 'appointment_details_state.dart';
part 'appointment_details_bloc.freezed.dart';

class AppointmentDetailsBloc
    extends Bloc<AppointmentDetailsEvent, AppointmentDetailsState> {
  AppointmentDetailsBloc({
    required AppointmentDetailsRepository appointmentDetailsRepository,
    required AppointmentModel appointment,
  }) : _appointmentDetailsRepository = appointmentDetailsRepository,
       super(AppointmentDetailsState.initial(appointment)) {
    on<AppointmentDetailsEvent>(
      (event, emit) => emit(
        state.copyWith(status: DataStatus.loading, statusMessage: 'Loading'),
      ),
    );
    on<AppointmentFetched>(_fetchAppointment);
    on<PrescriptionDownloaded>(_downloadPrescription);
  }

  Future<void> _fetchAppointment(
    AppointmentFetched event,
    Emitter<AppointmentDetailsState> emit,
  ) async {
    try {
      MedicalInfoModel? medicalInfo;
      final response = await _appointmentDetailsRepository.fetchAppointment(
        state.appointment?.id ?? 0,
      );
      if (state.appointment?.status?.isVisited ?? false) {
        final medicalInforesponse = await _appointmentDetailsRepository
            .fetchAppointmentResults(state.appointment?.id ?? 0);
        medicalInfo = switch (medicalInforesponse) {
          Left() => null,
          Right(value: final r) => r.data,
        };
      }
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          statusMessage: l.message,
        ),
        Right(value: final r) => state.copyWith(
          medicalInfo: medicalInfo,
          appointment: r.data ?? state.appointment,
          status: DataStatus.data,
          statusMessage: 'Appointment fetched',
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(status: DataStatus.error, statusMessage: e.toString()),
      );
    }
  }

  Future<void> _downloadPrescription(
    PrescriptionDownloaded event,
    Emitter<AppointmentDetailsState> emit,
  ) async {
    try {
      final response = await _appointmentDetailsRepository.downloadPrescription(
        event.prescriptionId,
        (progress) {
          emit(
            state.copyWith(
              downloadProgress: progress == 1.0 ? 0.0 : progress,
              status:
                  progress == 1.0 ? DataStatus.done : DataStatus.downloading,
            ),
          );
        },
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          statusMessage: l.message,
        ),
        Right(value: final r) => state.copyWith(
          prescriptionFilePath: r.data,
          status: DataStatus.data,
          statusMessage: 'Appointment fetched',
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(status: DataStatus.error, statusMessage: e.toString()),
      );
    }
  }

  final AppointmentDetailsRepository _appointmentDetailsRepository;
}
