// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_schedule_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DoctorScheduleState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<WorkDay> get workDays => throw _privateConstructorUsedError;

  /// Create a copy of DoctorScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorScheduleStateCopyWith<DoctorScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorScheduleStateCopyWith<$Res> {
  factory $DoctorScheduleStateCopyWith(
    DoctorScheduleState value,
    $Res Function(DoctorScheduleState) then,
  ) = _$DoctorScheduleStateCopyWithImpl<$Res, DoctorScheduleState>;
  @useResult
  $Res call({DataStatus status, String message, List<WorkDay> workDays});
}

/// @nodoc
class _$DoctorScheduleStateCopyWithImpl<$Res, $Val extends DoctorScheduleState>
    implements $DoctorScheduleStateCopyWith<$Res> {
  _$DoctorScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? workDays = null,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            workDays:
                null == workDays
                    ? _value.workDays
                    : workDays // ignore: cast_nullable_to_non_nullable
                        as List<WorkDay>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DoctorScheduleStateImplCopyWith<$Res>
    implements $DoctorScheduleStateCopyWith<$Res> {
  factory _$$DoctorScheduleStateImplCopyWith(
    _$DoctorScheduleStateImpl value,
    $Res Function(_$DoctorScheduleStateImpl) then,
  ) = __$$DoctorScheduleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataStatus status, String message, List<WorkDay> workDays});
}

/// @nodoc
class __$$DoctorScheduleStateImplCopyWithImpl<$Res>
    extends _$DoctorScheduleStateCopyWithImpl<$Res, _$DoctorScheduleStateImpl>
    implements _$$DoctorScheduleStateImplCopyWith<$Res> {
  __$$DoctorScheduleStateImplCopyWithImpl(
    _$DoctorScheduleStateImpl _value,
    $Res Function(_$DoctorScheduleStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? workDays = null,
  }) {
    return _then(
      _$DoctorScheduleStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        workDays:
            null == workDays
                ? _value._workDays
                : workDays // ignore: cast_nullable_to_non_nullable
                    as List<WorkDay>,
      ),
    );
  }
}

/// @nodoc

class _$DoctorScheduleStateImpl implements _DoctorScheduleState {
  const _$DoctorScheduleStateImpl({
    required this.status,
    required this.message,
    required final List<WorkDay> workDays,
  }) : _workDays = workDays;

  @override
  final DataStatus status;
  @override
  final String message;
  final List<WorkDay> _workDays;
  @override
  List<WorkDay> get workDays {
    if (_workDays is EqualUnmodifiableListView) return _workDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workDays);
  }

  @override
  String toString() {
    return 'DoctorScheduleState(status: $status, message: $message, workDays: $workDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorScheduleStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._workDays, _workDays));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    const DeepCollectionEquality().hash(_workDays),
  );

  /// Create a copy of DoctorScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorScheduleStateImplCopyWith<_$DoctorScheduleStateImpl> get copyWith =>
      __$$DoctorScheduleStateImplCopyWithImpl<_$DoctorScheduleStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DoctorScheduleState implements DoctorScheduleState {
  const factory _DoctorScheduleState({
    required final DataStatus status,
    required final String message,
    required final List<WorkDay> workDays,
  }) = _$DoctorScheduleStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  List<WorkDay> get workDays;

  /// Create a copy of DoctorScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorScheduleStateImplCopyWith<_$DoctorScheduleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
