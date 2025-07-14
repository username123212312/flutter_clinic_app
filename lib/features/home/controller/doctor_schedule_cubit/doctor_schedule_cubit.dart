import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/models/app_failure.dart';
import 'package:our_flutter_clinic_app/core/models/app_response.dart';
import 'package:our_flutter_clinic_app/features/home/model/work_day.dart';

import '../../../../core/enums.dart';
import '../../repository/doctor_schedule_repository.dart';

part 'doctor_schedule_state.dart';
part 'doctor_schedule_cubit.freezed.dart';

class DoctorScheduleCubit extends Cubit<DoctorScheduleState> {
  DoctorScheduleCubit({
    required DoctorScheduleRepository doctorScheduleRepository,
  }) : _doctorScheduleRepository = doctorScheduleRepository,
       super(DoctorScheduleState.initial());

  Future<void> fetchDoctorWorkDays() async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final response = await _doctorScheduleRepository.fetchDoctorWorkDays();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          workDays: r.data ?? state.workDays,
        ),
      };

      emit(newState);
    } catch (e) {
      emit(state.copyWith(message: e.toString(), status: DataStatus.error));
    }
  }

  Future<void> setSchedule({required List<WorkDay> workDays}) async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final response = await _doctorScheduleRepository.setSchedule(
        workDays: workDays,
      );
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
      emit(state.copyWith(message: e.toString(), status: DataStatus.error));
    }
  }

  final DoctorScheduleRepository _doctorScheduleRepository;
}
