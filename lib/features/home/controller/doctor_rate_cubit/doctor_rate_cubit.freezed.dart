// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_rate_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DoctorRateState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DoctorModel get doctor => throw _privateConstructorUsedError;
  double? get rate => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  /// Create a copy of DoctorRateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorRateStateCopyWith<DoctorRateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorRateStateCopyWith<$Res> {
  factory $DoctorRateStateCopyWith(
    DoctorRateState value,
    $Res Function(DoctorRateState) then,
  ) = _$DoctorRateStateCopyWithImpl<$Res, DoctorRateState>;
  @useResult
  $Res call({
    DataStatus status,
    String message,
    DoctorModel doctor,
    double? rate,
    String? comment,
  });

  $DoctorModelCopyWith<$Res> get doctor;
}

/// @nodoc
class _$DoctorRateStateCopyWithImpl<$Res, $Val extends DoctorRateState>
    implements $DoctorRateStateCopyWith<$Res> {
  _$DoctorRateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorRateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? doctor = null,
    Object? rate = freezed,
    Object? comment = freezed,
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
            doctor:
                null == doctor
                    ? _value.doctor
                    : doctor // ignore: cast_nullable_to_non_nullable
                        as DoctorModel,
            rate:
                freezed == rate
                    ? _value.rate
                    : rate // ignore: cast_nullable_to_non_nullable
                        as double?,
            comment:
                freezed == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of DoctorRateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorModelCopyWith<$Res> get doctor {
    return $DoctorModelCopyWith<$Res>(_value.doctor, (value) {
      return _then(_value.copyWith(doctor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorRateStateImplCopyWith<$Res>
    implements $DoctorRateStateCopyWith<$Res> {
  factory _$$DoctorRateStateImplCopyWith(
    _$DoctorRateStateImpl value,
    $Res Function(_$DoctorRateStateImpl) then,
  ) = __$$DoctorRateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DataStatus status,
    String message,
    DoctorModel doctor,
    double? rate,
    String? comment,
  });

  @override
  $DoctorModelCopyWith<$Res> get doctor;
}

/// @nodoc
class __$$DoctorRateStateImplCopyWithImpl<$Res>
    extends _$DoctorRateStateCopyWithImpl<$Res, _$DoctorRateStateImpl>
    implements _$$DoctorRateStateImplCopyWith<$Res> {
  __$$DoctorRateStateImplCopyWithImpl(
    _$DoctorRateStateImpl _value,
    $Res Function(_$DoctorRateStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorRateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? doctor = null,
    Object? rate = freezed,
    Object? comment = freezed,
  }) {
    return _then(
      _$DoctorRateStateImpl(
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
        doctor:
            null == doctor
                ? _value.doctor
                : doctor // ignore: cast_nullable_to_non_nullable
                    as DoctorModel,
        rate:
            freezed == rate
                ? _value.rate
                : rate // ignore: cast_nullable_to_non_nullable
                    as double?,
        comment:
            freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$DoctorRateStateImpl implements _DoctorRateState {
  const _$DoctorRateStateImpl({
    required this.status,
    required this.message,
    required this.doctor,
    this.rate,
    this.comment,
  });

  @override
  final DataStatus status;
  @override
  final String message;
  @override
  final DoctorModel doctor;
  @override
  final double? rate;
  @override
  final String? comment;

  @override
  String toString() {
    return 'DoctorRateState(status: $status, message: $message, doctor: $doctor, rate: $rate, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorRateStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, message, doctor, rate, comment);

  /// Create a copy of DoctorRateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorRateStateImplCopyWith<_$DoctorRateStateImpl> get copyWith =>
      __$$DoctorRateStateImplCopyWithImpl<_$DoctorRateStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DoctorRateState implements DoctorRateState {
  const factory _DoctorRateState({
    required final DataStatus status,
    required final String message,
    required final DoctorModel doctor,
    final double? rate,
    final String? comment,
  }) = _$DoctorRateStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  DoctorModel get doctor;
  @override
  double? get rate;
  @override
  String? get comment;

  /// Create a copy of DoctorRateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorRateStateImplCopyWith<_$DoctorRateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
