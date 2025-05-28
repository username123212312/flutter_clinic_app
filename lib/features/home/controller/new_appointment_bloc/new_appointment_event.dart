part of 'new_appointment_bloc.dart';

@freezed
class NewAppointmentEvent with _$NewAppointmentEvent {
  const factory NewAppointmentEvent.clinicsFetched() = ClinicsFetched;
  const factory NewAppointmentEvent.doctorsFetched({
    required ClinicModel clinic,
  }) = DoctorsFetched;
  const factory NewAppointmentEvent.doctorSelected({
    required DoctorModel doctor,
  }) = DoctorSelected;
  const factory NewAppointmentEvent.dateSelected() = DateSelected;
  const factory NewAppointmentEvent.scheduleSelected() = ScheduleSelected;
}
