// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccinationrecord.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VaccinationRecordImpl _$$VaccinationRecordImplFromJson(
  Map<String, dynamic> json,
) => _$VaccinationRecordImpl(
  id: (json['id'] as num?)?.toInt(),
  vaccineId: (json['vaccine_id'] as num?)?.toInt(),
  vaccineName: json['vaccine_name'] as String?,
  vaccineDescription: json['vaccine_description'] as String?,
  vaccineAgeGroup: json['vaccine_age_group'] as String?,
  doctorFirstName: json['doctor_first_name'] as String?,
  doctorLastName: json['doctor_last_name'] as String?,
  notes: json['notes'] as String?,
  appointmentPaymentStatus: $enumDecodeNullable(
    _$PaymentStatusEnumMap,
    json['appointment_payment_status'],
  ),
  nextVaccineDate:
      json['next_vaccine_date'] == null
          ? null
          : DateTime.parse(json['next_vaccine_date'] as String),
  appointmentReservationDate:
      json['appointment_reservation_date'] == null
          ? null
          : DateTime.parse(json['appointment_reservation_date'] as String),
  doseNumber: (json['dose_number'] as num?)?.toInt(),
  doctorId: (json['doctor_id'] as num?)?.toInt(),
  appointmentId: (json['appointment_id'] as num?)?.toInt(),
  appointmentPrice: (json['appointment_price'] as num?)?.toInt(),
  vaccineRecommendedDoses: (json['vaccine_recommended_doses'] as num?)?.toInt(),
  dose: json['dose'] as String?,
  isTaken: (json['isTaken'] as num?)?.toInt(),
  whenToTake: json['when_to_take'] as String?,
  recommended: $enumDecodeNullable(
    _$VaccintaionTypeEnumMap,
    json['recommended'],
  ),
  price: json['price'] as String?,
);

Map<String, dynamic> _$$VaccinationRecordImplToJson(
  _$VaccinationRecordImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'vaccine_id': instance.vaccineId,
  'vaccine_name': instance.vaccineName,
  'vaccine_description': instance.vaccineDescription,
  'vaccine_age_group': instance.vaccineAgeGroup,
  'doctor_first_name': instance.doctorFirstName,
  'doctor_last_name': instance.doctorLastName,
  'notes': instance.notes,
  'appointment_payment_status':
      _$PaymentStatusEnumMap[instance.appointmentPaymentStatus],
  'next_vaccine_date': instance.nextVaccineDate?.toIso8601String(),
  'appointment_reservation_date':
      instance.appointmentReservationDate?.toIso8601String(),
  'dose_number': instance.doseNumber,
  'doctor_id': instance.doctorId,
  'appointment_id': instance.appointmentId,
  'appointment_price': instance.appointmentPrice,
  'vaccine_recommended_doses': instance.vaccineRecommendedDoses,
  'dose': instance.dose,
  'isTaken': instance.isTaken,
  'when_to_take': instance.whenToTake,
  'recommended': _$VaccintaionTypeEnumMap[instance.recommended],
  'price': instance.price,
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.paid: 'paid',
  PaymentStatus.pending: 'pending',
  PaymentStatus.unpaid: 'unpaid',
};

const _$VaccintaionTypeEnumMap = {
  VaccintaionType.now: 'now',
  VaccintaionType.all: 'all',
  VaccintaionType.upcoming: 'upcoming',
};
