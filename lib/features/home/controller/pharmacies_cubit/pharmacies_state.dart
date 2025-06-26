part of 'pharmacies_cubit.dart';

@freezed
class PharmaciesState with _$PharmaciesState {
  const factory PharmaciesState({
    required DataStatus status,
    required String message,
    required List<PharmacyModel> pharmacies,
  }) = _PharmaciesState;
  factory PharmaciesState.initial() {
    return PharmaciesState(
      status: DataStatus.noData,
      message: 'No data',
      pharmacies: [],
    );
  }
}
