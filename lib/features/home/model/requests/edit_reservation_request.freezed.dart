// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_reservation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EditReservationRequest {
  int get appointmentId => throw _privateConstructorUsedError;
  int get clinicId => throw _privateConstructorUsedError;
  int get doctorId => throw _privateConstructorUsedError;
  DateTime get newDate => throw _privateConstructorUsedError;
  TimeOfDay? get newTime => throw _privateConstructorUsedError;

  /// Create a copy of EditReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditReservationRequestCopyWith<EditReservationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditReservationRequestCopyWith<$Res> {
  factory $EditReservationRequestCopyWith(
    EditReservationRequest value,
    $Res Function(EditReservationRequest) then,
  ) = _$EditReservationRequestCopyWithImpl<$Res, EditReservationRequest>;
  @useResult
  $Res call({
    int appointmentId,
    int clinicId,
    int doctorId,
    DateTime newDate,
    TimeOfDay? newTime,
  });
}

/// @nodoc
class _$EditReservationRequestCopyWithImpl<
  $Res,
  $Val extends EditReservationRequest
>
    implements $EditReservationRequestCopyWith<$Res> {
  _$EditReservationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = null,
    Object? clinicId = null,
    Object? doctorId = null,
    Object? newDate = null,
    Object? newTime = freezed,
  }) {
    return _then(
      _value.copyWith(
            appointmentId:
                null == appointmentId
                    ? _value.appointmentId
                    : appointmentId // ignore: cast_nullable_to_non_nullable
                        as int,
            clinicId:
                null == clinicId
                    ? _value.clinicId
                    : clinicId // ignore: cast_nullable_to_non_nullable
                        as int,
            doctorId:
                null == doctorId
                    ? _value.doctorId
                    : doctorId // ignore: cast_nullable_to_non_nullable
                        as int,
            newDate:
                null == newDate
                    ? _value.newDate
                    : newDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            newTime:
                freezed == newTime
                    ? _value.newTime
                    : newTime // ignore: cast_nullable_to_non_nullable
                        as TimeOfDay?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EditReservationRequestImplCopyWith<$Res>
    implements $EditReservationRequestCopyWith<$Res> {
  factory _$$EditReservationRequestImplCopyWith(
    _$EditReservationRequestImpl value,
    $Res Function(_$EditReservationRequestImpl) then,
  ) = __$$EditReservationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int appointmentId,
    int clinicId,
    int doctorId,
    DateTime newDate,
    TimeOfDay? newTime,
  });
}

/// @nodoc
class __$$EditReservationRequestImplCopyWithImpl<$Res>
    extends
        _$EditReservationRequestCopyWithImpl<$Res, _$EditReservationRequestImpl>
    implements _$$EditReservationRequestImplCopyWith<$Res> {
  __$$EditReservationRequestImplCopyWithImpl(
    _$EditReservationRequestImpl _value,
    $Res Function(_$EditReservationRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = null,
    Object? clinicId = null,
    Object? doctorId = null,
    Object? newDate = null,
    Object? newTime = freezed,
  }) {
    return _then(
      _$EditReservationRequestImpl(
        appointmentId:
            null == appointmentId
                ? _value.appointmentId
                : appointmentId // ignore: cast_nullable_to_non_nullable
                    as int,
        clinicId:
            null == clinicId
                ? _value.clinicId
                : clinicId // ignore: cast_nullable_to_non_nullable
                    as int,
        doctorId:
            null == doctorId
                ? _value.doctorId
                : doctorId // ignore: cast_nullable_to_non_nullable
                    as int,
        newDate:
            null == newDate
                ? _value.newDate
                : newDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        newTime:
            freezed == newTime
                ? _value.newTime
                : newTime // ignore: cast_nullable_to_non_nullable
                    as TimeOfDay?,
      ),
    );
  }
}

/// @nodoc

class _$EditReservationRequestImpl implements _EditReservationRequest {
  _$EditReservationRequestImpl({
    required this.appointmentId,
    required this.clinicId,
    required this.doctorId,
    required this.newDate,
    this.newTime,
  });

  @override
  final int appointmentId;
  @override
  final int clinicId;
  @override
  final int doctorId;
  @override
  final DateTime newDate;
  @override
  final TimeOfDay? newTime;

  @override
  String toString() {
    return 'EditReservationRequest(appointmentId: $appointmentId, clinicId: $clinicId, doctorId: $doctorId, newDate: $newDate, newTime: $newTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditReservationRequestImpl &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.clinicId, clinicId) ||
                other.clinicId == clinicId) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.newDate, newDate) || other.newDate == newDate) &&
            (identical(other.newTime, newTime) || other.newTime == newTime));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    appointmentId,
    clinicId,
    doctorId,
    newDate,
    newTime,
  );

  /// Create a copy of EditReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditReservationRequestImplCopyWith<_$EditReservationRequestImpl>
  get copyWith =>
      __$$EditReservationRequestImplCopyWithImpl<_$EditReservationRequestImpl>(
        this,
        _$identity,
      );
}

abstract class _EditReservationRequest implements EditReservationRequest {
  factory _EditReservationRequest({
    required final int appointmentId,
    required final int clinicId,
    required final int doctorId,
    required final DateTime newDate,
    final TimeOfDay? newTime,
  }) = _$EditReservationRequestImpl;

  @override
  int get appointmentId;
  @override
  int get clinicId;
  @override
  int get doctorId;
  @override
  DateTime get newDate;
  @override
  TimeOfDay? get newTime;

  /// Create a copy of EditReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditReservationRequestImplCopyWith<_$EditReservationRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
