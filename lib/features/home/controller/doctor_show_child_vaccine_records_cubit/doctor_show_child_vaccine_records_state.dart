part of 'doctor_show_child_vaccine_records_cubit.dart';

@freezed
class DoctorShowChildVaccineRecordsState
    with _$DoctorShowChildVaccineRecordsState {
  const factory DoctorShowChildVaccineRecordsState({
    required int currentPage,
    required bool hasMore,
    required DataStatus status,
    required String message,
    required List<VaccinationRecord> vaccinesRecords,
    required UserModel child,
  }) = _DoctorShowChildVaccineRecordsState;

  factory DoctorShowChildVaccineRecordsState.initial({
    required UserModel child,
  }) {
    return DoctorShowChildVaccineRecordsState(
      currentPage: 0,
      hasMore: true,
      message: 'No data',
      status: DataStatus.noData,
      vaccinesRecords: [],
      child: child,
    );
  }
}
