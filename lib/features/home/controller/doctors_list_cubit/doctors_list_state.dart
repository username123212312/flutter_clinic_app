part of 'doctors_list_cubit.dart';

@freezed
class DoctorsListState with _$DoctorsListState {
  const factory DoctorsListState({
    required DataStatus status,
    required String message,
    required List<ClinicModel> clinics,
    required List<DoctorModel> doctors,
    required bool hasMore,
    required int currentPage,
    ClinicModel? selectedClinic,
  }) = _DoctorsListState;
  factory DoctorsListState.initial() {
    return DoctorsListState(
      currentPage: 0,
      hasMore: true,
      clinics: [],
      doctors: [],
      message: 'No data',
      status: DataStatus.noData,
    );
  }
}
