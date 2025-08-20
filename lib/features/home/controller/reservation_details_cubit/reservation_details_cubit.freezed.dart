// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ReservationDetailsState {
  AppointmentModel? get appointment => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  DataStatus get discountPointsStatus => throw _privateConstructorUsedError;
  int get discountPoints => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get paymentIntentId => throw _privateConstructorUsedError;
  String? get clientID => throw _privateConstructorUsedError;
  bool get isPaid => throw _privateConstructorUsedError;

  /// Create a copy of ReservationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReservationDetailsStateCopyWith<ReservationDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationDetailsStateCopyWith<$Res> {
  factory $ReservationDetailsStateCopyWith(
    ReservationDetailsState value,
    $Res Function(ReservationDetailsState) then,
  ) = _$ReservationDetailsStateCopyWithImpl<$Res, ReservationDetailsState>;
  @useResult
  $Res call({
    AppointmentModel? appointment,
    DataStatus status,
    DataStatus discountPointsStatus,
    int discountPoints,
    String message,
    String? paymentIntentId,
    String? clientID,
    bool isPaid,
  });

  $AppointmentModelCopyWith<$Res>? get appointment;
}

/// @nodoc
class _$ReservationDetailsStateCopyWithImpl<
  $Res,
  $Val extends ReservationDetailsState
>
    implements $ReservationDetailsStateCopyWith<$Res> {
  _$ReservationDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReservationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointment = freezed,
    Object? status = null,
    Object? discountPointsStatus = null,
    Object? discountPoints = null,
    Object? message = null,
    Object? paymentIntentId = freezed,
    Object? clientID = freezed,
    Object? isPaid = null,
  }) {
    return _then(
      _value.copyWith(
            appointment:
                freezed == appointment
                    ? _value.appointment
                    : appointment // ignore: cast_nullable_to_non_nullable
                        as AppointmentModel?,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            discountPointsStatus:
                null == discountPointsStatus
                    ? _value.discountPointsStatus
                    : discountPointsStatus // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            discountPoints:
                null == discountPoints
                    ? _value.discountPoints
                    : discountPoints // ignore: cast_nullable_to_non_nullable
                        as int,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            paymentIntentId:
                freezed == paymentIntentId
                    ? _value.paymentIntentId
                    : paymentIntentId // ignore: cast_nullable_to_non_nullable
                        as String?,
            clientID:
                freezed == clientID
                    ? _value.clientID
                    : clientID // ignore: cast_nullable_to_non_nullable
                        as String?,
            isPaid:
                null == isPaid
                    ? _value.isPaid
                    : isPaid // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of ReservationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentModelCopyWith<$Res>? get appointment {
    if (_value.appointment == null) {
      return null;
    }

    return $AppointmentModelCopyWith<$Res>(_value.appointment!, (value) {
      return _then(_value.copyWith(appointment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReservationDetailsStateImplCopyWith<$Res>
    implements $ReservationDetailsStateCopyWith<$Res> {
  factory _$$ReservationDetailsStateImplCopyWith(
    _$ReservationDetailsStateImpl value,
    $Res Function(_$ReservationDetailsStateImpl) then,
  ) = __$$ReservationDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AppointmentModel? appointment,
    DataStatus status,
    DataStatus discountPointsStatus,
    int discountPoints,
    String message,
    String? paymentIntentId,
    String? clientID,
    bool isPaid,
  });

  @override
  $AppointmentModelCopyWith<$Res>? get appointment;
}

/// @nodoc
class __$$ReservationDetailsStateImplCopyWithImpl<$Res>
    extends
        _$ReservationDetailsStateCopyWithImpl<
          $Res,
          _$ReservationDetailsStateImpl
        >
    implements _$$ReservationDetailsStateImplCopyWith<$Res> {
  __$$ReservationDetailsStateImplCopyWithImpl(
    _$ReservationDetailsStateImpl _value,
    $Res Function(_$ReservationDetailsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReservationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointment = freezed,
    Object? status = null,
    Object? discountPointsStatus = null,
    Object? discountPoints = null,
    Object? message = null,
    Object? paymentIntentId = freezed,
    Object? clientID = freezed,
    Object? isPaid = null,
  }) {
    return _then(
      _$ReservationDetailsStateImpl(
        appointment:
            freezed == appointment
                ? _value.appointment
                : appointment // ignore: cast_nullable_to_non_nullable
                    as AppointmentModel?,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        discountPointsStatus:
            null == discountPointsStatus
                ? _value.discountPointsStatus
                : discountPointsStatus // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        discountPoints:
            null == discountPoints
                ? _value.discountPoints
                : discountPoints // ignore: cast_nullable_to_non_nullable
                    as int,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        paymentIntentId:
            freezed == paymentIntentId
                ? _value.paymentIntentId
                : paymentIntentId // ignore: cast_nullable_to_non_nullable
                    as String?,
        clientID:
            freezed == clientID
                ? _value.clientID
                : clientID // ignore: cast_nullable_to_non_nullable
                    as String?,
        isPaid:
            null == isPaid
                ? _value.isPaid
                : isPaid // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$ReservationDetailsStateImpl implements _ReservationDetailsState {
  const _$ReservationDetailsStateImpl({
    this.appointment,
    required this.status,
    required this.discountPointsStatus,
    required this.discountPoints,
    required this.message,
    this.paymentIntentId,
    this.clientID,
    required this.isPaid,
  });

  @override
  final AppointmentModel? appointment;
  @override
  final DataStatus status;
  @override
  final DataStatus discountPointsStatus;
  @override
  final int discountPoints;
  @override
  final String message;
  @override
  final String? paymentIntentId;
  @override
  final String? clientID;
  @override
  final bool isPaid;

  @override
  String toString() {
    return 'ReservationDetailsState(appointment: $appointment, status: $status, discountPointsStatus: $discountPointsStatus, discountPoints: $discountPoints, message: $message, paymentIntentId: $paymentIntentId, clientID: $clientID, isPaid: $isPaid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationDetailsStateImpl &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.discountPointsStatus, discountPointsStatus) ||
                other.discountPointsStatus == discountPointsStatus) &&
            (identical(other.discountPoints, discountPoints) ||
                other.discountPoints == discountPoints) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.paymentIntentId, paymentIntentId) ||
                other.paymentIntentId == paymentIntentId) &&
            (identical(other.clientID, clientID) ||
                other.clientID == clientID) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    appointment,
    status,
    discountPointsStatus,
    discountPoints,
    message,
    paymentIntentId,
    clientID,
    isPaid,
  );

  /// Create a copy of ReservationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationDetailsStateImplCopyWith<_$ReservationDetailsStateImpl>
  get copyWith => __$$ReservationDetailsStateImplCopyWithImpl<
    _$ReservationDetailsStateImpl
  >(this, _$identity);
}

abstract class _ReservationDetailsState implements ReservationDetailsState {
  const factory _ReservationDetailsState({
    final AppointmentModel? appointment,
    required final DataStatus status,
    required final DataStatus discountPointsStatus,
    required final int discountPoints,
    required final String message,
    final String? paymentIntentId,
    final String? clientID,
    required final bool isPaid,
  }) = _$ReservationDetailsStateImpl;

  @override
  AppointmentModel? get appointment;
  @override
  DataStatus get status;
  @override
  DataStatus get discountPointsStatus;
  @override
  int get discountPoints;
  @override
  String get message;
  @override
  String? get paymentIntentId;
  @override
  String? get clientID;
  @override
  bool get isPaid;

  /// Create a copy of ReservationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReservationDetailsStateImplCopyWith<_$ReservationDetailsStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
