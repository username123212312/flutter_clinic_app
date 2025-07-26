part of 'select_vaccination_cubit.dart';

@freezed
class SelectVaccinationState with _$SelectVaccinationState {
  const factory SelectVaccinationState({
    required DataStatus status,
    required String message,
    required List<VaccinationRecord> vaccines,
    required VaccintaionType type,
    VaccinationRecord? selectedVaccine,
  }) = _SelectVaccinationState;
  factory SelectVaccinationState.initial() {
    return SelectVaccinationState(
      type: VaccintaionType.all,
      status: DataStatus.noData,
      message: 'No data',
      vaccines: [],
    );
  }
}
