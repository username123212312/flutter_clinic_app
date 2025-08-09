// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChildRecord _$ChildRecordFromJson(Map<String, dynamic> json) {
  return _ChildRecord.fromJson(json);
}

/// @nodoc
mixin _$ChildRecord {
  @JsonKey(name: 'height_cm')
  double? get heightCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight_kg')
  double? get weightKg => throw _privateConstructorUsedError;
  @JsonKey(name: 'growth_notes')
  String? get growthNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_notes')
  String? get doctorNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'feeding_type')
  String? get feedingType => throw _privateConstructorUsedError;
  String? get allergies => throw _privateConstructorUsedError;
  @JsonKey(name: 'developmental_observations')
  String? get developmentalObservations => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_circumference_cm')
  double? get headCircumferenceCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_visit_date')
  DateTime? get nextVisitDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_visit_date')
  DateTime? get lastVisitDate => throw _privateConstructorUsedError;

  /// Serializes this ChildRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChildRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildRecordCopyWith<ChildRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildRecordCopyWith<$Res> {
  factory $ChildRecordCopyWith(
    ChildRecord value,
    $Res Function(ChildRecord) then,
  ) = _$ChildRecordCopyWithImpl<$Res, ChildRecord>;
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class _$ChildRecordCopyWithImpl<$Res, $Val extends ChildRecord>
    implements $ChildRecordCopyWith<$Res> {
  _$ChildRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heightCm = freezed,
    Object? weightKg = freezed,
    Object? growthNotes = freezed,
    Object? doctorNotes = freezed,
    Object? feedingType = freezed,
    Object? allergies = freezed,
    Object? developmentalObservations = freezed,
    Object? headCircumferenceCm = freezed,
    Object? nextVisitDate = freezed,
    Object? lastVisitDate = freezed,
  }) {
    return _then(
      _value.copyWith(
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
                        as String?,
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
            lastVisitDate:
                freezed == lastVisitDate
                    ? _value.lastVisitDate
                    : lastVisitDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChildRecordImplCopyWith<$Res>
    implements $ChildRecordCopyWith<$Res> {
  factory _$$ChildRecordImplCopyWith(
    _$ChildRecordImpl value,
    $Res Function(_$ChildRecordImpl) then,
  ) = __$$ChildRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class __$$ChildRecordImplCopyWithImpl<$Res>
    extends _$ChildRecordCopyWithImpl<$Res, _$ChildRecordImpl>
    implements _$$ChildRecordImplCopyWith<$Res> {
  __$$ChildRecordImplCopyWithImpl(
    _$ChildRecordImpl _value,
    $Res Function(_$ChildRecordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChildRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heightCm = freezed,
    Object? weightKg = freezed,
    Object? growthNotes = freezed,
    Object? doctorNotes = freezed,
    Object? feedingType = freezed,
    Object? allergies = freezed,
    Object? developmentalObservations = freezed,
    Object? headCircumferenceCm = freezed,
    Object? nextVisitDate = freezed,
    Object? lastVisitDate = freezed,
  }) {
    return _then(
      _$ChildRecordImpl(
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
                    as String?,
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
        lastVisitDate:
            freezed == lastVisitDate
                ? _value.lastVisitDate
                : lastVisitDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildRecordImpl implements _ChildRecord {
  _$ChildRecordImpl({
    @JsonKey(name: 'height_cm') this.heightCm,
    @JsonKey(name: 'weight_kg') this.weightKg,
    @JsonKey(name: 'growth_notes') this.growthNotes,
    @JsonKey(name: 'doctor_notes') this.doctorNotes,
    @JsonKey(name: 'feeding_type') this.feedingType,
    this.allergies,
    @JsonKey(name: 'developmental_observations') this.developmentalObservations,
    @JsonKey(name: 'head_circumference_cm') this.headCircumferenceCm,
    @JsonKey(name: 'next_visit_date') this.nextVisitDate,
    @JsonKey(name: 'last_visit_date') this.lastVisitDate,
  });

  factory _$ChildRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildRecordImplFromJson(json);

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
  final String? feedingType;
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
  @JsonKey(name: 'last_visit_date')
  final DateTime? lastVisitDate;

  @override
  String toString() {
    return 'ChildRecord(heightCm: $heightCm, weightKg: $weightKg, growthNotes: $growthNotes, doctorNotes: $doctorNotes, feedingType: $feedingType, allergies: $allergies, developmentalObservations: $developmentalObservations, headCircumferenceCm: $headCircumferenceCm, nextVisitDate: $nextVisitDate, lastVisitDate: $lastVisitDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildRecordImpl &&
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
                other.nextVisitDate == nextVisitDate) &&
            (identical(other.lastVisitDate, lastVisitDate) ||
                other.lastVisitDate == lastVisitDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    heightCm,
    weightKg,
    growthNotes,
    doctorNotes,
    feedingType,
    allergies,
    developmentalObservations,
    headCircumferenceCm,
    nextVisitDate,
    lastVisitDate,
  );

  /// Create a copy of ChildRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildRecordImplCopyWith<_$ChildRecordImpl> get copyWith =>
      __$$ChildRecordImplCopyWithImpl<_$ChildRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildRecordImplToJson(this);
  }
}

abstract class _ChildRecord implements ChildRecord {
  factory _ChildRecord({
    @JsonKey(name: 'height_cm') final double? heightCm,
    @JsonKey(name: 'weight_kg') final double? weightKg,
    @JsonKey(name: 'growth_notes') final String? growthNotes,
    @JsonKey(name: 'doctor_notes') final String? doctorNotes,
    @JsonKey(name: 'feeding_type') final String? feedingType,
    final String? allergies,
    @JsonKey(name: 'developmental_observations')
    final String? developmentalObservations,
    @JsonKey(name: 'head_circumference_cm') final double? headCircumferenceCm,
    @JsonKey(name: 'next_visit_date') final DateTime? nextVisitDate,
    @JsonKey(name: 'last_visit_date') final DateTime? lastVisitDate,
  }) = _$ChildRecordImpl;

  factory _ChildRecord.fromJson(Map<String, dynamic> json) =
      _$ChildRecordImpl.fromJson;

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
  String? get feedingType;
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
  @override
  @JsonKey(name: 'last_visit_date')
  DateTime? get lastVisitDate;

  /// Create a copy of ChildRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildRecordImplCopyWith<_$ChildRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
