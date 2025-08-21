// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_change_schedules_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DoctorChangeSchedulesRequest {
  DateTime get startLeaveDate => throw _privateConstructorUsedError;
  DateTime get endLeaveDate => throw _privateConstructorUsedError;
  TimeOfDay get startLeaveTime => throw _privateConstructorUsedError;
  TimeOfDay get endLeaveTime => throw _privateConstructorUsedError;

  /// Create a copy of DoctorChangeSchedulesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorChangeSchedulesRequestCopyWith<DoctorChangeSchedulesRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorChangeSchedulesRequestCopyWith<$Res> {
  factory $DoctorChangeSchedulesRequestCopyWith(
    DoctorChangeSchedulesRequest value,
    $Res Function(DoctorChangeSchedulesRequest) then,
  ) =
      _$DoctorChangeSchedulesRequestCopyWithImpl<
        $Res,
        DoctorChangeSchedulesRequest
      >;
  @useResult
  $Res call({
    DateTime startLeaveDate,
    DateTime endLeaveDate,
    TimeOfDay startLeaveTime,
    TimeOfDay endLeaveTime,
  });
}

/// @nodoc
class _$DoctorChangeSchedulesRequestCopyWithImpl<
  $Res,
  $Val extends DoctorChangeSchedulesRequest
>
    implements $DoctorChangeSchedulesRequestCopyWith<$Res> {
  _$DoctorChangeSchedulesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorChangeSchedulesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startLeaveDate = null,
    Object? endLeaveDate = null,
    Object? startLeaveTime = null,
    Object? endLeaveTime = null,
  }) {
    return _then(
      _value.copyWith(
            startLeaveDate:
                null == startLeaveDate
                    ? _value.startLeaveDate
                    : startLeaveDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            endLeaveDate:
                null == endLeaveDate
                    ? _value.endLeaveDate
                    : endLeaveDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            startLeaveTime:
                null == startLeaveTime
                    ? _value.startLeaveTime
                    : startLeaveTime // ignore: cast_nullable_to_non_nullable
                        as TimeOfDay,
            endLeaveTime:
                null == endLeaveTime
                    ? _value.endLeaveTime
                    : endLeaveTime // ignore: cast_nullable_to_non_nullable
                        as TimeOfDay,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DoctorChangeSchedulesRequestImplCopyWith<$Res>
    implements $DoctorChangeSchedulesRequestCopyWith<$Res> {
  factory _$$DoctorChangeSchedulesRequestImplCopyWith(
    _$DoctorChangeSchedulesRequestImpl value,
    $Res Function(_$DoctorChangeSchedulesRequestImpl) then,
  ) = __$$DoctorChangeSchedulesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime startLeaveDate,
    DateTime endLeaveDate,
    TimeOfDay startLeaveTime,
    TimeOfDay endLeaveTime,
  });
}

/// @nodoc
class __$$DoctorChangeSchedulesRequestImplCopyWithImpl<$Res>
    extends
        _$DoctorChangeSchedulesRequestCopyWithImpl<
          $Res,
          _$DoctorChangeSchedulesRequestImpl
        >
    implements _$$DoctorChangeSchedulesRequestImplCopyWith<$Res> {
  __$$DoctorChangeSchedulesRequestImplCopyWithImpl(
    _$DoctorChangeSchedulesRequestImpl _value,
    $Res Function(_$DoctorChangeSchedulesRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorChangeSchedulesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startLeaveDate = null,
    Object? endLeaveDate = null,
    Object? startLeaveTime = null,
    Object? endLeaveTime = null,
  }) {
    return _then(
      _$DoctorChangeSchedulesRequestImpl(
        startLeaveDate:
            null == startLeaveDate
                ? _value.startLeaveDate
                : startLeaveDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        endLeaveDate:
            null == endLeaveDate
                ? _value.endLeaveDate
                : endLeaveDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        startLeaveTime:
            null == startLeaveTime
                ? _value.startLeaveTime
                : startLeaveTime // ignore: cast_nullable_to_non_nullable
                    as TimeOfDay,
        endLeaveTime:
            null == endLeaveTime
                ? _value.endLeaveTime
                : endLeaveTime // ignore: cast_nullable_to_non_nullable
                    as TimeOfDay,
      ),
    );
  }
}

/// @nodoc

class _$DoctorChangeSchedulesRequestImpl
    implements _DoctorChangeSchedulesRequest {
  _$DoctorChangeSchedulesRequestImpl({
    required this.startLeaveDate,
    required this.endLeaveDate,
    required this.startLeaveTime,
    required this.endLeaveTime,
  });

  @override
  final DateTime startLeaveDate;
  @override
  final DateTime endLeaveDate;
  @override
  final TimeOfDay startLeaveTime;
  @override
  final TimeOfDay endLeaveTime;

  @override
  String toString() {
    return 'DoctorChangeSchedulesRequest(startLeaveDate: $startLeaveDate, endLeaveDate: $endLeaveDate, startLeaveTime: $startLeaveTime, endLeaveTime: $endLeaveTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorChangeSchedulesRequestImpl &&
            (identical(other.startLeaveDate, startLeaveDate) ||
                other.startLeaveDate == startLeaveDate) &&
            (identical(other.endLeaveDate, endLeaveDate) ||
                other.endLeaveDate == endLeaveDate) &&
            (identical(other.startLeaveTime, startLeaveTime) ||
                other.startLeaveTime == startLeaveTime) &&
            (identical(other.endLeaveTime, endLeaveTime) ||
                other.endLeaveTime == endLeaveTime));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    startLeaveDate,
    endLeaveDate,
    startLeaveTime,
    endLeaveTime,
  );

  /// Create a copy of DoctorChangeSchedulesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorChangeSchedulesRequestImplCopyWith<
    _$DoctorChangeSchedulesRequestImpl
  >
  get copyWith => __$$DoctorChangeSchedulesRequestImplCopyWithImpl<
    _$DoctorChangeSchedulesRequestImpl
  >(this, _$identity);
}

abstract class _DoctorChangeSchedulesRequest
    implements DoctorChangeSchedulesRequest {
  factory _DoctorChangeSchedulesRequest({
    required final DateTime startLeaveDate,
    required final DateTime endLeaveDate,
    required final TimeOfDay startLeaveTime,
    required final TimeOfDay endLeaveTime,
  }) = _$DoctorChangeSchedulesRequestImpl;

  @override
  DateTime get startLeaveDate;
  @override
  DateTime get endLeaveDate;
  @override
  TimeOfDay get startLeaveTime;
  @override
  TimeOfDay get endLeaveTime;

  /// Create a copy of DoctorChangeSchedulesRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorChangeSchedulesRequestImplCopyWith<
    _$DoctorChangeSchedulesRequestImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
