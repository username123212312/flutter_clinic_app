part of 'reschedule_appointment_cubit.dart';

@freezed
sealed class RescheduleAppointmentState with _$RescheduleAppointmentState {
  const factory RescheduleAppointmentState({
    AppointmentModel? appointment,
    bool? isAuto,
    DateTime? selectedDate,
    required List<DateTime> availableDates,
    TimeOfDay? selectedTime,
    List<TimeOfDay>? availableTimes,
    required DataStatus status,
    required String statusMessage,
  }) = _RescheduleAppointmentState;
  factory RescheduleAppointmentState.initial() {
    return RescheduleAppointmentState(
      availableDates: [],
      status: DataStatus.noData,
      statusMessage: 'No message',
    );
  }
}
