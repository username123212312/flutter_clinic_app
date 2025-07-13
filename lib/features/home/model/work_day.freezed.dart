// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WorkDay _$WorkDayFromJson(Map<String, dynamic> json) {
  return _WorkDay.fromJson(json);
}

/// @nodoc
mixin _$WorkDay {
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_shifts')
  List<AvailableShift>? get availableShifts =>
      throw _privateConstructorUsedError;

  /// Serializes this WorkDay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkDayCopyWith<WorkDay> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkDayCopyWith<$Res> {
  factory $WorkDayCopyWith(WorkDay value, $Res Function(WorkDay) then) =
      _$WorkDayCopyWithImpl<$Res, WorkDay>;
  @useResult
  $Res call({
    String? day,
    @JsonKey(name: 'available_shifts') List<AvailableShift>? availableShifts,
  });
}

/// @nodoc
class _$WorkDayCopyWithImpl<$Res, $Val extends WorkDay>
    implements $WorkDayCopyWith<$Res> {
  _$WorkDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? day = freezed, Object? availableShifts = freezed}) {
    return _then(
      _value.copyWith(
            day:
                freezed == day
                    ? _value.day
                    : day // ignore: cast_nullable_to_non_nullable
                        as String?,
            availableShifts:
                freezed == availableShifts
                    ? _value.availableShifts
                    : availableShifts // ignore: cast_nullable_to_non_nullable
                        as List<AvailableShift>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkDayImplCopyWith<$Res> implements $WorkDayCopyWith<$Res> {
  factory _$$WorkDayImplCopyWith(
    _$WorkDayImpl value,
    $Res Function(_$WorkDayImpl) then,
  ) = __$$WorkDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? day,
    @JsonKey(name: 'available_shifts') List<AvailableShift>? availableShifts,
  });
}

/// @nodoc
class __$$WorkDayImplCopyWithImpl<$Res>
    extends _$WorkDayCopyWithImpl<$Res, _$WorkDayImpl>
    implements _$$WorkDayImplCopyWith<$Res> {
  __$$WorkDayImplCopyWithImpl(
    _$WorkDayImpl _value,
    $Res Function(_$WorkDayImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? day = freezed, Object? availableShifts = freezed}) {
    return _then(
      _$WorkDayImpl(
        day:
            freezed == day
                ? _value.day
                : day // ignore: cast_nullable_to_non_nullable
                    as String?,
        availableShifts:
            freezed == availableShifts
                ? _value._availableShifts
                : availableShifts // ignore: cast_nullable_to_non_nullable
                    as List<AvailableShift>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkDayImpl implements _WorkDay {
  _$WorkDayImpl({
    this.day,
    @JsonKey(name: 'available_shifts')
    final List<AvailableShift>? availableShifts,
  }) : _availableShifts = availableShifts;

  factory _$WorkDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkDayImplFromJson(json);

  @override
  final String? day;
  final List<AvailableShift>? _availableShifts;
  @override
  @JsonKey(name: 'available_shifts')
  List<AvailableShift>? get availableShifts {
    final value = _availableShifts;
    if (value == null) return null;
    if (_availableShifts is EqualUnmodifiableListView) return _availableShifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkDay(day: $day, availableShifts: $availableShifts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkDayImpl &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality().equals(
              other._availableShifts,
              _availableShifts,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    day,
    const DeepCollectionEquality().hash(_availableShifts),
  );

  /// Create a copy of WorkDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkDayImplCopyWith<_$WorkDayImpl> get copyWith =>
      __$$WorkDayImplCopyWithImpl<_$WorkDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkDayImplToJson(this);
  }
}

abstract class _WorkDay implements WorkDay {
  factory _WorkDay({
    final String? day,
    @JsonKey(name: 'available_shifts')
    final List<AvailableShift>? availableShifts,
  }) = _$WorkDayImpl;

  factory _WorkDay.fromJson(Map<String, dynamic> json) = _$WorkDayImpl.fromJson;

  @override
  String? get day;
  @override
  @JsonKey(name: 'available_shifts')
  List<AvailableShift>? get availableShifts;

  /// Create a copy of WorkDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkDayImplCopyWith<_$WorkDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
