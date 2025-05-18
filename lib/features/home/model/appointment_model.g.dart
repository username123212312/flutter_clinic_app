// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) =>
    _AppointmentModel(
      service: json['service'] as String,
      doctor: DoctorModel.fromJson(json['doctor'] as Map<String, dynamic>),
      department: json['department'] as String,
      dateAndTime: DateTime.parse(json['dateAndTime'] as String),
      patient: PatientModel.fromJson(json['patient'] as Map<String, dynamic>),
      appointmentStatus:
          $enumDecode(_$AppointmentStatusEnumMap, json['appointmentStatus']),
    );

Map<String, dynamic> _$AppointmentModelToJson(_AppointmentModel instance) =>
    <String, dynamic>{
      'service': instance.service,
      'doctor': instance.doctor,
      'department': instance.department,
      'dateAndTime': instance.dateAndTime.toIso8601String(),
      'patient': instance.patient,
      'appointmentStatus':
          _$AppointmentStatusEnumMap[instance.appointmentStatus]!,
    };

const _$AppointmentStatusEnumMap = {
  AppointmentStatus.pending: 'pending',
  AppointmentStatus.finished: 'finished',
  AppointmentStatus.canceled: 'canceled',
};
