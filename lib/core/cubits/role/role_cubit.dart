import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums.dart';

part 'role_state.dart';
part 'role_cubit.freezed.dart';

class RoleCubit extends Cubit<RoleState> {
  RoleCubit() : super(RoleState.initial(Role.patient));

  void toggleRole(Role role) {
    emit(state.copyWith(role: role));
  }
}
