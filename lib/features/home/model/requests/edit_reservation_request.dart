import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_reservation_request.freezed.dart';

@freezed
sealed class EditReservationRequest with _$EditReservationRequest {
  factory EditReservationRequest({
    required int appointmentId,
    required int clinicId,
    required int doctorId,
    required DateTime newDate,
    TimeOfDay? newTime,
  }) = _EditReservationRequest;
}
