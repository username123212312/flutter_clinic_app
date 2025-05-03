import 'package:flutter/foundation.dart';
import 'package:flutter_clinic_app/core/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'doctor_model.dart';
import 'patient_model.dart';

part 'appointment_model.freezed.dart';
part 'appointment_model.g.dart';

@freezed
sealed class AppointmentModel with _$AppointmentModel {
  factory AppointmentModel({
    required String service,
    required DoctorModel doctor,
    required String department,
    required DateTime dateAndTime,
    required PatientModel patient,
    required AppointmentStatus appointmentStatus,
  }) = _AppointmentModel;

  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);
}
