part of 'modify_child_record_cubit.dart';

@freezed
class ModifyChildRecordState with _$ModifyChildRecordState {
  const factory ModifyChildRecordState({
    required DataStatus status,
    required String message,
    required ChildRecord record,
  }) = _ModifyChildRecordState;
  factory ModifyChildRecordState.initial({required ChildRecord record}) {
    return ModifyChildRecordState(
      status: DataStatus.noData,
      message: 'No data',
      record: record,
    );
  }
}
