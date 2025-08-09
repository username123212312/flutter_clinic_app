// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildRecordImpl _$$ChildRecordImplFromJson(Map<String, dynamic> json) =>
    _$ChildRecordImpl(
      heightCm: (json['height_cm'] as num?)?.toDouble(),
      weightKg: (json['weight_kg'] as num?)?.toDouble(),
      growthNotes: json['growth_notes'] as String?,
      doctorNotes: json['doctor_notes'] as String?,
      feedingType: json['feeding_type'] as String?,
      allergies: json['allergies'] as String?,
      developmentalObservations: json['developmental_observations'] as String?,
      headCircumferenceCm: (json['head_circumference_cm'] as num?)?.toDouble(),
      nextVisitDate:
          json['next_visit_date'] == null
              ? null
              : DateTime.parse(json['next_visit_date'] as String),
      lastVisitDate:
          json['last_visit_date'] == null
              ? null
              : DateTime.parse(json['last_visit_date'] as String),
    );

Map<String, dynamic> _$$ChildRecordImplToJson(_$ChildRecordImpl instance) =>
    <String, dynamic>{
      'height_cm': instance.heightCm,
      'weight_kg': instance.weightKg,
      'growth_notes': instance.growthNotes,
      'doctor_notes': instance.doctorNotes,
      'feeding_type': instance.feedingType,
      'allergies': instance.allergies,
      'developmental_observations': instance.developmentalObservations,
      'head_circumference_cm': instance.headCircumferenceCm,
      'next_visit_date': instance.nextVisitDate?.toIso8601String(),
      'last_visit_date': instance.lastVisitDate?.toIso8601String(),
    };
