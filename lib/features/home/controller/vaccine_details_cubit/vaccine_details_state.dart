part of 'vaccine_details_cubit.dart';

@freezed
class VaccineDetailsState with _$VaccineDetailsState {
  const factory VaccineDetailsState({
    required DataStatus status,
    required String message,
    required VaccinationRecord vaccine,
  }) = _VaccineDetailsState;
  factory VaccineDetailsState.initial({required VaccinationRecord vaccine}) {
    return VaccineDetailsState(
      status: DataStatus.noData,
      message: 'No data',
      vaccine: vaccine,
    );
  }
}
