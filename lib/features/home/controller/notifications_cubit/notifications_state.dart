part of 'notifications_cubit.dart';

@freezed
sealed class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    required DataStatus status,
    required String message,
    required List<Notification> notifications,
  }) = _NotificationsState;
  factory NotificationsState.initial() {
    return NotificationsState(
      notifications: [],
      status: DataStatus.noData,
      message: 'No data',
    );
  }
}
