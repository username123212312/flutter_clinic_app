import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/requests/edit_reservation_request.dart';
import 'package:our_flutter_clinic_app/features/home/repository/reschedule_appointment_repository.dart';

part 'reschedule_appointment_state.dart';
part 'reschedule_appointment_cubit.freezed.dart';

class RescheduleAppointmentCubit extends Cubit<RescheduleAppointmentState> {
  RescheduleAppointmentCubit({
    required RescheduleAppointmentRepository rescheduleAppointmentRepository,
  }) : _rescheduleAppointmentRepository = rescheduleAppointmentRepository,
       super(RescheduleAppointmentState.initial());

  Future<void> fetchAppointment({required int appointmentId}) async {
    _emitLoading();
    final response = await _rescheduleAppointmentRepository
        .fetchAppointmentDetails(appointmentId);
    final newState = switch (response) {
      Left(value: final l) => state.copyWith(
        status: DataStatus.error,
        statusMessage: l.message,
      ),
      Right(value: final r) => state.copyWith(
        appointment: r.data,
        selectedDate: r.data?.reservationDate ?? DateTime.now(),
        selectedTime: r.data?.reservationHour ?? TimeOfDay.now(),
        status: DataStatus.data,
        statusMessage: r.message,
      ),
    };
    emit(newState);
    showDoctorWorkDays(
      state.appointment?.clinicId ?? 0,
      state.appointment?.doctorId ?? 0,
    );
  }

  Future<void> showDoctorWorkDays(int clinicId, int doctorId) async {
    _emitLoading();
    try {
      final response = await _rescheduleAppointmentRepository
          .showDoctorWorkDays(clinicId, doctorId);
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          statusMessage: l.message,
          status: DataStatus.error,
        ),
        Right(value: final r) => state.copyWith(
          statusMessage: r.message,
          availableDates: r.data ?? [],
          status: DataStatus.data,
        ),
      };

      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(statusMessage: e.toString(), status: DataStatus.error),
      );
    }
  }

  Future<void> showAvailableTimes(DateTime date) async {
    try {
      _emitLoading();
      final response = await _rescheduleAppointmentRepository
          .showDoctorWorkTimes(
            state.appointment?.clinicId ?? 0,
            state.appointment?.doctorId ?? 0,
            date,
          );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          statusMessage: l.message,
          status: DataStatus.error,
        ),
        Right(value: final r) => state.copyWith(
          availableTimes: r.data,

          isAuto: (r.data ?? []).isEmpty,
          selectedDate: date,
          statusMessage: r.message,
          status: DataStatus.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(statusMessage: e.toString(), status: DataStatus.error),
      );
    }
  }

  Future<void> editReservation() async {
    try {
      _emitLoading();
      final response = await _rescheduleAppointmentRepository.editReservation(
        EditReservationRequest(
          appointmentId: state.appointment?.id ?? 0,
          clinicId: state.appointment?.clinicId ?? 0,
          doctorId: state.appointment?.doctorId ?? 0,
          newDate: state.selectedDate ?? DateTime.now(),
          newTime: (state.isAuto ?? false) ? null : state.selectedTime,
        ),
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          statusMessage: l.message,
          status: DataStatus.error,
        ),
        Right(value: final r) => state.copyWith(
          statusMessage: r.message,
          status: DataStatus.done,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(statusMessage: e.toString(), status: DataStatus.error),
      );
    }
  }

  void selectTime(TimeOfDay time) {
    emit(state.copyWith(selectedTime: time));
  }

  void _emitLoading() {
    emit(state.copyWith(status: DataStatus.loading, statusMessage: 'Loading'));
  }

  final RescheduleAppointmentRepository _rescheduleAppointmentRepository;
}
