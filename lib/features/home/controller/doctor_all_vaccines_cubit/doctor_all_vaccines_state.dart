part of 'doctor_all_vaccines_cubit.dart';

@freezed
class DoctorAllVaccinesState with _$DoctorAllVaccinesState {
  const factory DoctorAllVaccinesState({
    required DataStatus status,
    required String message,
    required List<VaccinationRecord> vaccines,
  }) = _DoctorAllVaccinesState;
  factory DoctorAllVaccinesState.initial() {
    return DoctorAllVaccinesState(
      message: 'No data',
      status: DataStatus.noData,
      vaccines: [],
    );
  }
}
