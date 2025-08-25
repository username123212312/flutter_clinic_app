import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/requests/add_new_appointment_request.dart';
import 'package:our_flutter_clinic_app/features/home/model/vaccinationrecord.dart';

import '../../../../core/enums.dart';
import '../../model/doctor_model.dart';
import '../../repository/doctor_info_repository.dart';

part 'doctor_info_state.dart';
part 'doctor_info_cubit.freezed.dart';

class DoctorInfoCubit extends Cubit<DoctorInfoState> {
  DoctorInfoCubit({
    required DoctorInfoRepository doctorInfoRepository,
    required DoctorModel doctor,
  }) : _doctorInfoRepository = doctorInfoRepository,
       super(DoctorInfoState.initial(doctor));

  Future<void> fetchDoctorDetails() async {
    _emitLoading();
    try {
      final response = await _doctorInfoRepository.fetchDoctorDetails(
        state.doctor.id ?? 0,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          doctor: r.data ?? state.doctor,
          status: DataStatus.data,
          message: r.message,
        ),
      };

      emit(newState);

      if (!newState.status.isError) {
        fetchDoctorWorkDays();
      }
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> fetchDoctorWorkDays() async {
    _emitLoading();
    try {
      final response = await _doctorInfoRepository.fetchDoctorWorkDays(
        state.doctor.id ?? 0,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          avaiableDates: r.data ?? state.avaiableDates,
          status: DataStatus.data,
          message: r.message,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  void selectVaccine(VaccinationRecord? vaccine) {
    emit(state.copyWith(vaccine: vaccine));
  }

  void selectDate(DateTime date) {
    emit(state.copyWith(selectedDate: date));
    fetchDoctorWorkTimes();
  }

  Future<void> fetchDoctorWorkTimes() async {
    if (state.selectedDate != null) {
      _emitLoading();
      try {
        final response = await _doctorInfoRepository.showDoctorWorkTimes(
          state.doctor.clinicId ?? 0,
          state.doctor.id ?? 0,
          state.selectedDate!,
        );
        final newState = switch (response) {
          Left(value: final l) => state.copyWith(
            status: DataStatus.error,
            message: l.message,
          ),
          Right(value: final r) => state.copyWith(
            status: DataStatus.data,
            message: r.message,
            availableTimes: r.data ?? state.availableTimes,
            isAuto: (r.data ?? []).isEmpty,
          ),
        };
        emit(newState);
      } catch (e) {
        emit(state.copyWith(status: DataStatus.error, message: e.toString()));
      }
    }
  }

  void selectTime(TimeOfDay time) {
    emit(state.copyWith(selectedTime: time));
  }

  Future<void> bookNewAppointment() async {
    if (state.selectedDate != null) {
      _emitLoading();
      try {
        final response = await _doctorInfoRepository.addNewAppointment(
          AddNewAppointmentRequest(
            type:
                state.vaccine == null
                    ? AppointmentType.visit
                    : AppointmentType.vaccination,
            recordId: state.vaccine?.id,
            isVaccine: state.vaccine != null,
            doctorId: state.doctor.id ?? -1,
            date: state.selectedDate ?? DateTime.now(),
            time: (state.isAuto ?? false) ? null : state.selectedTime,
          ),
        );
        final newState = switch (response) {
          Left(value: final l) => state.copyWith(
            status: DataStatus.error,
            message: l.message,
          ),
          Right(value: final r) => state.copyWith(
            status: DataStatus.done,
            message: r.message,
            appointmentId: r.data,
          ),
        };
        emit(newState);
      } catch (e) {
        emit(state.copyWith(status: DataStatus.error, message: e.toString()));
      }
    }
  }

  void _emitLoading() {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
  }

  final DoctorInfoRepository _doctorInfoRepository;
}
