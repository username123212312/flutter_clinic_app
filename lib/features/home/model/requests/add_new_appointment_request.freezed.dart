// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_new_appointment_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AddNewAppointmentRequest {
  int get doctorId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  TimeOfDay? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'record_id')
  int? get recordId => throw _privateConstructorUsedError;
  bool get isVaccine => throw _privateConstructorUsedError;
  AppointmentType? get type => throw _privateConstructorUsedError;

  /// Create a copy of AddNewAppointmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddNewAppointmentRequestCopyWith<AddNewAppointmentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewAppointmentRequestCopyWith<$Res> {
  factory $AddNewAppointmentRequestCopyWith(
    AddNewAppointmentRequest value,
    $Res Function(AddNewAppointmentRequest) then,
  ) = _$AddNewAppointmentRequestCopyWithImpl<$Res, AddNewAppointmentRequest>;
  @useResult
  $Res call({
    int doctorId,
    DateTime date,
    TimeOfDay? time,
    @JsonKey(name: 'record_id') int? recordId,
    bool isVaccine,
    AppointmentType? type,
  });
}

/// @nodoc
class _$AddNewAppointmentRequestCopyWithImpl<
  $Res,
  $Val extends AddNewAppointmentRequest
>
    implements $AddNewAppointmentRequestCopyWith<$Res> {
  _$AddNewAppointmentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddNewAppointmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
    Object? date = null,
    Object? time = freezed,
    Object? recordId = freezed,
    Object? isVaccine = null,
    Object? type = freezed,
  }) {
    return _then(
      _value.copyWith(
            doctorId:
                null == doctorId
                    ? _value.doctorId
                    : doctorId // ignore: cast_nullable_to_non_nullable
                        as int,
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            time:
                freezed == time
                    ? _value.time
                    : time // ignore: cast_nullable_to_non_nullable
                        as TimeOfDay?,
            recordId:
                freezed == recordId
                    ? _value.recordId
                    : recordId // ignore: cast_nullable_to_non_nullable
                        as int?,
            isVaccine:
                null == isVaccine
                    ? _value.isVaccine
                    : isVaccine // ignore: cast_nullable_to_non_nullable
                        as bool,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as AppointmentType?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddNewAppointmentRequestImplCopyWith<$Res>
    implements $AddNewAppointmentRequestCopyWith<$Res> {
  factory _$$AddNewAppointmentRequestImplCopyWith(
    _$AddNewAppointmentRequestImpl value,
    $Res Function(_$AddNewAppointmentRequestImpl) then,
  ) = __$$AddNewAppointmentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int doctorId,
    DateTime date,
    TimeOfDay? time,
    @JsonKey(name: 'record_id') int? recordId,
    bool isVaccine,
    AppointmentType? type,
  });
}

/// @nodoc
class __$$AddNewAppointmentRequestImplCopyWithImpl<$Res>
    extends
        _$AddNewAppointmentRequestCopyWithImpl<
          $Res,
          _$AddNewAppointmentRequestImpl
        >
    implements _$$AddNewAppointmentRequestImplCopyWith<$Res> {
  __$$AddNewAppointmentRequestImplCopyWithImpl(
    _$AddNewAppointmentRequestImpl _value,
    $Res Function(_$AddNewAppointmentRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddNewAppointmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
    Object? date = null,
    Object? time = freezed,
    Object? recordId = freezed,
    Object? isVaccine = null,
    Object? type = freezed,
  }) {
    return _then(
      _$AddNewAppointmentRequestImpl(
        doctorId:
            null == doctorId
                ? _value.doctorId
                : doctorId // ignore: cast_nullable_to_non_nullable
                    as int,
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        time:
            freezed == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                    as TimeOfDay?,
        recordId:
            freezed == recordId
                ? _value.recordId
                : recordId // ignore: cast_nullable_to_non_nullable
                    as int?,
        isVaccine:
            null == isVaccine
                ? _value.isVaccine
                : isVaccine // ignore: cast_nullable_to_non_nullable
                    as bool,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as AppointmentType?,
      ),
    );
  }
}

/// @nodoc

class _$AddNewAppointmentRequestImpl implements _AddNewAppointmentRequest {
  _$AddNewAppointmentRequestImpl({
    required this.doctorId,
    required this.date,
    this.time,
    @JsonKey(name: 'record_id') this.recordId,
    this.isVaccine = false,
    this.type,
  });

  @override
  final int doctorId;
  @override
  final DateTime date;
  @override
  final TimeOfDay? time;
  @override
  @JsonKey(name: 'record_id')
  final int? recordId;
  @override
  @JsonKey()
  final bool isVaccine;
  @override
  final AppointmentType? type;

  @override
  String toString() {
    return 'AddNewAppointmentRequest(doctorId: $doctorId, date: $date, time: $time, recordId: $recordId, isVaccine: $isVaccine, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewAppointmentRequestImpl &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId) &&
            (identical(other.isVaccine, isVaccine) ||
                other.isVaccine == isVaccine) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, doctorId, date, time, recordId, isVaccine, type);

  /// Create a copy of AddNewAppointmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewAppointmentRequestImplCopyWith<_$AddNewAppointmentRequestImpl>
  get copyWith => __$$AddNewAppointmentRequestImplCopyWithImpl<
    _$AddNewAppointmentRequestImpl
  >(this, _$identity);
}

abstract class _AddNewAppointmentRequest implements AddNewAppointmentRequest {
  factory _AddNewAppointmentRequest({
    required final int doctorId,
    required final DateTime date,
    final TimeOfDay? time,
    @JsonKey(name: 'record_id') final int? recordId,
    final bool isVaccine,
    final AppointmentType? type,
  }) = _$AddNewAppointmentRequestImpl;

  @override
  int get doctorId;
  @override
  DateTime get date;
  @override
  TimeOfDay? get time;
  @override
  @JsonKey(name: 'record_id')
  int? get recordId;
  @override
  bool get isVaccine;
  @override
  AppointmentType? get type;

  /// Create a copy of AddNewAppointmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNewAppointmentRequestImplCopyWith<_$AddNewAppointmentRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
