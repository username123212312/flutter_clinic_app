import 'package:freezed_annotation/freezed_annotation.dart';

part 'child_record.freezed.dart';
part 'child_record.g.dart';

@freezed
class ChildRecord with _$ChildRecord {
  factory ChildRecord({
    @JsonKey(name: 'height_cm') double? heightCm,
    @JsonKey(name: 'weight_kg') double? weightKg,
    @JsonKey(name: 'growth_notes') String? growthNotes,
    @JsonKey(name: 'doctor_notes') String? doctorNotes,
    @JsonKey(name: 'feeding_type') String? feedingType,
    String? allergies,
    @JsonKey(name: 'developmental_observations')
    String? developmentalObservations,
    @JsonKey(name: 'head_circumference_cm') double? headCircumferenceCm,
    @JsonKey(name: 'next_visit_date') DateTime? nextVisitDate,
    @JsonKey(name: 'last_visit_date') DateTime? lastVisitDate,
  }) = _ChildRecord;

  factory ChildRecord.fromJson(Map<String, dynamic> json) =>
      _$ChildRecordFromJson(json);
}
