// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) =>
    _AppointmentModel(
      id: (json['appointment_id'] as num?)?.toInt(),
      type: json['type'] as String?,
      finalRate: json['finalRate'] as String?,
      clinicId: (json['clinic_id'] as num?)?.toInt(),
      clinicName: json['clinic_name'] as String?,
      doctorId: (json['doctor_id'] as num?)?.toInt(),
      doctorPhoto: json['doctor_photo'] as String?,
      doctorName: json['doctor_name'] as String?,
      visitFee: (json['visit_fee'] as num?)?.toDouble(),
      doctorSpeciality: json['doctor_speciality'] as String?,
      reservationDate: json['reservation_date'] == null
          ? null
          : DateTime.parse(json['reservation_date'] as String),
      reservationHour: const TimeOfDayConverter()
          .fromJson(json['reservation_hour'] as String?),
      status: $enumDecodeNullable(_$AppointmentStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$AppointmentModelToJson(_AppointmentModel instance) =>
    <String, dynamic>{
      'appointment_id': instance.id,
      'type': instance.type,
      'finalRate': instance.finalRate,
      'clinic_id': instance.clinicId,
      'clinic_name': instance.clinicName,
      'doctor_id': instance.doctorId,
      'doctor_photo': instance.doctorPhoto,
      'doctor_name': instance.doctorName,
      'visit_fee': instance.visitFee,
      'doctor_speciality': instance.doctorSpeciality,
      'reservation_date': instance.reservationDate?.toIso8601String(),
      'reservation_hour':
          const TimeOfDayConverter().toJson(instance.reservationHour),
      'status': _$AppointmentStatusEnumMap[instance.status],
    };

const _$AppointmentStatusEnumMap = {
  AppointmentStatus.pending: 'pending',
  AppointmentStatus.finished: 'finished',
  AppointmentStatus.canceled: 'canceled',
};
