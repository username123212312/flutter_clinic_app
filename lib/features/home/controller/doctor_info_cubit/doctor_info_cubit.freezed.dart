// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DoctorInfoState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DoctorModel get doctor => throw _privateConstructorUsedError;
  List<DateTime> get avaiableDates => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  List<TimeOfDay> get availableTimes => throw _privateConstructorUsedError;
  TimeOfDay? get selectedTime => throw _privateConstructorUsedError;
  VaccinationRecord? get vaccine => throw _privateConstructorUsedError;
  int? get appointmentId => throw _privateConstructorUsedError;
  bool? get isAuto => throw _privateConstructorUsedError;

  /// Create a copy of DoctorInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorInfoStateCopyWith<DoctorInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorInfoStateCopyWith<$Res> {
  factory $DoctorInfoStateCopyWith(
    DoctorInfoState value,
    $Res Function(DoctorInfoState) then,
  ) = _$DoctorInfoStateCopyWithImpl<$Res, DoctorInfoState>;
  @useResult
  $Res call({
    DataStatus status,
    String message,
    DoctorModel doctor,
    List<DateTime> avaiableDates,
    DateTime? selectedDate,
    List<TimeOfDay> availableTimes,
    TimeOfDay? selectedTime,
    VaccinationRecord? vaccine,
    int? appointmentId,
    bool? isAuto,
  });

  $DoctorModelCopyWith<$Res> get doctor;
  $VaccinationRecordCopyWith<$Res>? get vaccine;
}

/// @nodoc
class _$DoctorInfoStateCopyWithImpl<$Res, $Val extends DoctorInfoState>
    implements $DoctorInfoStateCopyWith<$Res> {
  _$DoctorInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? doctor = null,
    Object? avaiableDates = null,
    Object? selectedDate = freezed,
    Object? availableTimes = null,
    Object? selectedTime = freezed,
    Object? vaccine = freezed,
    Object? appointmentId = freezed,
    Object? isAuto = freezed,
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
            doctor:
                null == doctor
                    ? _value.doctor
                    : doctor // ignore: cast_nullable_to_non_nullable
                        as DoctorModel,
            avaiableDates:
                null == avaiableDates
                    ? _value.avaiableDates
                    : avaiableDates // ignore: cast_nullable_to_non_nullable
                        as List<DateTime>,
            selectedDate:
                freezed == selectedDate
                    ? _value.selectedDate
                    : selectedDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            availableTimes:
                null == availableTimes
                    ? _value.availableTimes
                    : availableTimes // ignore: cast_nullable_to_non_nullable
                        as List<TimeOfDay>,
            selectedTime:
                freezed == selectedTime
                    ? _value.selectedTime
                    : selectedTime // ignore: cast_nullable_to_non_nullable
                        as TimeOfDay?,
            vaccine:
                freezed == vaccine
                    ? _value.vaccine
                    : vaccine // ignore: cast_nullable_to_non_nullable
                        as VaccinationRecord?,
            appointmentId:
                freezed == appointmentId
                    ? _value.appointmentId
                    : appointmentId // ignore: cast_nullable_to_non_nullable
                        as int?,
            isAuto:
                freezed == isAuto
                    ? _value.isAuto
                    : isAuto // ignore: cast_nullable_to_non_nullable
                        as bool?,
          )
          as $Val,
    );
  }

  /// Create a copy of DoctorInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorModelCopyWith<$Res> get doctor {
    return $DoctorModelCopyWith<$Res>(_value.doctor, (value) {
      return _then(_value.copyWith(doctor: value) as $Val);
    });
  }

  /// Create a copy of DoctorInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VaccinationRecordCopyWith<$Res>? get vaccine {
    if (_value.vaccine == null) {
      return null;
    }

    return $VaccinationRecordCopyWith<$Res>(_value.vaccine!, (value) {
      return _then(_value.copyWith(vaccine: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorInfoStateImplCopyWith<$Res>
    implements $DoctorInfoStateCopyWith<$Res> {
  factory _$$DoctorInfoStateImplCopyWith(
    _$DoctorInfoStateImpl value,
    $Res Function(_$DoctorInfoStateImpl) then,
  ) = __$$DoctorInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DataStatus status,
    String message,
    DoctorModel doctor,
    List<DateTime> avaiableDates,
    DateTime? selectedDate,
    List<TimeOfDay> availableTimes,
    TimeOfDay? selectedTime,
    VaccinationRecord? vaccine,
    int? appointmentId,
    bool? isAuto,
  });

  @override
  $DoctorModelCopyWith<$Res> get doctor;
  @override
  $VaccinationRecordCopyWith<$Res>? get vaccine;
}

/// @nodoc
class __$$DoctorInfoStateImplCopyWithImpl<$Res>
    extends _$DoctorInfoStateCopyWithImpl<$Res, _$DoctorInfoStateImpl>
    implements _$$DoctorInfoStateImplCopyWith<$Res> {
  __$$DoctorInfoStateImplCopyWithImpl(
    _$DoctorInfoStateImpl _value,
    $Res Function(_$DoctorInfoStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? doctor = null,
    Object? avaiableDates = null,
    Object? selectedDate = freezed,
    Object? availableTimes = null,
    Object? selectedTime = freezed,
    Object? vaccine = freezed,
    Object? appointmentId = freezed,
    Object? isAuto = freezed,
  }) {
    return _then(
      _$DoctorInfoStateImpl(
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
        doctor:
            null == doctor
                ? _value.doctor
                : doctor // ignore: cast_nullable_to_non_nullable
                    as DoctorModel,
        avaiableDates:
            null == avaiableDates
                ? _value._avaiableDates
                : avaiableDates // ignore: cast_nullable_to_non_nullable
                    as List<DateTime>,
        selectedDate:
            freezed == selectedDate
                ? _value.selectedDate
                : selectedDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        availableTimes:
            null == availableTimes
                ? _value._availableTimes
                : availableTimes // ignore: cast_nullable_to_non_nullable
                    as List<TimeOfDay>,
        selectedTime:
            freezed == selectedTime
                ? _value.selectedTime
                : selectedTime // ignore: cast_nullable_to_non_nullable
                    as TimeOfDay?,
        vaccine:
            freezed == vaccine
                ? _value.vaccine
                : vaccine // ignore: cast_nullable_to_non_nullable
                    as VaccinationRecord?,
        appointmentId:
            freezed == appointmentId
                ? _value.appointmentId
                : appointmentId // ignore: cast_nullable_to_non_nullable
                    as int?,
        isAuto:
            freezed == isAuto
                ? _value.isAuto
                : isAuto // ignore: cast_nullable_to_non_nullable
                    as bool?,
      ),
    );
  }
}

/// @nodoc

class _$DoctorInfoStateImpl implements _DoctorInfoState {
  const _$DoctorInfoStateImpl({
    required this.status,
    required this.message,
    required this.doctor,
    required final List<DateTime> avaiableDates,
    this.selectedDate,
    required final List<TimeOfDay> availableTimes,
    this.selectedTime,
    this.vaccine,
    this.appointmentId,
    this.isAuto,
  }) : _avaiableDates = avaiableDates,
       _availableTimes = availableTimes;

  @override
  final DataStatus status;
  @override
  final String message;
  @override
  final DoctorModel doctor;
  final List<DateTime> _avaiableDates;
  @override
  List<DateTime> get avaiableDates {
    if (_avaiableDates is EqualUnmodifiableListView) return _avaiableDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avaiableDates);
  }

  @override
  final DateTime? selectedDate;
  final List<TimeOfDay> _availableTimes;
  @override
  List<TimeOfDay> get availableTimes {
    if (_availableTimes is EqualUnmodifiableListView) return _availableTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableTimes);
  }

  @override
  final TimeOfDay? selectedTime;
  @override
  final VaccinationRecord? vaccine;
  @override
  final int? appointmentId;
  @override
  final bool? isAuto;

  @override
  String toString() {
    return 'DoctorInfoState(status: $status, message: $message, doctor: $doctor, avaiableDates: $avaiableDates, selectedDate: $selectedDate, availableTimes: $availableTimes, selectedTime: $selectedTime, vaccine: $vaccine, appointmentId: $appointmentId, isAuto: $isAuto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorInfoStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            const DeepCollectionEquality().equals(
              other._avaiableDates,
              _avaiableDates,
            ) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            const DeepCollectionEquality().equals(
              other._availableTimes,
              _availableTimes,
            ) &&
            (identical(other.selectedTime, selectedTime) ||
                other.selectedTime == selectedTime) &&
            (identical(other.vaccine, vaccine) || other.vaccine == vaccine) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.isAuto, isAuto) || other.isAuto == isAuto));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    doctor,
    const DeepCollectionEquality().hash(_avaiableDates),
    selectedDate,
    const DeepCollectionEquality().hash(_availableTimes),
    selectedTime,
    vaccine,
    appointmentId,
    isAuto,
  );

  /// Create a copy of DoctorInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorInfoStateImplCopyWith<_$DoctorInfoStateImpl> get copyWith =>
      __$$DoctorInfoStateImplCopyWithImpl<_$DoctorInfoStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DoctorInfoState implements DoctorInfoState {
  const factory _DoctorInfoState({
    required final DataStatus status,
    required final String message,
    required final DoctorModel doctor,
    required final List<DateTime> avaiableDates,
    final DateTime? selectedDate,
    required final List<TimeOfDay> availableTimes,
    final TimeOfDay? selectedTime,
    final VaccinationRecord? vaccine,
    final int? appointmentId,
    final bool? isAuto,
  }) = _$DoctorInfoStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  DoctorModel get doctor;
  @override
  List<DateTime> get avaiableDates;
  @override
  DateTime? get selectedDate;
  @override
  List<TimeOfDay> get availableTimes;
  @override
  TimeOfDay? get selectedTime;
  @override
  VaccinationRecord? get vaccine;
  @override
  int? get appointmentId;
  @override
  bool? get isAuto;

  /// Create a copy of DoctorInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorInfoStateImplCopyWith<_$DoctorInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
