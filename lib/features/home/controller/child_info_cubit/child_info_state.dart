part of 'child_info_cubit.dart';

@freezed
class ChildInfoState with _$ChildInfoState {
  const factory ChildInfoState({
    required DataStatus status,
    required String message,
    required UserModel child,
  }) = _ChildInfoState;

  factory ChildInfoState.initial({required UserModel child}) {
    return ChildInfoState(
      status: DataStatus.noData,
      child: child,
      message: 'No data',
    );
  }
}
