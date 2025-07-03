part of 'doctor_rate_cubit.dart';

@freezed
class DoctorRateState with _$DoctorRateState {
  const factory DoctorRateState({
    required DataStatus status,
    required String message,
    required DoctorModel doctor,
    double? rate,
    String? comment,
  }) = _DoctorRateState;
  factory DoctorRateState.initial(DoctorModel doctor) {
    return DoctorRateState(
      doctor: doctor,
      status: DataStatus.noData,
      message: 'No data',
    );
  }
}
