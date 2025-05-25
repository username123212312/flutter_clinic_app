part of 'new_appointment_bloc.dart';

@freezed
sealed class NewAppointmentState with _$NewAppointmentState {
  const factory NewAppointmentState({
    required String departmentId,
    required List<DoctorModel> doctors,
    required DateTime date,
    required List<String> availableSchedules,
  }) = _NewAppointmentState;
  factory NewAppointmentState.initial() {
    return NewAppointmentState(
      departmentId: '0',
      doctors: [],
      availableSchedules: [],
      date: DateTime.now(),
    );
  }
}
