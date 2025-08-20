part of 'doctor_all_vaccines_cubit.dart';

@freezed
class DoctorAllVaccinesState with _$DoctorAllVaccinesState {
  const factory DoctorAllVaccinesState({
    required DataStatus status,
    required String message,
    required bool hasMore,
    required int currentPage,
    required List<VaccinationRecord> vaccines,
  }) = _DoctorAllVaccinesState;
  factory DoctorAllVaccinesState.initial() {
    return DoctorAllVaccinesState(
      currentPage: 0,
      hasMore: true,
      message: 'No data',
      status: DataStatus.noData,
      vaccines: [],
    );
  }
}
