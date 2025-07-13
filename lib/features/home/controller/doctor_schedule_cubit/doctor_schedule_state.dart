part of 'doctor_schedule_cubit.dart';

@freezed
class DoctorScheduleState with _$DoctorScheduleState {
  const factory DoctorScheduleState({
    required DataStatus status,
    required String message,
    required List<WorkDay> workDays,
  }) = _DoctorScheduleState;
  factory DoctorScheduleState.initial() {
    return DoctorScheduleState(
      workDays: [],
      message: 'No data',
      status: DataStatus.noData,
    );
  }
}
