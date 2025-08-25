// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';

import '../../../core/utils/appointment_typpe_converter.dart';
import '../../../core/utils/doctor_appointment_type_converter.dart';
import '../../../core/utils/time_of_day_converter.dart';

part 'appointment_model.freezed.dart';
part 'appointment_model.g.dart';

@freezed
sealed class AppointmentModel with _$AppointmentModel {
  factory AppointmentModel({
    @JsonKey(name: 'appointment_id') int? id,
    @JsonKey(name: 'queue_number') int? queueNumber,
    @AppointmentTypeConverter() AppointmentType? type,
    int? finalRate,
    @JsonKey(name: 'referred by') String? referredBy,
    @JsonKey(name: 'clinic_id') int? clinicId,
    @JsonKey(name: 'clinic_name') String? clinicName,
    @JsonKey(name: 'patient_gender') String? patientGender,
    @JsonKey(name: 'doctor_id') int? doctorId,
    @JsonKey(name: 'doctor_photo') String? doctorPhoto,
    @JsonKey(name: 'average_visit_duration') String? averageVisitDuration,
    @JsonKey(name: 'doctor_name') String? doctorName,
    @JsonKey(name: 'patient_first_name') String? patientFirstName,
    @JsonKey(name: 'patient_last_name') String? patientLastName,
    @JsonKey(name: 'appointment_type')
    @DoctorAppointmentTypeConverter()
    DoctorAppointmentType? appointmentType,
    @JsonKey(name: 'visit_fee') double? visitFee,
    @JsonKey(name: 'expected_price') int? expectedPrice,
    @JsonKey(name: 'paid_price') int? paidPrice,
    @JsonKey(name: 'doctor_speciality') String? doctorSpeciality,
    @JsonKey(name: 'reservation_date') DateTime? reservationDate,
    @JsonKey(name: 'reservation_hour')
    @TimeOfDayConverter()
    TimeOfDay? reservationHour,
    AppointmentStatus? status,
    @JsonKey(name: 'reminder_offset') int? reminderOffset,
    @JsonKey(name: 'payment_status') PaymentStatus? paymentStatus,
  }) = _AppointmentModel;

  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);
}
