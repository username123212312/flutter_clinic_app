part of 'reschedule_appointment_cubit.dart';

@freezed
sealed class RescheduleAppointmentState with _$RescheduleAppointmentState {
  const factory RescheduleAppointmentState({
    AppointmentModel? appointment,
    DateTime? selectedDate,
    required List<DateTime> availableDates,
    TimeOfDay? selectedTime,
    required List<TimeOfDay> availableTimes,
    DataStatus? status,
    String? statusMessage,
  }) = _RescheduleAppointmentState;
  factory RescheduleAppointmentState.initial() {
    return RescheduleAppointmentState(
      availableTimes: [],
      availableDates: [],
      status: DataStatus.noData,
      statusMessage: 'No message',
    );
  }
}
