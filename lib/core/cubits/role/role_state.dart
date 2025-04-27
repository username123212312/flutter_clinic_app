part of 'role_cubit.dart';

@freezed
sealed class RoleState with _$RoleState {
  const factory RoleState.initial(Role role) = _Initial;
}
