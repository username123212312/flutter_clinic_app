import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums.dart';

part 'child_record_request.freezed.dart';
part 'child_record_request.g.dart';

@freezed
class ChildRecordRequest with _$ChildRecordRequest {
  factory ChildRecordRequest({
    @JsonKey(name: 'child_id') int? childId,
    @JsonKey(name: 'height_cm') double? heightCm,
    @JsonKey(name: 'weight_kg') double? weightKg,
    @JsonKey(name: 'growth_notes') String? growthNotes,
    @JsonKey(name: 'doctor_notes') String? doctorNotes,
    @JsonKey(name: 'feeding_type') FeedingType? feedingType,
    String? allergies,
    @JsonKey(name: 'developmental_observations')
    String? developmentalObservations,
    @JsonKey(name: 'head_circumference_cm') double? headCircumferenceCm,
    @JsonKey(name: 'next_visit_date') DateTime? nextVisitDate,
  }) = _ChildRecordRequest;

  factory ChildRecordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChildRecordRequestFromJson(json);
}
