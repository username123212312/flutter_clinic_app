part of 'doctor_show_child_record_cubit.dart';

@freezed
class DoctorShowChildRecordState with _$DoctorShowChildRecordState {
  const factory DoctorShowChildRecordState({
    required DataStatus status,
    required String message,
    required UserModel child,
    ChildRecord? record,
  }) = _DoctorShowChildRecordState;
  factory DoctorShowChildRecordState.initial({required UserModel child}) {
    return DoctorShowChildRecordState(
      child: child,
      message: 'No data',
      status: DataStatus.noData,
    );
  }
}
