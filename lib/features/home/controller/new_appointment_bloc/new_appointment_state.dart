part of 'new_appointment_bloc.dart';

@freezed
sealed class NewAppointmentState with _$NewAppointmentState {
  const factory NewAppointmentState({
    ClinicModel? department,
    DoctorModel? doctor,
    List<DoctorModel>? searchList,
    String? statusMessage,
    List<DoctorModel>? doctors,
    List<ClinicModel>? clinics,
    List<DateTime>? dates,
    DateTime? date,
    List<TimeOfDay>? availableTimes,
    TimeOfDay? time,
    required DataStatus status,
    int? appointmentID,
  }) = _NewAppointmentState;
  factory NewAppointmentState.initial() {
    return NewAppointmentState(
      dates: [],
      time: TimeOfDay.now(),
      searchList: [],
      doctor: DoctorModel(firstName: 'Choose', lastName: ' a doctor'),
      clinics: [],
      statusMessage: 'Initial',
      status: DataStatus.noData,
      department: ClinicModel(name: 'Choose department'),
      doctors: [],
      availableTimes: [],
      date: DateTime.now(),
    );
  }
}
