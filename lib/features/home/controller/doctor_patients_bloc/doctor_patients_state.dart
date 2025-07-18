part of 'doctor_patients_bloc.dart';

@freezed
class DoctorPatientsState with _$DoctorPatientsState {
  const factory DoctorPatientsState({
    required DataStatus status,
    required String message,
    required List<UserModel> patients,

    required int notificationsCount,
  }) = _DoctorPatientsState;
  factory DoctorPatientsState.initial() {
    return DoctorPatientsState(
      notificationsCount: 0,
      status: DataStatus.noData,
      message: 'No data',
      patients: [],
    );
  }
}
