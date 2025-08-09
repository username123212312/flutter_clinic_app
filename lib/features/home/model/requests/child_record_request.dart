import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums.dart';

part 'child_record_request.freezed.dart';
part 'child_record_request.g.dart';

@freezed
class ChildRecordRequest with _$ChildRecordRequest {
  factory ChildRecordRequest({
    @JsonKey(name: 'child_id', includeIfNull: false) int? childId,
    @JsonKey(name: 'record_id', includeIfNull: false) int? recordId,
    @JsonKey(name: 'height_cm', includeIfNull: false) double? heightCm,
    @JsonKey(name: 'weight_kg', includeIfNull: false) double? weightKg,
    @JsonKey(name: 'growth_notes', includeIfNull: false) String? growthNotes,
    @JsonKey(name: 'doctor_notes', includeIfNull: false) String? doctorNotes,
    @JsonKey(name: 'feeding_type', includeIfNull: false)
    FeedingType? feedingType,
    @JsonKey(includeIfNull: false) String? allergies,
    @JsonKey(name: 'developmental_observations', includeIfNull: false)
    @JsonKey(includeIfNull: false)
    String? developmentalObservations,
    @JsonKey(name: 'head_circumference_cm', includeIfNull: false)
    double? headCircumferenceCm,
    @JsonKey(name: 'next_visit_date', includeIfNull: false)
    DateTime? nextVisitDate,
  }) = _ChildRecordRequest;

  factory ChildRecordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChildRecordRequestFromJson(json);
}
