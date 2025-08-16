part of 'select_vaccination_cubit.dart';

@freezed
class SelectVaccinationState with _$SelectVaccinationState {
  const factory SelectVaccinationState({
    required bool hasMore,
    required int currentPage,
    required DataStatus status,

    required String message,
    required List<VaccinationRecord> vaccines,
    required VaccintaionType type,
    VaccinationRecord? selectedVaccine,
  }) = _SelectVaccinationState;
  factory SelectVaccinationState.initial() {
    return SelectVaccinationState(
      currentPage: 0,
      hasMore: true,
      type: VaccintaionType.all,
      status: DataStatus.noData,
      message: 'No data',
      vaccines: [],
    );
  }
}
