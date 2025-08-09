import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums.dart';

part 'vaccinationrecord.freezed.dart';
part 'vaccinationrecord.g.dart';

@freezed
class VaccinationRecord with _$VaccinationRecord {
  factory VaccinationRecord({
    int? id,
    @JsonKey(name: 'vaccine_id') int? vaccineId,
    @JsonKey(name: 'vaccine_name') String? vaccineName,
    String? name,
    String? description,
    @JsonKey(name: 'age_group') String? ageGroup,
    @JsonKey(name: 'recommended_doses') int? recommendedDoses,
    @JsonKey(name: 'vaccine_description') String? vaccineDescription,
    @JsonKey(name: 'vaccine_age_group') String? vaccineAgeGroup,
    @JsonKey(name: 'doctor_first_name') String? doctorFirstName,
    @JsonKey(name: 'doctor_last_name') String? doctorLastName,
    String? notes,

    @JsonKey(name: 'appointment_payment_status')
    PaymentStatus? appointmentPaymentStatus,

    @JsonKey(name: 'next_vaccine_date') DateTime? nextVaccineDate,
    @JsonKey(name: 'appointment_reservation_date')
    DateTime? appointmentReservationDate,
    @JsonKey(name: 'dose_number') int? doseNumber,
    @JsonKey(name: 'doctor_id') int? doctorId,
    @JsonKey(name: 'appointment_id') int? appointmentId,
    @JsonKey(name: 'appointment_price') int? appointmentPrice,
    @JsonKey(name: 'vaccine_recommended_doses') int? vaccineRecommendedDoses,
    String? dose,
    int? isTaken,
    @JsonKey(name: 'when_to_take') String? whenToTake,
    VaccintaionType? recommended,
    String? price,
  }) = _VaccinationRecord;

  factory VaccinationRecord.fromJson(Map<String, dynamic> json) =>
      _$VaccinationRecordFromJson(json);
}
