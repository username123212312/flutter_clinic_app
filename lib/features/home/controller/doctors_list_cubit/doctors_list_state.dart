part of 'doctors_list_cubit.dart';

@freezed
class DoctorsListState with _$DoctorsListState {
  const factory DoctorsListState({
    required DataStatus status,
    required String message,
    required List<ClinicModel> clinics,
    required List<DoctorModel> doctors,
    ClinicModel? selectedClinic,
  }) = _DoctorsListState;
  factory DoctorsListState.initial() {
    return DoctorsListState(
      clinics: [],
      doctors: [],
      message: 'No data',
      status: DataStatus.noData,
    );
  }
}
