// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_record_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChildRecordRequest _$ChildRecordRequestFromJson(Map<String, dynamic> json) {
  return _ChildRecordRequest.fromJson(json);
}

/// @nodoc
mixin _$ChildRecordRequest {
  @JsonKey(name: 'child_id')
  int? get childId => throw _privateConstructorUsedError;
  @JsonKey(name: 'height_cm')
  double? get heightCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight_kg')
  double? get weightKg => throw _privateConstructorUsedError;
  @JsonKey(name: 'growth_notes')
  String? get growthNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_notes')
  String? get doctorNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'feeding_type')
  FeedingType? get feedingType => throw _privateConstructorUsedError;
  String? get allergies => throw _privateConstructorUsedError;
  @JsonKey(name: 'developmental_observations')
  String? get developmentalObservations => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_circumference_cm')
  double? get headCircumferenceCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_visit_date')
  DateTime? get nextVisitDate => throw _privateConstructorUsedError;

  /// Serializes this ChildRecordRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChildRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildRecordRequestCopyWith<ChildRecordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildRecordRequestCopyWith<$Res> {
  factory $ChildRecordRequestCopyWith(
    ChildRecordRequest value,
    $Res Function(ChildRecordRequest) then,
  ) = _$ChildRecordRequestCopyWithImpl<$Res, ChildRecordRequest>;
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class _$ChildRecordRequestCopyWithImpl<$Res, $Val extends ChildRecordRequest>
    implements $ChildRecordRequestCopyWith<$Res> {
  _$ChildRecordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = freezed,
    Object? heightCm = freezed,
    Object? weightKg = freezed,
    Object? growthNotes = freezed,
    Object? doctorNotes = freezed,
    Object? feedingType = freezed,
    Object? allergies = freezed,
    Object? developmentalObservations = freezed,
    Object? headCircumferenceCm = freezed,
    Object? nextVisitDate = freezed,
  }) {
    return _then(
      _value.copyWith(
            childId:
                freezed == childId
                    ? _value.childId
                    : childId // ignore: cast_nullable_to_non_nullable
                        as int?,
            heightCm:
                freezed == heightCm
                    ? _value.heightCm
                    : heightCm // ignore: cast_nullable_to_non_nullable
                        as double?,
            weightKg:
                freezed == weightKg
                    ? _value.weightKg
                    : weightKg // ignore: cast_nullable_to_non_nullable
                        as double?,
            growthNotes:
                freezed == growthNotes
                    ? _value.growthNotes
                    : growthNotes // ignore: cast_nullable_to_non_nullable
                        as String?,
            doctorNotes:
                freezed == doctorNotes
                    ? _value.doctorNotes
                    : doctorNotes // ignore: cast_nullable_to_non_nullable
                        as String?,
            feedingType:
                freezed == feedingType
                    ? _value.feedingType
                    : feedingType // ignore: cast_nullable_to_non_nullable
                        as FeedingType?,
            allergies:
                freezed == allergies
                    ? _value.allergies
                    : allergies // ignore: cast_nullable_to_non_nullable
                        as String?,
            developmentalObservations:
                freezed == developmentalObservations
                    ? _value.developmentalObservations
                    : developmentalObservations // ignore: cast_nullable_to_non_nullable
                        as String?,
            headCircumferenceCm:
                freezed == headCircumferenceCm
                    ? _value.headCircumferenceCm
                    : headCircumferenceCm // ignore: cast_nullable_to_non_nullable
                        as double?,
            nextVisitDate:
                freezed == nextVisitDate
                    ? _value.nextVisitDate
                    : nextVisitDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChildRecordRequestImplCopyWith<$Res>
    implements $ChildRecordRequestCopyWith<$Res> {
  factory _$$ChildRecordRequestImplCopyWith(
    _$ChildRecordRequestImpl value,
    $Res Function(_$ChildRecordRequestImpl) then,
  ) = __$$ChildRecordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class __$$ChildRecordRequestImplCopyWithImpl<$Res>
    extends _$ChildRecordRequestCopyWithImpl<$Res, _$ChildRecordRequestImpl>
    implements _$$ChildRecordRequestImplCopyWith<$Res> {
  __$$ChildRecordRequestImplCopyWithImpl(
    _$ChildRecordRequestImpl _value,
    $Res Function(_$ChildRecordRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChildRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = freezed,
    Object? heightCm = freezed,
    Object? weightKg = freezed,
    Object? growthNotes = freezed,
    Object? doctorNotes = freezed,
    Object? feedingType = freezed,
    Object? allergies = freezed,
    Object? developmentalObservations = freezed,
    Object? headCircumferenceCm = freezed,
    Object? nextVisitDate = freezed,
  }) {
    return _then(
      _$ChildRecordRequestImpl(
        childId:
            freezed == childId
                ? _value.childId
                : childId // ignore: cast_nullable_to_non_nullable
                    as int?,
        heightCm:
            freezed == heightCm
                ? _value.heightCm
                : heightCm // ignore: cast_nullable_to_non_nullable
                    as double?,
        weightKg:
            freezed == weightKg
                ? _value.weightKg
                : weightKg // ignore: cast_nullable_to_non_nullable
                    as double?,
        growthNotes:
            freezed == growthNotes
                ? _value.growthNotes
                : growthNotes // ignore: cast_nullable_to_non_nullable
                    as String?,
        doctorNotes:
            freezed == doctorNotes
                ? _value.doctorNotes
                : doctorNotes // ignore: cast_nullable_to_non_nullable
                    as String?,
        feedingType:
            freezed == feedingType
                ? _value.feedingType
                : feedingType // ignore: cast_nullable_to_non_nullable
                    as FeedingType?,
        allergies:
            freezed == allergies
                ? _value.allergies
                : allergies // ignore: cast_nullable_to_non_nullable
                    as String?,
        developmentalObservations:
            freezed == developmentalObservations
                ? _value.developmentalObservations
                : developmentalObservations // ignore: cast_nullable_to_non_nullable
                    as String?,
        headCircumferenceCm:
            freezed == headCircumferenceCm
                ? _value.headCircumferenceCm
                : headCircumferenceCm // ignore: cast_nullable_to_non_nullable
                    as double?,
        nextVisitDate:
            freezed == nextVisitDate
                ? _value.nextVisitDate
                : nextVisitDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildRecordRequestImpl implements _ChildRecordRequest {
  _$ChildRecordRequestImpl({
    @JsonKey(name: 'child_id') this.childId,
    @JsonKey(name: 'height_cm') this.heightCm,
    @JsonKey(name: 'weight_kg') this.weightKg,
    @JsonKey(name: 'growth_notes') this.growthNotes,
    @JsonKey(name: 'doctor_notes') this.doctorNotes,
    @JsonKey(name: 'feeding_type') this.feedingType,
    this.allergies,
    @JsonKey(name: 'developmental_observations') this.developmentalObservations,
    @JsonKey(name: 'head_circumference_cm') this.headCircumferenceCm,
    @JsonKey(name: 'next_visit_date') this.nextVisitDate,
  });

  factory _$ChildRecordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildRecordRequestImplFromJson(json);

  @override
  @JsonKey(name: 'child_id')
  final int? childId;
  @override
  @JsonKey(name: 'height_cm')
  final double? heightCm;
  @override
  @JsonKey(name: 'weight_kg')
  final double? weightKg;
  @override
  @JsonKey(name: 'growth_notes')
  final String? growthNotes;
  @override
  @JsonKey(name: 'doctor_notes')
  final String? doctorNotes;
  @override
  @JsonKey(name: 'feeding_type')
  final FeedingType? feedingType;
  @override
  final String? allergies;
  @override
  @JsonKey(name: 'developmental_observations')
  final String? developmentalObservations;
  @override
  @JsonKey(name: 'head_circumference_cm')
  final double? headCircumferenceCm;
  @override
  @JsonKey(name: 'next_visit_date')
  final DateTime? nextVisitDate;

  @override
  String toString() {
    return 'ChildRecordRequest(childId: $childId, heightCm: $heightCm, weightKg: $weightKg, growthNotes: $growthNotes, doctorNotes: $doctorNotes, feedingType: $feedingType, allergies: $allergies, developmentalObservations: $developmentalObservations, headCircumferenceCm: $headCircumferenceCm, nextVisitDate: $nextVisitDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildRecordRequestImpl &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.heightCm, heightCm) ||
                other.heightCm == heightCm) &&
            (identical(other.weightKg, weightKg) ||
                other.weightKg == weightKg) &&
            (identical(other.growthNotes, growthNotes) ||
                other.growthNotes == growthNotes) &&
            (identical(other.doctorNotes, doctorNotes) ||
                other.doctorNotes == doctorNotes) &&
            (identical(other.feedingType, feedingType) ||
                other.feedingType == feedingType) &&
            (identical(other.allergies, allergies) ||
                other.allergies == allergies) &&
            (identical(
                  other.developmentalObservations,
                  developmentalObservations,
                ) ||
                other.developmentalObservations == developmentalObservations) &&
            (identical(other.headCircumferenceCm, headCircumferenceCm) ||
                other.headCircumferenceCm == headCircumferenceCm) &&
            (identical(other.nextVisitDate, nextVisitDate) ||
                other.nextVisitDate == nextVisitDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    childId,
    heightCm,
    weightKg,
    growthNotes,
    doctorNotes,
    feedingType,
    allergies,
    developmentalObservations,
    headCircumferenceCm,
    nextVisitDate,
  );

  /// Create a copy of ChildRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildRecordRequestImplCopyWith<_$ChildRecordRequestImpl> get copyWith =>
      __$$ChildRecordRequestImplCopyWithImpl<_$ChildRecordRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildRecordRequestImplToJson(this);
  }
}

abstract class _ChildRecordRequest implements ChildRecordRequest {
  factory _ChildRecordRequest({
    @JsonKey(name: 'child_id') final int? childId,
    @JsonKey(name: 'height_cm') final double? heightCm,
    @JsonKey(name: 'weight_kg') final double? weightKg,
    @JsonKey(name: 'growth_notes') final String? growthNotes,
    @JsonKey(name: 'doctor_notes') final String? doctorNotes,
    @JsonKey(name: 'feeding_type') final FeedingType? feedingType,
    final String? allergies,
    @JsonKey(name: 'developmental_observations')
    final String? developmentalObservations,
    @JsonKey(name: 'head_circumference_cm') final double? headCircumferenceCm,
    @JsonKey(name: 'next_visit_date') final DateTime? nextVisitDate,
  }) = _$ChildRecordRequestImpl;

  factory _ChildRecordRequest.fromJson(Map<String, dynamic> json) =
      _$ChildRecordRequestImpl.fromJson;

  @override
  @JsonKey(name: 'child_id')
  int? get childId;
  @override
  @JsonKey(name: 'height_cm')
  double? get heightCm;
  @override
  @JsonKey(name: 'weight_kg')
  double? get weightKg;
  @override
  @JsonKey(name: 'growth_notes')
  String? get growthNotes;
  @override
  @JsonKey(name: 'doctor_notes')
  String? get doctorNotes;
  @override
  @JsonKey(name: 'feeding_type')
  FeedingType? get feedingType;
  @override
  String? get allergies;
  @override
  @JsonKey(name: 'developmental_observations')
  String? get developmentalObservations;
  @override
  @JsonKey(name: 'head_circumference_cm')
  double? get headCircumferenceCm;
  @override
  @JsonKey(name: 'next_visit_date')
  DateTime? get nextVisitDate;

  /// Create a copy of ChildRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildRecordRequestImplCopyWith<_$ChildRecordRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
