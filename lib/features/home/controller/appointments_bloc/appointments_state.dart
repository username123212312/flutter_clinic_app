part of 'appointments_bloc.dart';

@freezed
sealed class AppointmentsState with _$AppointmentsState {
  const factory AppointmentsState({
    List<AppointmentModel>? appointments,
    required AppointmentStatus appointmentStatus,
    required AppointmentType appointmentType,
    DataStatus? status,
    String? statusMessage,
  }) = _AppointmentsState;
  factory AppointmentsState.initial() {
    return AppointmentsState(
      appointmentType: AppointmentType.visit,
      appointments: [],
      appointmentStatus: AppointmentStatus.pending,
      status: DataStatus.noData,
      statusMessage: 'No message at all',
    );
  }
}
