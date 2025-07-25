// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentModelImpl _$$AppointmentModelImplFromJson(
  Map<String, dynamic> json,
) => _$AppointmentModelImpl(
  id: (json['appointment_id'] as num?)?.toInt(),
  type: json['type'] as String?,
  finalRate: (json['finalRate'] as num?)?.toInt(),
  referredBy: json['referred by'] as String?,
  clinicId: (json['clinic_id'] as num?)?.toInt(),
  clinicName: json['clinic_name'] as String?,
  doctorId: (json['doctor_id'] as num?)?.toInt(),
  doctorPhoto: json['doctor_photo'] as String?,
  doctorName: json['doctor_name'] as String?,
  patientFirstName: json['patient_first_name'] as String?,
  patientLastName: json['patient_last_name'] as String?,
  appointmentType: const DoctorAppointmentTypeConverter().fromJson(
    json['appointment_type'] as String?,
  ),
  visitFee: (json['visit_fee'] as num?)?.toDouble(),
  doctorSpeciality: json['doctor_speciality'] as String?,
  reservationDate:
      json['reservation_date'] == null
          ? null
          : DateTime.parse(json['reservation_date'] as String),
  reservationHour: const TimeOfDayConverter().fromJson(
    json['reservation_hour'] as String?,
  ),
  status: $enumDecodeNullable(_$AppointmentStatusEnumMap, json['status']),
  reminderOffset: (json['reminder_offset'] as num?)?.toInt(),
  paymentStatus: $enumDecodeNullable(
    _$PaymentStatusEnumMap,
    json['payment_status'],
  ),
);

Map<String, dynamic> _$$AppointmentModelImplToJson(
  _$AppointmentModelImpl instance,
) => <String, dynamic>{
  'appointment_id': instance.id,
  'type': instance.type,
  'finalRate': instance.finalRate,
  'referred by': instance.referredBy,
  'clinic_id': instance.clinicId,
  'clinic_name': instance.clinicName,
  'doctor_id': instance.doctorId,
  'doctor_photo': instance.doctorPhoto,
  'doctor_name': instance.doctorName,
  'patient_first_name': instance.patientFirstName,
  'patient_last_name': instance.patientLastName,
  'appointment_type': const DoctorAppointmentTypeConverter().toJson(
    instance.appointmentType,
  ),
  'visit_fee': instance.visitFee,
  'doctor_speciality': instance.doctorSpeciality,
  'reservation_date': instance.reservationDate?.toIso8601String(),
  'reservation_hour': const TimeOfDayConverter().toJson(
    instance.reservationHour,
  ),
  'status': _$AppointmentStatusEnumMap[instance.status],
  'reminder_offset': instance.reminderOffset,
  'payment_status': _$PaymentStatusEnumMap[instance.paymentStatus],
};

const _$AppointmentStatusEnumMap = {
  AppointmentStatus.pending: 'pending',
  AppointmentStatus.visited: 'visited',
  AppointmentStatus.cancelled: 'cancelled',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.paid: 'paid',
  PaymentStatus.pending: 'pending',
  PaymentStatus.unpaid: 'unpaid',
};
