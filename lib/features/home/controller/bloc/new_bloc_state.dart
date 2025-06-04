part of 'new_bloc_bloc.dart';

@freezed
sealed class NewBlocState with _$NewBlocState {
  const factory NewBlocState({
    required int id,
    required DataStatus status,
    required String statusMessage,
    UserModel? user,
  }) = _NewBlocState;
  factory NewBlocState.initial() {
    return NewBlocState(
      id: 0,
      status: DataStatus.noData,
      statusMessage: 'No data',
    );
  }
}
