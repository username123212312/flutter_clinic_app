// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_record_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildRecordRequestImpl _$$ChildRecordRequestImplFromJson(
  Map<String, dynamic> json,
) => _$ChildRecordRequestImpl(
  childId: (json['child_id'] as num?)?.toInt(),
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
  'child_id': instance.childId,
  'height_cm': instance.heightCm,
  'weight_kg': instance.weightKg,
  'growth_notes': instance.growthNotes,
  'doctor_notes': instance.doctorNotes,
  'feeding_type': _$FeedingTypeEnumMap[instance.feedingType],
  'allergies': instance.allergies,
  'developmental_observations': instance.developmentalObservations,
  'head_circumference_cm': instance.headCircumferenceCm,
  'next_visit_date': instance.nextVisitDate?.toIso8601String(),
};

const _$FeedingTypeEnumMap = {
  FeedingType.natural: 'natural',
  FeedingType.formula: 'formula',
  FeedingType.mixed: 'mixed',
};
