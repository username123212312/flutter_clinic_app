part of 'patient_show_child_record_cubit.dart';

@freezed
class PatientShowChildRecordState with _$PatientShowChildRecordState {
  const factory PatientShowChildRecordState({
    required DataStatus status,
    required String message,
    ChildRecord? childRecord,
  }) = _PatientShowChildRecordState;
  factory PatientShowChildRecordState.initial() {
    return PatientShowChildRecordState(
      message: 'No data',
      status: DataStatus.noData,
    );
  }
}
