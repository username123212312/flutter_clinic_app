// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_reservation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditReservationRequest {
  DateTime get oldDate;
  TimeOfDay get oldTime;
  int get clinicId;
  int get doctorId;
  DateTime get newDate;
  TimeOfDay get newTime;

  /// Create a copy of EditReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditReservationRequestCopyWith<EditReservationRequest> get copyWith =>
      _$EditReservationRequestCopyWithImpl<EditReservationRequest>(
          this as EditReservationRequest, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditReservationRequest &&
            (identical(other.oldDate, oldDate) || other.oldDate == oldDate) &&
            (identical(other.oldTime, oldTime) || other.oldTime == oldTime) &&
            (identical(other.clinicId, clinicId) ||
                other.clinicId == clinicId) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.newDate, newDate) || other.newDate == newDate) &&
            (identical(other.newTime, newTime) || other.newTime == newTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, oldDate, oldTime, clinicId, doctorId, newDate, newTime);

  @override
  String toString() {
    return 'EditReservationRequest(oldDate: $oldDate, oldTime: $oldTime, clinicId: $clinicId, doctorId: $doctorId, newDate: $newDate, newTime: $newTime)';
  }
}

/// @nodoc
abstract mixin class $EditReservationRequestCopyWith<$Res> {
  factory $EditReservationRequestCopyWith(EditReservationRequest value,
          $Res Function(EditReservationRequest) _then) =
      _$EditReservationRequestCopyWithImpl;
  @useResult
  $Res call(
      {DateTime oldDate,
      TimeOfDay oldTime,
      int clinicId,
      int doctorId,
      DateTime newDate,
      TimeOfDay newTime});
}

/// @nodoc
class _$EditReservationRequestCopyWithImpl<$Res>
    implements $EditReservationRequestCopyWith<$Res> {
  _$EditReservationRequestCopyWithImpl(this._self, this._then);

  final EditReservationRequest _self;
  final $Res Function(EditReservationRequest) _then;

  /// Create a copy of EditReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldDate = null,
    Object? oldTime = null,
    Object? clinicId = null,
    Object? doctorId = null,
    Object? newDate = null,
    Object? newTime = null,
  }) {
    return _then(_self.copyWith(
      oldDate: null == oldDate
          ? _self.oldDate
          : oldDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      oldTime: null == oldTime
          ? _self.oldTime
          : oldTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      clinicId: null == clinicId
          ? _self.clinicId
          : clinicId // ignore: cast_nullable_to_non_nullable
              as int,
      doctorId: null == doctorId
          ? _self.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int,
      newDate: null == newDate
          ? _self.newDate
          : newDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      newTime: null == newTime
          ? _self.newTime
          : newTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _EditReservationRequest implements EditReservationRequest {
  _EditReservationRequest(
      {required this.oldDate,
      required this.oldTime,
      required this.clinicId,
      required this.doctorId,
      required this.newDate,
      required this.newTime});

  @override
  final DateTime oldDate;
  @override
  final TimeOfDay oldTime;
  @override
  final int clinicId;
  @override
  final int doctorId;
  @override
  final DateTime newDate;
  @override
  final TimeOfDay newTime;

  /// Create a copy of EditReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditReservationRequestCopyWith<_EditReservationRequest> get copyWith =>
      __$EditReservationRequestCopyWithImpl<_EditReservationRequest>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditReservationRequest &&
            (identical(other.oldDate, oldDate) || other.oldDate == oldDate) &&
            (identical(other.oldTime, oldTime) || other.oldTime == oldTime) &&
            (identical(other.clinicId, clinicId) ||
                other.clinicId == clinicId) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.newDate, newDate) || other.newDate == newDate) &&
            (identical(other.newTime, newTime) || other.newTime == newTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, oldDate, oldTime, clinicId, doctorId, newDate, newTime);

  @override
  String toString() {
    return 'EditReservationRequest(oldDate: $oldDate, oldTime: $oldTime, clinicId: $clinicId, doctorId: $doctorId, newDate: $newDate, newTime: $newTime)';
  }
}

/// @nodoc
abstract mixin class _$EditReservationRequestCopyWith<$Res>
    implements $EditReservationRequestCopyWith<$Res> {
  factory _$EditReservationRequestCopyWith(_EditReservationRequest value,
          $Res Function(_EditReservationRequest) _then) =
      __$EditReservationRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DateTime oldDate,
      TimeOfDay oldTime,
      int clinicId,
      int doctorId,
      DateTime newDate,
      TimeOfDay newTime});
}

/// @nodoc
class __$EditReservationRequestCopyWithImpl<$Res>
    implements _$EditReservationRequestCopyWith<$Res> {
  __$EditReservationRequestCopyWithImpl(this._self, this._then);

  final _EditReservationRequest _self;
  final $Res Function(_EditReservationRequest) _then;

  /// Create a copy of EditReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? oldDate = null,
    Object? oldTime = null,
    Object? clinicId = null,
    Object? doctorId = null,
    Object? newDate = null,
    Object? newTime = null,
  }) {
    return _then(_EditReservationRequest(
      oldDate: null == oldDate
          ? _self.oldDate
          : oldDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      oldTime: null == oldTime
          ? _self.oldTime
          : oldTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      clinicId: null == clinicId
          ? _self.clinicId
          : clinicId // ignore: cast_nullable_to_non_nullable
              as int,
      doctorId: null == doctorId
          ? _self.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int,
      newDate: null == newDate
          ? _self.newDate
          : newDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      newTime: null == newTime
          ? _self.newTime
          : newTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

// dart format on
