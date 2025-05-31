import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/appointment_model.dart';

part 'appointment_details_event.dart';
part 'appointment_details_state.dart';
part 'appointment_details_bloc.freezed.dart';

class AppointmentDetailsBloc
    extends Bloc<AppointmentDetailsEvent, AppointmentDetailsState> {
  AppointmentDetailsBloc({required AppointmentModel appointment})
    : super(AppointmentDetailsState.initial(appointment)) {}
}
