part of 'clinic_doctors_cubit.dart';

@freezed
class ClinicDoctorsState with _$ClinicDoctorsState {
  const factory ClinicDoctorsState({
    required DataStatus status,
    required String message,
    required ClinicModel clinic,
    required List<DoctorModel> doctorsList,
    required List<DoctorModel> doctorsSearchList,
  }) = _ClinicDoctorsState;
  factory ClinicDoctorsState.initial({required ClinicModel clinic}) {
    return ClinicDoctorsState(
      clinic: clinic,
      status: DataStatus.noData,
      message: 'No Data',
      doctorsList: [],

      doctorsSearchList: [],
    );
  }
}
