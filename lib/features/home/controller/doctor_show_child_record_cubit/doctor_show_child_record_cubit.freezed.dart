// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_show_child_record_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DoctorShowChildRecordState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UserModel get child => throw _privateConstructorUsedError;
  ChildRecord? get record => throw _privateConstructorUsedError;

  /// Create a copy of DoctorShowChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorShowChildRecordStateCopyWith<DoctorShowChildRecordState>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorShowChildRecordStateCopyWith<$Res> {
  factory $DoctorShowChildRecordStateCopyWith(
    DoctorShowChildRecordState value,
    $Res Function(DoctorShowChildRecordState) then,
  ) =
      _$DoctorShowChildRecordStateCopyWithImpl<
        $Res,
        DoctorShowChildRecordState
      >;
  @useResult
  $Res call({
    DataStatus status,
    String message,
    UserModel child,
    ChildRecord? record,
  });

  $UserModelCopyWith<$Res> get child;
  $ChildRecordCopyWith<$Res>? get record;
}

/// @nodoc
class _$DoctorShowChildRecordStateCopyWithImpl<
  $Res,
  $Val extends DoctorShowChildRecordState
>
    implements $DoctorShowChildRecordStateCopyWith<$Res> {
  _$DoctorShowChildRecordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorShowChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? child = null,
    Object? record = freezed,
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
            child:
                null == child
                    ? _value.child
                    : child // ignore: cast_nullable_to_non_nullable
                        as UserModel,
            record:
                freezed == record
                    ? _value.record
                    : record // ignore: cast_nullable_to_non_nullable
                        as ChildRecord?,
          )
          as $Val,
    );
  }

  /// Create a copy of DoctorShowChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get child {
    return $UserModelCopyWith<$Res>(_value.child, (value) {
      return _then(_value.copyWith(child: value) as $Val);
    });
  }

  /// Create a copy of DoctorShowChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChildRecordCopyWith<$Res>? get record {
    if (_value.record == null) {
      return null;
    }

    return $ChildRecordCopyWith<$Res>(_value.record!, (value) {
      return _then(_value.copyWith(record: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorShowChildRecordStateImplCopyWith<$Res>
    implements $DoctorShowChildRecordStateCopyWith<$Res> {
  factory _$$DoctorShowChildRecordStateImplCopyWith(
    _$DoctorShowChildRecordStateImpl value,
    $Res Function(_$DoctorShowChildRecordStateImpl) then,
  ) = __$$DoctorShowChildRecordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DataStatus status,
    String message,
    UserModel child,
    ChildRecord? record,
  });

  @override
  $UserModelCopyWith<$Res> get child;
  @override
  $ChildRecordCopyWith<$Res>? get record;
}

/// @nodoc
class __$$DoctorShowChildRecordStateImplCopyWithImpl<$Res>
    extends
        _$DoctorShowChildRecordStateCopyWithImpl<
          $Res,
          _$DoctorShowChildRecordStateImpl
        >
    implements _$$DoctorShowChildRecordStateImplCopyWith<$Res> {
  __$$DoctorShowChildRecordStateImplCopyWithImpl(
    _$DoctorShowChildRecordStateImpl _value,
    $Res Function(_$DoctorShowChildRecordStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorShowChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? child = null,
    Object? record = freezed,
  }) {
    return _then(
      _$DoctorShowChildRecordStateImpl(
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
        child:
            null == child
                ? _value.child
                : child // ignore: cast_nullable_to_non_nullable
                    as UserModel,
        record:
            freezed == record
                ? _value.record
                : record // ignore: cast_nullable_to_non_nullable
                    as ChildRecord?,
      ),
    );
  }
}

/// @nodoc

class _$DoctorShowChildRecordStateImpl implements _DoctorShowChildRecordState {
  const _$DoctorShowChildRecordStateImpl({
    required this.status,
    required this.message,
    required this.child,
    this.record,
  });

  @override
  final DataStatus status;
  @override
  final String message;
  @override
  final UserModel child;
  @override
  final ChildRecord? record;

  @override
  String toString() {
    return 'DoctorShowChildRecordState(status: $status, message: $message, child: $child, record: $record)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorShowChildRecordStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.record, record) || other.record == record));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, child, record);

  /// Create a copy of DoctorShowChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorShowChildRecordStateImplCopyWith<_$DoctorShowChildRecordStateImpl>
  get copyWith => __$$DoctorShowChildRecordStateImplCopyWithImpl<
    _$DoctorShowChildRecordStateImpl
  >(this, _$identity);
}

abstract class _DoctorShowChildRecordState
    implements DoctorShowChildRecordState {
  const factory _DoctorShowChildRecordState({
    required final DataStatus status,
    required final String message,
    required final UserModel child,
    final ChildRecord? record,
  }) = _$DoctorShowChildRecordStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  UserModel get child;
  @override
  ChildRecord? get record;

  /// Create a copy of DoctorShowChildRecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorShowChildRecordStateImplCopyWith<_$DoctorShowChildRecordStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
