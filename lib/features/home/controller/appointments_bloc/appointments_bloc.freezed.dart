// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppointmentsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppointmentsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppointmentsEvent()';
  }
}

/// @nodoc
class $AppointmentsEventCopyWith<$Res> {
  $AppointmentsEventCopyWith(
      AppointmentsEvent _, $Res Function(AppointmentsEvent) __);
}

/// @nodoc

class AppointmentsFetched implements AppointmentsEvent {
  const AppointmentsFetched();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppointmentsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppointmentsEvent.appointmentsFetched()';
  }
}

/// @nodoc

class AppointmentStatusChanged implements AppointmentsEvent {
  const AppointmentStatusChanged({required this.appointmentStatus});

  final AppointmentStatus appointmentStatus;

  /// Create a copy of AppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppointmentStatusChangedCopyWith<AppointmentStatusChanged> get copyWith =>
      _$AppointmentStatusChangedCopyWithImpl<AppointmentStatusChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppointmentStatusChanged &&
            (identical(other.appointmentStatus, appointmentStatus) ||
                other.appointmentStatus == appointmentStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentStatus);

  @override
  String toString() {
    return 'AppointmentsEvent.appointmentStatusChanged(appointmentStatus: $appointmentStatus)';
  }
}

/// @nodoc
abstract mixin class $AppointmentStatusChangedCopyWith<$Res>
    implements $AppointmentsEventCopyWith<$Res> {
  factory $AppointmentStatusChangedCopyWith(AppointmentStatusChanged value,
          $Res Function(AppointmentStatusChanged) _then) =
      _$AppointmentStatusChangedCopyWithImpl;
  @useResult
  $Res call({AppointmentStatus appointmentStatus});
}

/// @nodoc
class _$AppointmentStatusChangedCopyWithImpl<$Res>
    implements $AppointmentStatusChangedCopyWith<$Res> {
  _$AppointmentStatusChangedCopyWithImpl(this._self, this._then);

  final AppointmentStatusChanged _self;
  final $Res Function(AppointmentStatusChanged) _then;

  /// Create a copy of AppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? appointmentStatus = null,
  }) {
    return _then(AppointmentStatusChanged(
      appointmentStatus: null == appointmentStatus
          ? _self.appointmentStatus
          : appointmentStatus // ignore: cast_nullable_to_non_nullable
              as AppointmentStatus,
    ));
  }
}

/// @nodoc

class AppointmentCanceled implements AppointmentsEvent {
  const AppointmentCanceled({required this.reservationId});

  final int reservationId;

  /// Create a copy of AppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppointmentCanceledCopyWith<AppointmentCanceled> get copyWith =>
      _$AppointmentCanceledCopyWithImpl<AppointmentCanceled>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppointmentCanceled &&
            (identical(other.reservationId, reservationId) ||
                other.reservationId == reservationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservationId);

  @override
  String toString() {
    return 'AppointmentsEvent.appointmentCanceled(reservationId: $reservationId)';
  }
}

/// @nodoc
abstract mixin class $AppointmentCanceledCopyWith<$Res>
    implements $AppointmentsEventCopyWith<$Res> {
  factory $AppointmentCanceledCopyWith(
          AppointmentCanceled value, $Res Function(AppointmentCanceled) _then) =
      _$AppointmentCanceledCopyWithImpl;
  @useResult
  $Res call({int reservationId});
}

/// @nodoc
class _$AppointmentCanceledCopyWithImpl<$Res>
    implements $AppointmentCanceledCopyWith<$Res> {
  _$AppointmentCanceledCopyWithImpl(this._self, this._then);

  final AppointmentCanceled _self;
  final $Res Function(AppointmentCanceled) _then;

  /// Create a copy of AppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reservationId = null,
  }) {
    return _then(AppointmentCanceled(
      reservationId: null == reservationId
          ? _self.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$AppointmentsState {
  List<AppointmentModel>? get appointments;
  AppointmentStatus? get appointmentStatus;
  DataStatus? get status;
  String? get statusMessage;

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppointmentsStateCopyWith<AppointmentsState> get copyWith =>
      _$AppointmentsStateCopyWithImpl<AppointmentsState>(
          this as AppointmentsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppointmentsState &&
            const DeepCollectionEquality()
                .equals(other.appointments, appointments) &&
            (identical(other.appointmentStatus, appointmentStatus) ||
                other.appointmentStatus == appointmentStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appointments),
      appointmentStatus,
      status,
      statusMessage);

  @override
  String toString() {
    return 'AppointmentsState(appointments: $appointments, appointmentStatus: $appointmentStatus, status: $status, statusMessage: $statusMessage)';
  }
}

/// @nodoc
abstract mixin class $AppointmentsStateCopyWith<$Res> {
  factory $AppointmentsStateCopyWith(
          AppointmentsState value, $Res Function(AppointmentsState) _then) =
      _$AppointmentsStateCopyWithImpl;
  @useResult
  $Res call(
      {List<AppointmentModel>? appointments,
      AppointmentStatus? appointmentStatus,
      DataStatus? status,
      String? statusMessage});
}

/// @nodoc
class _$AppointmentsStateCopyWithImpl<$Res>
    implements $AppointmentsStateCopyWith<$Res> {
  _$AppointmentsStateCopyWithImpl(this._self, this._then);

  final AppointmentsState _self;
  final $Res Function(AppointmentsState) _then;

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointments = freezed,
    Object? appointmentStatus = freezed,
    Object? status = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(_self.copyWith(
      appointments: freezed == appointments
          ? _self.appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<AppointmentModel>?,
      appointmentStatus: freezed == appointmentStatus
          ? _self.appointmentStatus
          : appointmentStatus // ignore: cast_nullable_to_non_nullable
              as AppointmentStatus?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus?,
      statusMessage: freezed == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _AppointmentsState implements AppointmentsState {
  const _AppointmentsState(
      {final List<AppointmentModel>? appointments,
      this.appointmentStatus,
      this.status,
      this.statusMessage})
      : _appointments = appointments;

  final List<AppointmentModel>? _appointments;
  @override
  List<AppointmentModel>? get appointments {
    final value = _appointments;
    if (value == null) return null;
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AppointmentStatus? appointmentStatus;
  @override
  final DataStatus? status;
  @override
  final String? statusMessage;

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppointmentsStateCopyWith<_AppointmentsState> get copyWith =>
      __$AppointmentsStateCopyWithImpl<_AppointmentsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentsState &&
            const DeepCollectionEquality()
                .equals(other._appointments, _appointments) &&
            (identical(other.appointmentStatus, appointmentStatus) ||
                other.appointmentStatus == appointmentStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_appointments),
      appointmentStatus,
      status,
      statusMessage);

  @override
  String toString() {
    return 'AppointmentsState(appointments: $appointments, appointmentStatus: $appointmentStatus, status: $status, statusMessage: $statusMessage)';
  }
}

/// @nodoc
abstract mixin class _$AppointmentsStateCopyWith<$Res>
    implements $AppointmentsStateCopyWith<$Res> {
  factory _$AppointmentsStateCopyWith(
          _AppointmentsState value, $Res Function(_AppointmentsState) _then) =
      __$AppointmentsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<AppointmentModel>? appointments,
      AppointmentStatus? appointmentStatus,
      DataStatus? status,
      String? statusMessage});
}

/// @nodoc
class __$AppointmentsStateCopyWithImpl<$Res>
    implements _$AppointmentsStateCopyWith<$Res> {
  __$AppointmentsStateCopyWithImpl(this._self, this._then);

  final _AppointmentsState _self;
  final $Res Function(_AppointmentsState) _then;

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? appointments = freezed,
    Object? appointmentStatus = freezed,
    Object? status = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(_AppointmentsState(
      appointments: freezed == appointments
          ? _self._appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<AppointmentModel>?,
      appointmentStatus: freezed == appointmentStatus
          ? _self.appointmentStatus
          : appointmentStatus // ignore: cast_nullable_to_non_nullable
              as AppointmentStatus?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus?,
      statusMessage: freezed == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
