// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_show_child_record_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PatientShowChildRecordState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ChildRecord? get childRecord => throw _privateConstructorUsedError;

  /// Create a copy of PatientShowChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientShowChildRecordStateCopyWith<PatientShowChildRecordState>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientShowChildRecordStateCopyWith<$Res> {
  factory $PatientShowChildRecordStateCopyWith(
    PatientShowChildRecordState value,
    $Res Function(PatientShowChildRecordState) then,
  ) =
      _$PatientShowChildRecordStateCopyWithImpl<
        $Res,
        PatientShowChildRecordState
      >;
  @useResult
  $Res call({DataStatus status, String message, ChildRecord? childRecord});

  $ChildRecordCopyWith<$Res>? get childRecord;
}

/// @nodoc
class _$PatientShowChildRecordStateCopyWithImpl<
  $Res,
  $Val extends PatientShowChildRecordState
>
    implements $PatientShowChildRecordStateCopyWith<$Res> {
  _$PatientShowChildRecordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientShowChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? childRecord = freezed,
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
            childRecord:
                freezed == childRecord
                    ? _value.childRecord
                    : childRecord // ignore: cast_nullable_to_non_nullable
                        as ChildRecord?,
          )
          as $Val,
    );
  }

  /// Create a copy of PatientShowChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChildRecordCopyWith<$Res>? get childRecord {
    if (_value.childRecord == null) {
      return null;
    }

    return $ChildRecordCopyWith<$Res>(_value.childRecord!, (value) {
      return _then(_value.copyWith(childRecord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientShowChildRecordStateImplCopyWith<$Res>
    implements $PatientShowChildRecordStateCopyWith<$Res> {
  factory _$$PatientShowChildRecordStateImplCopyWith(
    _$PatientShowChildRecordStateImpl value,
    $Res Function(_$PatientShowChildRecordStateImpl) then,
  ) = __$$PatientShowChildRecordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataStatus status, String message, ChildRecord? childRecord});

  @override
  $ChildRecordCopyWith<$Res>? get childRecord;
}

/// @nodoc
class __$$PatientShowChildRecordStateImplCopyWithImpl<$Res>
    extends
        _$PatientShowChildRecordStateCopyWithImpl<
          $Res,
          _$PatientShowChildRecordStateImpl
        >
    implements _$$PatientShowChildRecordStateImplCopyWith<$Res> {
  __$$PatientShowChildRecordStateImplCopyWithImpl(
    _$PatientShowChildRecordStateImpl _value,
    $Res Function(_$PatientShowChildRecordStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PatientShowChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? childRecord = freezed,
  }) {
    return _then(
      _$PatientShowChildRecordStateImpl(
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
        childRecord:
            freezed == childRecord
                ? _value.childRecord
                : childRecord // ignore: cast_nullable_to_non_nullable
                    as ChildRecord?,
      ),
    );
  }
}

/// @nodoc

class _$PatientShowChildRecordStateImpl
    implements _PatientShowChildRecordState {
  const _$PatientShowChildRecordStateImpl({
    required this.status,
    required this.message,
    this.childRecord,
  });

  @override
  final DataStatus status;
  @override
  final String message;
  @override
  final ChildRecord? childRecord;

  @override
  String toString() {
    return 'PatientShowChildRecordState(status: $status, message: $message, childRecord: $childRecord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientShowChildRecordStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.childRecord, childRecord) ||
                other.childRecord == childRecord));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, childRecord);

  /// Create a copy of PatientShowChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientShowChildRecordStateImplCopyWith<_$PatientShowChildRecordStateImpl>
  get copyWith => __$$PatientShowChildRecordStateImplCopyWithImpl<
    _$PatientShowChildRecordStateImpl
  >(this, _$identity);
}

abstract class _PatientShowChildRecordState
    implements PatientShowChildRecordState {
  const factory _PatientShowChildRecordState({
    required final DataStatus status,
    required final String message,
    final ChildRecord? childRecord,
  }) = _$PatientShowChildRecordStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  ChildRecord? get childRecord;

  /// Create a copy of PatientShowChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientShowChildRecordStateImplCopyWith<_$PatientShowChildRecordStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
