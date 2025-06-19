part of 'reminder_cubit.dart';

@freezed
class ReminderState with _$ReminderState {
  const factory ReminderState({
    required DataStatus status,
    required String message,
  }) = _ReminderState;
  factory ReminderState.initial() {
    return ReminderState(status: DataStatus.noData, message: 'No data');
  }
}
