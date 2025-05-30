// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) =>
    _AppointmentModel(
      id: (json['id'] as num?)?.toInt(),
      doctorPhoto: json['doctor_photo'] as String?,
      doctorName: json['doctor_name'] as String?,
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
      'id': instance.id,
      'doctor_photo': instance.doctorPhoto,
      'doctor_name': instance.doctorName,
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
