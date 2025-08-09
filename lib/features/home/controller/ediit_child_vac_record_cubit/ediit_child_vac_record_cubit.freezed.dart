// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ediit_child_vac_record_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EdiitChildVacRecordState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  VaccinationRecord get vaccineRecord => throw _privateConstructorUsedError;

  /// Create a copy of EdiitChildVacRecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EdiitChildVacRecordStateCopyWith<EdiitChildVacRecordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdiitChildVacRecordStateCopyWith<$Res> {
  factory $EdiitChildVacRecordStateCopyWith(
    EdiitChildVacRecordState value,
    $Res Function(EdiitChildVacRecordState) then,
  ) = _$EdiitChildVacRecordStateCopyWithImpl<$Res, EdiitChildVacRecordState>;
  @useResult
  $Res call({
    DataStatus status,
    String message,
    VaccinationRecord vaccineRecord,
  });

  $VaccinationRecordCopyWith<$Res> get vaccineRecord;
}

/// @nodoc
class _$EdiitChildVacRecordStateCopyWithImpl<
  $Res,
  $Val extends EdiitChildVacRecordState
>
    implements $EdiitChildVacRecordStateCopyWith<$Res> {
  _$EdiitChildVacRecordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EdiitChildVacRecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? vaccineRecord = null,
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
            vaccineRecord:
                null == vaccineRecord
                    ? _value.vaccineRecord
                    : vaccineRecord // ignore: cast_nullable_to_non_nullable
                        as VaccinationRecord,
          )
          as $Val,
    );
  }

  /// Create a copy of EdiitChildVacRecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VaccinationRecordCopyWith<$Res> get vaccineRecord {
    return $VaccinationRecordCopyWith<$Res>(_value.vaccineRecord, (value) {
      return _then(_value.copyWith(vaccineRecord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EdiitChildVacRecordStateImplCopyWith<$Res>
    implements $EdiitChildVacRecordStateCopyWith<$Res> {
  factory _$$EdiitChildVacRecordStateImplCopyWith(
    _$EdiitChildVacRecordStateImpl value,
    $Res Function(_$EdiitChildVacRecordStateImpl) then,
  ) = __$$EdiitChildVacRecordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DataStatus status,
    String message,
    VaccinationRecord vaccineRecord,
  });

  @override
  $VaccinationRecordCopyWith<$Res> get vaccineRecord;
}

/// @nodoc
class __$$EdiitChildVacRecordStateImplCopyWithImpl<$Res>
    extends
        _$EdiitChildVacRecordStateCopyWithImpl<
          $Res,
          _$EdiitChildVacRecordStateImpl
        >
    implements _$$EdiitChildVacRecordStateImplCopyWith<$Res> {
  __$$EdiitChildVacRecordStateImplCopyWithImpl(
    _$EdiitChildVacRecordStateImpl _value,
    $Res Function(_$EdiitChildVacRecordStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EdiitChildVacRecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? vaccineRecord = null,
  }) {
    return _then(
      _$EdiitChildVacRecordStateImpl(
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
        vaccineRecord:
            null == vaccineRecord
                ? _value.vaccineRecord
                : vaccineRecord // ignore: cast_nullable_to_non_nullable
                    as VaccinationRecord,
      ),
    );
  }
}

/// @nodoc

class _$EdiitChildVacRecordStateImpl implements _EdiitChildVacRecordState {
  const _$EdiitChildVacRecordStateImpl({
    required this.status,
    required this.message,
    required this.vaccineRecord,
  });

  @override
  final DataStatus status;
  @override
  final String message;
  @override
  final VaccinationRecord vaccineRecord;

  @override
  String toString() {
    return 'EdiitChildVacRecordState(status: $status, message: $message, vaccineRecord: $vaccineRecord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EdiitChildVacRecordStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.vaccineRecord, vaccineRecord) ||
                other.vaccineRecord == vaccineRecord));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, vaccineRecord);

  /// Create a copy of EdiitChildVacRecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EdiitChildVacRecordStateImplCopyWith<_$EdiitChildVacRecordStateImpl>
  get copyWith => __$$EdiitChildVacRecordStateImplCopyWithImpl<
    _$EdiitChildVacRecordStateImpl
  >(this, _$identity);
}

abstract class _EdiitChildVacRecordState implements EdiitChildVacRecordState {
  const factory _EdiitChildVacRecordState({
    required final DataStatus status,
    required final String message,
    required final VaccinationRecord vaccineRecord,
  }) = _$EdiitChildVacRecordStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  VaccinationRecord get vaccineRecord;

  /// Create a copy of EdiitChildVacRecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EdiitChildVacRecordStateImplCopyWith<_$EdiitChildVacRecordStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
