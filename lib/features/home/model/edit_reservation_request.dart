import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_reservation_request.freezed.dart';

@freezed
sealed class EditReservationRequest with _$EditReservationRequest {
  factory EditReservationRequest({
    required DateTime oldDate,
    required TimeOfDay oldTime,
    required int clinicId,
    required int doctorId,
    required DateTime newDate,
    required TimeOfDay newTime,
  }) = _EditReservationRequest;
}
