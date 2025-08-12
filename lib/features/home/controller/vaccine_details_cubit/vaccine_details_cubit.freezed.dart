// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vaccine_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$VaccineDetailsState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  VaccinationRecord get vaccine => throw _privateConstructorUsedError;

  /// Create a copy of VaccineDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VaccineDetailsStateCopyWith<VaccineDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineDetailsStateCopyWith<$Res> {
  factory $VaccineDetailsStateCopyWith(
    VaccineDetailsState value,
    $Res Function(VaccineDetailsState) then,
  ) = _$VaccineDetailsStateCopyWithImpl<$Res, VaccineDetailsState>;
  @useResult
  $Res call({DataStatus status, String message, VaccinationRecord vaccine});

  $VaccinationRecordCopyWith<$Res> get vaccine;
}

/// @nodoc
class _$VaccineDetailsStateCopyWithImpl<$Res, $Val extends VaccineDetailsState>
    implements $VaccineDetailsStateCopyWith<$Res> {
  _$VaccineDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VaccineDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? vaccine = null,
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
            vaccine:
                null == vaccine
                    ? _value.vaccine
                    : vaccine // ignore: cast_nullable_to_non_nullable
                        as VaccinationRecord,
          )
          as $Val,
    );
  }

  /// Create a copy of VaccineDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VaccinationRecordCopyWith<$Res> get vaccine {
    return $VaccinationRecordCopyWith<$Res>(_value.vaccine, (value) {
      return _then(_value.copyWith(vaccine: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VaccineDetailsStateImplCopyWith<$Res>
    implements $VaccineDetailsStateCopyWith<$Res> {
  factory _$$VaccineDetailsStateImplCopyWith(
    _$VaccineDetailsStateImpl value,
    $Res Function(_$VaccineDetailsStateImpl) then,
  ) = __$$VaccineDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataStatus status, String message, VaccinationRecord vaccine});

  @override
  $VaccinationRecordCopyWith<$Res> get vaccine;
}

/// @nodoc
class __$$VaccineDetailsStateImplCopyWithImpl<$Res>
    extends _$VaccineDetailsStateCopyWithImpl<$Res, _$VaccineDetailsStateImpl>
    implements _$$VaccineDetailsStateImplCopyWith<$Res> {
  __$$VaccineDetailsStateImplCopyWithImpl(
    _$VaccineDetailsStateImpl _value,
    $Res Function(_$VaccineDetailsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VaccineDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? vaccine = null,
  }) {
    return _then(
      _$VaccineDetailsStateImpl(
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
        vaccine:
            null == vaccine
                ? _value.vaccine
                : vaccine // ignore: cast_nullable_to_non_nullable
                    as VaccinationRecord,
      ),
    );
  }
}

/// @nodoc

class _$VaccineDetailsStateImpl implements _VaccineDetailsState {
  const _$VaccineDetailsStateImpl({
    required this.status,
    required this.message,
    required this.vaccine,
  });

  @override
  final DataStatus status;
  @override
  final String message;
  @override
  final VaccinationRecord vaccine;

  @override
  String toString() {
    return 'VaccineDetailsState(status: $status, message: $message, vaccine: $vaccine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaccineDetailsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.vaccine, vaccine) || other.vaccine == vaccine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, vaccine);

  /// Create a copy of VaccineDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VaccineDetailsStateImplCopyWith<_$VaccineDetailsStateImpl> get copyWith =>
      __$$VaccineDetailsStateImplCopyWithImpl<_$VaccineDetailsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _VaccineDetailsState implements VaccineDetailsState {
  const factory _VaccineDetailsState({
    required final DataStatus status,
    required final String message,
    required final VaccinationRecord vaccine,
  }) = _$VaccineDetailsStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  VaccinationRecord get vaccine;

  /// Create a copy of VaccineDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VaccineDetailsStateImplCopyWith<_$VaccineDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
