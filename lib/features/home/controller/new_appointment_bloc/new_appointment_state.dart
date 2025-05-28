part of 'new_appointment_bloc.dart';

@freezed
sealed class NewAppointmentState with _$NewAppointmentState {
  const factory NewAppointmentState({
    ClinicModel? department,
    DoctorModel? doctor,
    String? statusMessage,
    List<DoctorModel>? doctors,
    List<ClinicModel>? clinics,
    DateTime? date,
    List<String>? availableSchedules,
    DataStatus? status,
  }) = _NewAppointmentState;
  factory NewAppointmentState.initial() {
    return NewAppointmentState(
      doctor: DoctorModel(firstName: 'Choose', lastName: ' a doctor'),
      clinics: [],
      statusMessage: 'Initial',
      status: DataStatus.noData,
      department: ClinicModel(name: 'Choose department'),
      doctors: [],
      availableSchedules: [],
      date: DateTime.now(),
    );
  }
}
