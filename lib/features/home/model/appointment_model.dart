// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';

import '../../../core/utils/time_of_day_converter.dart';

part 'appointment_model.freezed.dart';
part 'appointment_model.g.dart';

@freezed
sealed class AppointmentModel with _$AppointmentModel {
  factory AppointmentModel({
    int? id,
    @JsonKey(name: 'doctor_photo') String? doctorPhoto,
    @JsonKey(name: 'doctor_name') String? doctorName,
    @JsonKey(name: 'doctor_speciality') String? doctorSpeciality,
    @JsonKey(name: 'reservation_date') DateTime? reservationDate,
    @JsonKey(name: 'reservation_hour')
    @TimeOfDayConverter()
    TimeOfDay? reservationHour,
    AppointmentStatus? status,
  }) = _AppointmentModel;

  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);
}
