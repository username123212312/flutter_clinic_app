// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_new_appointment_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddNewAppointmentRequest {
  int get doctorId;
  DateTime get date;
  TimeOfDay get time;

  /// Create a copy of AddNewAppointmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddNewAppointmentRequestCopyWith<AddNewAppointmentRequest> get copyWith =>
      _$AddNewAppointmentRequestCopyWithImpl<AddNewAppointmentRequest>(
          this as AddNewAppointmentRequest, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddNewAppointmentRequest &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorId, date, time);

  @override
  String toString() {
    return 'AddNewAppointmentRequest(doctorId: $doctorId, date: $date, time: $time)';
  }
}

/// @nodoc
abstract mixin class $AddNewAppointmentRequestCopyWith<$Res> {
  factory $AddNewAppointmentRequestCopyWith(AddNewAppointmentRequest value,
          $Res Function(AddNewAppointmentRequest) _then) =
      _$AddNewAppointmentRequestCopyWithImpl;
  @useResult
  $Res call({int doctorId, DateTime date, TimeOfDay time});
}

/// @nodoc
class _$AddNewAppointmentRequestCopyWithImpl<$Res>
    implements $AddNewAppointmentRequestCopyWith<$Res> {
  _$AddNewAppointmentRequestCopyWithImpl(this._self, this._then);

  final AddNewAppointmentRequest _self;
  final $Res Function(AddNewAppointmentRequest) _then;

  /// Create a copy of AddNewAppointmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
    Object? date = null,
    Object? time = null,
  }) {
    return _then(_self.copyWith(
      doctorId: null == doctorId
          ? _self.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _AddNewAppointmentRequest implements AddNewAppointmentRequest {
  _AddNewAppointmentRequest(
      {required this.doctorId, required this.date, required this.time});

  @override
  final int doctorId;
  @override
  final DateTime date;
  @override
  final TimeOfDay time;

  /// Create a copy of AddNewAppointmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddNewAppointmentRequestCopyWith<_AddNewAppointmentRequest> get copyWith =>
      __$AddNewAppointmentRequestCopyWithImpl<_AddNewAppointmentRequest>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddNewAppointmentRequest &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorId, date, time);

  @override
  String toString() {
    return 'AddNewAppointmentRequest(doctorId: $doctorId, date: $date, time: $time)';
  }
}

/// @nodoc
abstract mixin class _$AddNewAppointmentRequestCopyWith<$Res>
    implements $AddNewAppointmentRequestCopyWith<$Res> {
  factory _$AddNewAppointmentRequestCopyWith(_AddNewAppointmentRequest value,
          $Res Function(_AddNewAppointmentRequest) _then) =
      __$AddNewAppointmentRequestCopyWithImpl;
  @override
  @useResult
  $Res call({int doctorId, DateTime date, TimeOfDay time});
}

/// @nodoc
class __$AddNewAppointmentRequestCopyWithImpl<$Res>
    implements _$AddNewAppointmentRequestCopyWith<$Res> {
  __$AddNewAppointmentRequestCopyWithImpl(this._self, this._then);

  final _AddNewAppointmentRequest _self;
  final $Res Function(_AddNewAppointmentRequest) _then;

  /// Create a copy of AddNewAppointmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? doctorId = null,
    Object? date = null,
    Object? time = null,
  }) {
    return _then(_AddNewAppointmentRequest(
      doctorId: null == doctorId
          ? _self.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

// dart format on
