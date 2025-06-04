part of 'new_bloc_bloc.dart';

@freezed
class NewBlocEvent with _$NewBlocEvent {
  const factory NewBlocEvent.started() = _Started;
  const factory NewBlocEvent.modified({required int id}) = Modified;
}
