import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_new_appointment_request.freezed.dart';

@freezed
sealed class AddNewAppointmentRequest with _$AddNewAppointmentRequest {
  factory AddNewAppointmentRequest({
    required int clinicId,
    required int doctorId,
    required DateTime date,
    required TimeOfDay time,
  }) = _AddNewAppointmentRequest;
}
