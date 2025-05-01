import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc()
    : super(_UserInitial(email: '', password: '', role: Role.patient)) {
    on<UserReset>((event, emit) {
      emit(_UserInitial(email: '', password: '', role: Role.patient));
    });
    on<UserModified>((event, emit) {
      emit(
        _UserModified(
          email: event.email ?? state.email,
          password: event.password ?? state.password,
          role: event.role ?? state.role,
        ),
      );
    });
  }
}
