part of 'doctor_info_cubit.dart';

@freezed
class DoctorInfoState with _$DoctorInfoState {
  const factory DoctorInfoState({
    required DataStatus status,
    required String message,
    required DoctorModel doctor,
    required List<DateTime> avaiableDates,
    DateTime? selectedDate,
    required List<TimeOfDay> availablTimes,
    TimeOfDay? selectedTime,
  }) = _DoctorInfoState;
  factory DoctorInfoState.initial(DoctorModel doctor) {
    return DoctorInfoState(
      doctor: doctor,
      status: DataStatus.noData,
      message: 'No data',
      avaiableDates: [],
      availablTimes: [],
    );
  }
}
