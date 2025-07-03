part of 'clinics_cubit.dart';

@freezed
class ClinicsState with _$ClinicsState {
  const factory ClinicsState({
    required DataStatus status,
    required String message,
    required List<ClinicModel> clinics,
  }) = _ClinicsState;
  factory ClinicsState.initial() {
    return ClinicsState(
      status: DataStatus.noData,
      message: 'No data',
      clinics: [],
    );
  }
}
