import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums.dart';

part 'add_new_appointment_request.freezed.dart';

@freezed
sealed class AddNewAppointmentRequest with _$AddNewAppointmentRequest {
  factory AddNewAppointmentRequest({
    required int doctorId,
    required DateTime date,
    TimeOfDay? time,
    @JsonKey(name: 'record_id') int? recordId,
    @Default(false) bool isVaccine,
    AppointmentType? type,
  }) = _AddNewAppointmentRequest;
}
