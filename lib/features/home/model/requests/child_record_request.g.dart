// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_record_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildRecordRequestImpl _$$ChildRecordRequestImplFromJson(
  Map<String, dynamic> json,
) => _$ChildRecordRequestImpl(
  childId: (json['child_id'] as num?)?.toInt(),
  recordId: (json['record_id'] as num?)?.toInt(),
  heightCm: (json['height_cm'] as num?)?.toDouble(),
  weightKg: (json['weight_kg'] as num?)?.toDouble(),
  growthNotes: json['growth_notes'] as String?,
  doctorNotes: json['doctor_notes'] as String?,
  feedingType: $enumDecodeNullable(_$FeedingTypeEnumMap, json['feeding_type']),
  allergies: json['allergies'] as String?,
  developmentalObservations: json['developmental_observations'] as String?,
  headCircumferenceCm: (json['head_circumference_cm'] as num?)?.toDouble(),
  nextVisitDate:
      json['next_visit_date'] == null
          ? null
          : DateTime.parse(json['next_visit_date'] as String),
);

Map<String, dynamic> _$$ChildRecordRequestImplToJson(
  _$ChildRecordRequestImpl instance,
) => <String, dynamic>{
  if (instance.childId case final value?) 'child_id': value,
  if (instance.recordId case final value?) 'record_id': value,
  if (instance.heightCm case final value?) 'height_cm': value,
  if (instance.weightKg case final value?) 'weight_kg': value,
  if (instance.growthNotes case final value?) 'growth_notes': value,
  if (instance.doctorNotes case final value?) 'doctor_notes': value,
  if (_$FeedingTypeEnumMap[instance.feedingType] case final value?)
    'feeding_type': value,
  if (instance.allergies case final value?) 'allergies': value,
  if (instance.developmentalObservations case final value?)
    'developmental_observations': value,
  if (instance.headCircumferenceCm case final value?)
    'head_circumference_cm': value,
  if (instance.nextVisitDate?.toIso8601String() case final value?)
    'next_visit_date': value,
};

const _$FeedingTypeEnumMap = {
  FeedingType.natural: 'natural',
  FeedingType.formula: 'formula',
  FeedingType.mixed: 'mixed',
};
