// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modify_child_record_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ModifyChildRecordState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ChildRecord get record => throw _privateConstructorUsedError;

  /// Create a copy of ModifyChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModifyChildRecordStateCopyWith<ModifyChildRecordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifyChildRecordStateCopyWith<$Res> {
  factory $ModifyChildRecordStateCopyWith(
    ModifyChildRecordState value,
    $Res Function(ModifyChildRecordState) then,
  ) = _$ModifyChildRecordStateCopyWithImpl<$Res, ModifyChildRecordState>;
  @useResult
  $Res call({DataStatus status, String message, ChildRecord record});

  $ChildRecordCopyWith<$Res> get record;
}

/// @nodoc
class _$ModifyChildRecordStateCopyWithImpl<
  $Res,
  $Val extends ModifyChildRecordState
>
    implements $ModifyChildRecordStateCopyWith<$Res> {
  _$ModifyChildRecordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModifyChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? record = null,
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
            record:
                null == record
                    ? _value.record
                    : record // ignore: cast_nullable_to_non_nullable
                        as ChildRecord,
          )
          as $Val,
    );
  }

  /// Create a copy of ModifyChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChildRecordCopyWith<$Res> get record {
    return $ChildRecordCopyWith<$Res>(_value.record, (value) {
      return _then(_value.copyWith(record: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModifyChildRecordStateImplCopyWith<$Res>
    implements $ModifyChildRecordStateCopyWith<$Res> {
  factory _$$ModifyChildRecordStateImplCopyWith(
    _$ModifyChildRecordStateImpl value,
    $Res Function(_$ModifyChildRecordStateImpl) then,
  ) = __$$ModifyChildRecordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataStatus status, String message, ChildRecord record});

  @override
  $ChildRecordCopyWith<$Res> get record;
}

/// @nodoc
class __$$ModifyChildRecordStateImplCopyWithImpl<$Res>
    extends
        _$ModifyChildRecordStateCopyWithImpl<$Res, _$ModifyChildRecordStateImpl>
    implements _$$ModifyChildRecordStateImplCopyWith<$Res> {
  __$$ModifyChildRecordStateImplCopyWithImpl(
    _$ModifyChildRecordStateImpl _value,
    $Res Function(_$ModifyChildRecordStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ModifyChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? record = null,
  }) {
    return _then(
      _$ModifyChildRecordStateImpl(
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
        record:
            null == record
                ? _value.record
                : record // ignore: cast_nullable_to_non_nullable
                    as ChildRecord,
      ),
    );
  }
}

/// @nodoc

class _$ModifyChildRecordStateImpl implements _ModifyChildRecordState {
  const _$ModifyChildRecordStateImpl({
    required this.status,
    required this.message,
    required this.record,
  });

  @override
  final DataStatus status;
  @override
  final String message;
  @override
  final ChildRecord record;

  @override
  String toString() {
    return 'ModifyChildRecordState(status: $status, message: $message, record: $record)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModifyChildRecordStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.record, record) || other.record == record));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, record);

  /// Create a copy of ModifyChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModifyChildRecordStateImplCopyWith<_$ModifyChildRecordStateImpl>
  get copyWith =>
      __$$ModifyChildRecordStateImplCopyWithImpl<_$ModifyChildRecordStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ModifyChildRecordState implements ModifyChildRecordState {
  const factory _ModifyChildRecordState({
    required final DataStatus status,
    required final String message,
    required final ChildRecord record,
  }) = _$ModifyChildRecordStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  ChildRecord get record;

  /// Create a copy of ModifyChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModifyChildRecordStateImplCopyWith<_$ModifyChildRecordStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
