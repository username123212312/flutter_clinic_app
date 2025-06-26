part of 'change_password_cubit.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    String? email,
    String? phone,
    String? resetToken,
    required DataStatus status,
    required String message,
  }) = _ChangePasswordState;
  factory ChangePasswordState.initial() {
    return ChangePasswordState(status: DataStatus.noData, message: 'No data');
  }
}
