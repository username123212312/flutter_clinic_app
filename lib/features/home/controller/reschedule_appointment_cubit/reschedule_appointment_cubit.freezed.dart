// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reschedule_appointment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RescheduleAppointmentState {
  AppointmentModel? get appointment => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  List<DateTime> get availableDates => throw _privateConstructorUsedError;
  TimeOfDay? get selectedTime => throw _privateConstructorUsedError;
  List<TimeOfDay> get availableTimes => throw _privateConstructorUsedError;
  DataStatus? get status => throw _privateConstructorUsedError;
  String? get statusMessage => throw _privateConstructorUsedError;

  /// Create a copy of RescheduleAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RescheduleAppointmentStateCopyWith<RescheduleAppointmentState>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RescheduleAppointmentStateCopyWith<$Res> {
  factory $RescheduleAppointmentStateCopyWith(
    RescheduleAppointmentState value,
    $Res Function(RescheduleAppointmentState) then,
  ) =
      _$RescheduleAppointmentStateCopyWithImpl<
        $Res,
        RescheduleAppointmentState
      >;
  @useResult
  $Res call({
    AppointmentModel? appointment,
    DateTime? selectedDate,
    List<DateTime> availableDates,
    TimeOfDay? selectedTime,
    List<TimeOfDay> availableTimes,
    DataStatus? status,
    String? statusMessage,
  });

  $AppointmentModelCopyWith<$Res>? get appointment;
}

/// @nodoc
class _$RescheduleAppointmentStateCopyWithImpl<
  $Res,
  $Val extends RescheduleAppointmentState
>
    implements $RescheduleAppointmentStateCopyWith<$Res> {
  _$RescheduleAppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(
      _value.copyWith(
            appointment:
                freezed == appointment
                    ? _value.appointment
                    : appointment // ignore: cast_nullable_to_non_nullable
                        as AppointmentModel?,
            selectedDate:
                freezed == selectedDate
                    ? _value.selectedDate
                    : selectedDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            availableDates:
                null == availableDates
                    ? _value.availableDates
                    : availableDates // ignore: cast_nullable_to_non_nullable
                        as List<DateTime>,
            selectedTime:
                freezed == selectedTime
                    ? _value.selectedTime
                    : selectedTime // ignore: cast_nullable_to_non_nullable
                        as TimeOfDay?,
            availableTimes:
                null == availableTimes
                    ? _value.availableTimes
                    : availableTimes // ignore: cast_nullable_to_non_nullable
                        as List<TimeOfDay>,
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as DataStatus?,
            statusMessage:
                freezed == statusMessage
                    ? _value.statusMessage
                    : statusMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of RescheduleAppointmentState
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
abstract class _$$RescheduleAppointmentStateImplCopyWith<$Res>
    implements $RescheduleAppointmentStateCopyWith<$Res> {
  factory _$$RescheduleAppointmentStateImplCopyWith(
    _$RescheduleAppointmentStateImpl value,
    $Res Function(_$RescheduleAppointmentStateImpl) then,
  ) = __$$RescheduleAppointmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AppointmentModel? appointment,
    DateTime? selectedDate,
    List<DateTime> availableDates,
    TimeOfDay? selectedTime,
    List<TimeOfDay> availableTimes,
    DataStatus? status,
    String? statusMessage,
  });

  @override
  $AppointmentModelCopyWith<$Res>? get appointment;
}

/// @nodoc
class __$$RescheduleAppointmentStateImplCopyWithImpl<$Res>
    extends
        _$RescheduleAppointmentStateCopyWithImpl<
          $Res,
          _$RescheduleAppointmentStateImpl
        >
    implements _$$RescheduleAppointmentStateImplCopyWith<$Res> {
  __$$RescheduleAppointmentStateImplCopyWithImpl(
    _$RescheduleAppointmentStateImpl _value,
    $Res Function(_$RescheduleAppointmentStateImpl) _then,
  ) : super(_value, _then);

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
    return _then(
      _$RescheduleAppointmentStateImpl(
        appointment:
            freezed == appointment
                ? _value.appointment
                : appointment // ignore: cast_nullable_to_non_nullable
                    as AppointmentModel?,
        selectedDate:
            freezed == selectedDate
                ? _value.selectedDate
                : selectedDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        availableDates:
            null == availableDates
                ? _value._availableDates
                : availableDates // ignore: cast_nullable_to_non_nullable
                    as List<DateTime>,
        selectedTime:
            freezed == selectedTime
                ? _value.selectedTime
                : selectedTime // ignore: cast_nullable_to_non_nullable
                    as TimeOfDay?,
        availableTimes:
            null == availableTimes
                ? _value._availableTimes
                : availableTimes // ignore: cast_nullable_to_non_nullable
                    as List<TimeOfDay>,
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as DataStatus?,
        statusMessage:
            freezed == statusMessage
                ? _value.statusMessage
                : statusMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$RescheduleAppointmentStateImpl implements _RescheduleAppointmentState {
  const _$RescheduleAppointmentStateImpl({
    this.appointment,
    this.selectedDate,
    required final List<DateTime> availableDates,
    this.selectedTime,
    required final List<TimeOfDay> availableTimes,
    this.status,
    this.statusMessage,
  }) : _availableDates = availableDates,
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

  @override
  String toString() {
    return 'RescheduleAppointmentState(appointment: $appointment, selectedDate: $selectedDate, availableDates: $availableDates, selectedTime: $selectedTime, availableTimes: $availableTimes, status: $status, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RescheduleAppointmentStateImpl &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            const DeepCollectionEquality().equals(
              other._availableDates,
              _availableDates,
            ) &&
            (identical(other.selectedTime, selectedTime) ||
                other.selectedTime == selectedTime) &&
            const DeepCollectionEquality().equals(
              other._availableTimes,
              _availableTimes,
            ) &&
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
    statusMessage,
  );

  /// Create a copy of RescheduleAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RescheduleAppointmentStateImplCopyWith<_$RescheduleAppointmentStateImpl>
  get copyWith => __$$RescheduleAppointmentStateImplCopyWithImpl<
    _$RescheduleAppointmentStateImpl
  >(this, _$identity);
}

abstract class _RescheduleAppointmentState
    implements RescheduleAppointmentState {
  const factory _RescheduleAppointmentState({
    final AppointmentModel? appointment,
    final DateTime? selectedDate,
    required final List<DateTime> availableDates,
    final TimeOfDay? selectedTime,
    required final List<TimeOfDay> availableTimes,
    final DataStatus? status,
    final String? statusMessage,
  }) = _$RescheduleAppointmentStateImpl;

  @override
  AppointmentModel? get appointment;
  @override
  DateTime? get selectedDate;
  @override
  List<DateTime> get availableDates;
  @override
  TimeOfDay? get selectedTime;
  @override
  List<TimeOfDay> get availableTimes;
  @override
  DataStatus? get status;
  @override
  String? get statusMessage;

  /// Create a copy of RescheduleAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RescheduleAppointmentStateImplCopyWith<_$RescheduleAppointmentStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
