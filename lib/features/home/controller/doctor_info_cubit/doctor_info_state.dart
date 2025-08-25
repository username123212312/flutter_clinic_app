part of 'doctor_info_cubit.dart';

@freezed
class DoctorInfoState with _$DoctorInfoState {
  const factory DoctorInfoState({
    required DataStatus status,
    required String message,
    required DoctorModel doctor,
    required List<DateTime> avaiableDates,
    DateTime? selectedDate,
    required List<TimeOfDay> availableTimes,
    TimeOfDay? selectedTime,
    VaccinationRecord? vaccine,
    int? appointmentId,
    bool? isAuto,
  }) = _DoctorInfoState;
  factory DoctorInfoState.initial(DoctorModel doctor) {
    return DoctorInfoState(
      doctor: doctor,
      status: DataStatus.noData,
      message: 'No data',
      avaiableDates: [],
      availableTimes: [],
    );
  }
}
