part of 'doctor_add_child_record_cubit.dart';

@freezed
class DoctorAddChildRecordState with _$DoctorAddChildRecordState {
  const factory DoctorAddChildRecordState({
    required DataStatus status,
    required String message,
    required UserModel child,
  }) = _DoctorAddChildRecordState;
  factory DoctorAddChildRecordState.initial({required UserModel child}) {
    return DoctorAddChildRecordState(
      child: child,
      message: 'No data',
      status: DataStatus.noData,
    );
  }
}
