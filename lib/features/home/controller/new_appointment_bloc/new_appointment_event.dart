part of 'new_appointment_bloc.dart';

@freezed
class NewAppointmentEvent with _$NewAppointmentEvent {
  const factory NewAppointmentEvent.clinicsFetched() = ClinicsFetched;
  const factory NewAppointmentEvent.clinicDoctorsFetched({
    required ClinicModel clinic,
  }) = ClinicDoctorsFetched;
  const factory NewAppointmentEvent.allDoctorsFetched() = AllDoctorsFetched;
  const factory NewAppointmentEvent.doctorSelected({
    required DoctorModel doctor,
  }) = DoctorSelected;
  const factory NewAppointmentEvent.dateSelected({required DateTime date}) =
      DateSelected;
  const factory NewAppointmentEvent.scheduleSelected({
    required TimeOfDay time,
  }) = ScheduleSelected;
  const factory NewAppointmentEvent.bookedNewAppointment() =
      BookedNewAppointment;
  const factory NewAppointmentEvent.doctorSearched({required String query}) =
      DoctorSearched;
}
