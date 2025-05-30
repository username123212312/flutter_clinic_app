// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reschedule_appointment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RescheduleAppointmentState {
  AppointmentModel? get appointment;
  DateTime? get selectedDate;
  List<DateTime> get availableDates;
  TimeOfDay? get selectedTime;
  List<TimeOfDay> get availableTimes;
  DataStatus? get status;
  String? get statusMessage;

  /// Create a copy of RescheduleAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RescheduleAppointmentStateCopyWith<RescheduleAppointmentState>
      get copyWith =>
          _$RescheduleAppointmentStateCopyWithImpl<RescheduleAppointmentState>(
              this as RescheduleAppointmentState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RescheduleAppointmentState &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            const DeepCollectionEquality()
                .equals(other.availableDates, availableDates) &&
            (identical(other.selectedTime, selectedTime) ||
                other.selectedTime == selectedTime) &&
            const DeepCollectionEquality()
                .equals(other.availableTimes, availableTimes) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      appointment,
      selectedDate,
      const DeepCollectionEquality().hash(availableDates),
      selectedTime,
      const DeepCollectionEquality().hash(availableTimes),
      status,
      statusMessage);

  @override
  String toString() {
    return 'RescheduleAppointmentState(appointment: $appointment, selectedDate: $selectedDate, availableDates: $availableDates, selectedTime: $selectedTime, availableTimes: $availableTimes, status: $status, statusMessage: $statusMessage)';
  }
}

/// @nodoc
abstract mixin class $RescheduleAppointmentStateCopyWith<$Res> {
  factory $RescheduleAppointmentStateCopyWith(RescheduleAppointmentState value,
          $Res Function(RescheduleAppointmentState) _then) =
      _$RescheduleAppointmentStateCopyWithImpl;
  @useResult
  $Res call(
      {AppointmentModel? appointment,
      DateTime? selectedDate,
      List<DateTime> availableDates,
      TimeOfDay? selectedTime,
      List<TimeOfDay> availableTimes,
      DataStatus? status,
      String? statusMessage});

  $AppointmentModelCopyWith<$Res>? get appointment;
}

/// @nodoc
class _$RescheduleAppointmentStateCopyWithImpl<$Res>
    implements $RescheduleAppointmentStateCopyWith<$Res> {
  _$RescheduleAppointmentStateCopyWithImpl(this._self, this._then);

  final RescheduleAppointmentState _self;
  final $Res Function(RescheduleAppointmentState) _then;

  /// Create a copy of RescheduleAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointment = freezed,
    Object? selectedDate = freezed,
    Object? availableDates = null,
    Object? selectedTime = freezed,
    Object? availableTimes = null,
    Object? status = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(_self.copyWith(
      appointment: freezed == appointment
          ? _self.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentModel?,
      selectedDate: freezed == selectedDate
          ? _self.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableDates: null == availableDates
          ? _self.availableDates
          : availableDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      selectedTime: freezed == selectedTime
          ? _self.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      availableTimes: null == availableTimes
          ? _self.availableTimes
          : availableTimes // ignore: cast_nullable_to_non_nullable
              as List<TimeOfDay>,
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

  /// Create a copy of RescheduleAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentModelCopyWith<$Res>? get appointment {
    if (_self.appointment == null) {
      return null;
    }

    return $AppointmentModelCopyWith<$Res>(_self.appointment!, (value) {
      return _then(_self.copyWith(appointment: value));
    });
  }
}

/// @nodoc

class _RescheduleAppointmentState implements RescheduleAppointmentState {
  const _RescheduleAppointmentState(
      {this.appointment,
      this.selectedDate,
      required final List<DateTime> availableDates,
      this.selectedTime,
      required final List<TimeOfDay> availableTimes,
      this.status,
      this.statusMessage})
      : _availableDates = availableDates,
        _availableTimes = availableTimes;

  @override
  final AppointmentModel? appointment;
  @override
  final DateTime? selectedDate;
  final List<DateTime> _availableDates;
  @override
  List<DateTime> get availableDates {
    if (_availableDates is EqualUnmodifiableListView) return _availableDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableDates);
  }

  @override
  final TimeOfDay? selectedTime;
  final List<TimeOfDay> _availableTimes;
  @override
  List<TimeOfDay> get availableTimes {
    if (_availableTimes is EqualUnmodifiableListView) return _availableTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableTimes);
  }

  @override
  final DataStatus? status;
  @override
  final String? statusMessage;

  /// Create a copy of RescheduleAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RescheduleAppointmentStateCopyWith<_RescheduleAppointmentState>
      get copyWith => __$RescheduleAppointmentStateCopyWithImpl<
          _RescheduleAppointmentState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RescheduleAppointmentState &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            const DeepCollectionEquality()
                .equals(other._availableDates, _availableDates) &&
            (identical(other.selectedTime, selectedTime) ||
                other.selectedTime == selectedTime) &&
            const DeepCollectionEquality()
                .equals(other._availableTimes, _availableTimes) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      appointment,
      selectedDate,
      const DeepCollectionEquality().hash(_availableDates),
      selectedTime,
      const DeepCollectionEquality().hash(_availableTimes),
      status,
      statusMessage);

  @override
  String toString() {
    return 'RescheduleAppointmentState(appointment: $appointment, selectedDate: $selectedDate, availableDates: $availableDates, selectedTime: $selectedTime, availableTimes: $availableTimes, status: $status, statusMessage: $statusMessage)';
  }
}

/// @nodoc
abstract mixin class _$RescheduleAppointmentStateCopyWith<$Res>
    implements $RescheduleAppointmentStateCopyWith<$Res> {
  factory _$RescheduleAppointmentStateCopyWith(
          _RescheduleAppointmentState value,
          $Res Function(_RescheduleAppointmentState) _then) =
      __$RescheduleAppointmentStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AppointmentModel? appointment,
      DateTime? selectedDate,
      List<DateTime> availableDates,
      TimeOfDay? selectedTime,
      List<TimeOfDay> availableTimes,
      DataStatus? status,
      String? statusMessage});

  @override
  $AppointmentModelCopyWith<$Res>? get appointment;
}

/// @nodoc
class __$RescheduleAppointmentStateCopyWithImpl<$Res>
    implements _$RescheduleAppointmentStateCopyWith<$Res> {
  __$RescheduleAppointmentStateCopyWithImpl(this._self, this._then);

  final _RescheduleAppointmentState _self;
  final $Res Function(_RescheduleAppointmentState) _then;

  /// Create a copy of RescheduleAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? appointment = freezed,
    Object? selectedDate = freezed,
    Object? availableDates = null,
    Object? selectedTime = freezed,
    Object? availableTimes = null,
    Object? status = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(_RescheduleAppointmentState(
      appointment: freezed == appointment
          ? _self.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentModel?,
      selectedDate: freezed == selectedDate
          ? _self.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableDates: null == availableDates
          ? _self._availableDates
          : availableDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      selectedTime: freezed == selectedTime
          ? _self.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      availableTimes: null == availableTimes
          ? _self._availableTimes
          : availableTimes // ignore: cast_nullable_to_non_nullable
              as List<TimeOfDay>,
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

  /// Create a copy of RescheduleAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentModelCopyWith<$Res>? get appointment {
    if (_self.appointment == null) {
      return null;
    }

    return $AppointmentModelCopyWith<$Res>(_self.appointment!, (value) {
      return _then(_self.copyWith(appointment: value));
    });
  }
}

// dart format on
