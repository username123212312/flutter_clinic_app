import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/models/app_failure.dart';

import '../../../../core/enums.dart';
import '../../../../core/models/app_response.dart';

part 'change_appointments_state.dart';
part 'change_appointments_cubit.freezed.dart';

class ChangeAppointmentsCubit extends Cubit<ChangeAppointmentsState> {
  ChangeAppointmentsCubit() : super(ChangeAppointmentsState.initial());

  Future<void> changeAppointmentsSchedules() async {}

  // Future<Either<AppFailure, AppResponse>> _changeAppointments() async {}
}
