part of 'ediit_child_vac_record_cubit.dart';

@freezed
class EdiitChildVacRecordState with _$EdiitChildVacRecordState {
  const factory EdiitChildVacRecordState({
    required DataStatus status,
    required String message,
    required VaccinationRecord vaccineRecord,
  }) = _EdiitChildVacRecordState;
  factory EdiitChildVacRecordState.initial({
    required VaccinationRecord vaccineRecord,
  }) {
    return EdiitChildVacRecordState(
      message: 'Loaded',
      status: DataStatus.loaded,
      vaccineRecord: vaccineRecord,
    );
  }
}
