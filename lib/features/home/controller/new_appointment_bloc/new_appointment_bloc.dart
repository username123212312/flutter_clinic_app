import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/doctor_model.dart';

part 'new_appointment_event.dart';
part 'new_appointment_state.dart';
part 'new_appointment_bloc.freezed.dart';

class NewAppointmentBloc
    extends Bloc<NewAppointmentEvent, NewAppointmentState> {
  NewAppointmentBloc() : super(NewAppointmentState.initial()) {
    on<NewAppointmentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
