// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppointmentDetailsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppointmentDetailsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppointmentDetailsEvent()';
  }
}

/// @nodoc
class $AppointmentDetailsEventCopyWith<$Res> {
  $AppointmentDetailsEventCopyWith(
      AppointmentDetailsEvent _, $Res Function(AppointmentDetailsEvent) __);
}

/// @nodoc

class AppointmentFetched implements AppointmentDetailsEvent {
  const AppointmentFetched();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppointmentFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppointmentDetailsEvent.appointmentFetched()';
  }
}

/// @nodoc
mixin _$AppointmentDetailsState {
  AppointmentModel get appointment;

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppointmentDetailsStateCopyWith<AppointmentDetailsState> get copyWith =>
      _$AppointmentDetailsStateCopyWithImpl<AppointmentDetailsState>(
          this as AppointmentDetailsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppointmentDetailsState &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointment);

  @override
  String toString() {
    return 'AppointmentDetailsState(appointment: $appointment)';
  }
}

/// @nodoc
abstract mixin class $AppointmentDetailsStateCopyWith<$Res> {
  factory $AppointmentDetailsStateCopyWith(AppointmentDetailsState value,
          $Res Function(AppointmentDetailsState) _then) =
      _$AppointmentDetailsStateCopyWithImpl;
  @useResult
  $Res call({AppointmentModel appointment});

  $AppointmentModelCopyWith<$Res> get appointment;
}

/// @nodoc
class _$AppointmentDetailsStateCopyWithImpl<$Res>
    implements $AppointmentDetailsStateCopyWith<$Res> {
  _$AppointmentDetailsStateCopyWithImpl(this._self, this._then);

  final AppointmentDetailsState _self;
  final $Res Function(AppointmentDetailsState) _then;

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointment = null,
  }) {
    return _then(_self.copyWith(
      appointment: null == appointment
          ? _self.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentModel,
    ));
  }

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentModelCopyWith<$Res> get appointment {
    return $AppointmentModelCopyWith<$Res>(_self.appointment, (value) {
      return _then(_self.copyWith(appointment: value));
    });
  }
}

/// @nodoc

class _AppointmentDetailsState implements AppointmentDetailsState {
  const _AppointmentDetailsState({required this.appointment});

  @override
  final AppointmentModel appointment;

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppointmentDetailsStateCopyWith<_AppointmentDetailsState> get copyWith =>
      __$AppointmentDetailsStateCopyWithImpl<_AppointmentDetailsState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentDetailsState &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointment);

  @override
  String toString() {
    return 'AppointmentDetailsState(appointment: $appointment)';
  }
}

/// @nodoc
abstract mixin class _$AppointmentDetailsStateCopyWith<$Res>
    implements $AppointmentDetailsStateCopyWith<$Res> {
  factory _$AppointmentDetailsStateCopyWith(_AppointmentDetailsState value,
          $Res Function(_AppointmentDetailsState) _then) =
      __$AppointmentDetailsStateCopyWithImpl;
  @override
  @useResult
  $Res call({AppointmentModel appointment});

  @override
  $AppointmentModelCopyWith<$Res> get appointment;
}

/// @nodoc
class __$AppointmentDetailsStateCopyWithImpl<$Res>
    implements _$AppointmentDetailsStateCopyWith<$Res> {
  __$AppointmentDetailsStateCopyWithImpl(this._self, this._then);

  final _AppointmentDetailsState _self;
  final $Res Function(_AppointmentDetailsState) _then;

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? appointment = null,
  }) {
    return _then(_AppointmentDetailsState(
      appointment: null == appointment
          ? _self.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentModel,
    ));
  }

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentModelCopyWith<$Res> get appointment {
    return $AppointmentModelCopyWith<$Res>(_self.appointment, (value) {
      return _then(_self.copyWith(appointment: value));
    });
  }
}

// dart format on
