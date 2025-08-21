import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_change_schedules_request.freezed.dart';

@freezed
class DoctorChangeSchedulesRequest with _$DoctorChangeSchedulesRequest {
  factory DoctorChangeSchedulesRequest({
    required DateTime startLeaveDate,
    required DateTime endLeaveDate,
    required TimeOfDay startLeaveTime,
    required TimeOfDay endLeaveTime,
  }) = _DoctorChangeSchedulesRequest;
}
