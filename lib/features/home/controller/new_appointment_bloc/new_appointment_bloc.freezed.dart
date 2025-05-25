// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_appointment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewAppointmentEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewAppointmentEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NewAppointmentEvent()';
  }
}

/// @nodoc
class $NewAppointmentEventCopyWith<$Res> {
  $NewAppointmentEventCopyWith(
      NewAppointmentEvent _, $Res Function(NewAppointmentEvent) __);
}

/// @nodoc

class ClinicsFetched implements NewAppointmentEvent {
  const ClinicsFetched();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClinicsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NewAppointmentEvent.clinicsFetched()';
  }
}

/// @nodoc

class DoctorsFetched implements NewAppointmentEvent {
  const DoctorsFetched({required this.clinicId});

  final int clinicId;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DoctorsFetchedCopyWith<DoctorsFetched> get copyWith =>
      _$DoctorsFetchedCopyWithImpl<DoctorsFetched>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DoctorsFetched &&
            (identical(other.clinicId, clinicId) ||
                other.clinicId == clinicId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clinicId);

  @override
  String toString() {
    return 'NewAppointmentEvent.doctorsFetched(clinicId: $clinicId)';
  }
}

/// @nodoc
abstract mixin class $DoctorsFetchedCopyWith<$Res>
    implements $NewAppointmentEventCopyWith<$Res> {
  factory $DoctorsFetchedCopyWith(
          DoctorsFetched value, $Res Function(DoctorsFetched) _then) =
      _$DoctorsFetchedCopyWithImpl;
  @useResult
  $Res call({int clinicId});
}

/// @nodoc
class _$DoctorsFetchedCopyWithImpl<$Res>
    implements $DoctorsFetchedCopyWith<$Res> {
  _$DoctorsFetchedCopyWithImpl(this._self, this._then);

  final DoctorsFetched _self;
  final $Res Function(DoctorsFetched) _then;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clinicId = null,
  }) {
    return _then(DoctorsFetched(
      clinicId: null == clinicId
          ? _self.clinicId
          : clinicId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class DoctorSelected implements NewAppointmentEvent {
  const DoctorSelected({required this.doctor});

  final DoctorModel doctor;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DoctorSelectedCopyWith<DoctorSelected> get copyWith =>
      _$DoctorSelectedCopyWithImpl<DoctorSelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DoctorSelected &&
            (identical(other.doctor, doctor) || other.doctor == doctor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctor);

  @override
  String toString() {
    return 'NewAppointmentEvent.doctorSelected(doctor: $doctor)';
  }
}

/// @nodoc
abstract mixin class $DoctorSelectedCopyWith<$Res>
    implements $NewAppointmentEventCopyWith<$Res> {
  factory $DoctorSelectedCopyWith(
          DoctorSelected value, $Res Function(DoctorSelected) _then) =
      _$DoctorSelectedCopyWithImpl;
  @useResult
  $Res call({DoctorModel doctor});

  $DoctorModelCopyWith<$Res> get doctor;
}

/// @nodoc
class _$DoctorSelectedCopyWithImpl<$Res>
    implements $DoctorSelectedCopyWith<$Res> {
  _$DoctorSelectedCopyWithImpl(this._self, this._then);

  final DoctorSelected _self;
  final $Res Function(DoctorSelected) _then;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? doctor = null,
  }) {
    return _then(DoctorSelected(
      doctor: null == doctor
          ? _self.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as DoctorModel,
    ));
  }

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorModelCopyWith<$Res> get doctor {
    return $DoctorModelCopyWith<$Res>(_self.doctor, (value) {
      return _then(_self.copyWith(doctor: value));
    });
  }
}

/// @nodoc

class DateSelected implements NewAppointmentEvent {
  const DateSelected();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DateSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NewAppointmentEvent.dateSelected()';
  }
}

/// @nodoc

class ScheduleSelected implements NewAppointmentEvent {
  const ScheduleSelected();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ScheduleSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NewAppointmentEvent.scheduleSelected()';
  }
}

/// @nodoc
mixin _$NewAppointmentState {
  String get departmentId;
  List<DoctorModel> get doctors;
  DateTime get date;
  List<String> get availableSchedules;

  /// Create a copy of NewAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewAppointmentStateCopyWith<NewAppointmentState> get copyWith =>
      _$NewAppointmentStateCopyWithImpl<NewAppointmentState>(
          this as NewAppointmentState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewAppointmentState &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            const DeepCollectionEquality().equals(other.doctors, doctors) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other.availableSchedules, availableSchedules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      departmentId,
      const DeepCollectionEquality().hash(doctors),
      date,
      const DeepCollectionEquality().hash(availableSchedules));

  @override
  String toString() {
    return 'NewAppointmentState(departmentId: $departmentId, doctors: $doctors, date: $date, availableSchedules: $availableSchedules)';
  }
}

/// @nodoc
abstract mixin class $NewAppointmentStateCopyWith<$Res> {
  factory $NewAppointmentStateCopyWith(
          NewAppointmentState value, $Res Function(NewAppointmentState) _then) =
      _$NewAppointmentStateCopyWithImpl;
  @useResult
  $Res call(
      {String departmentId,
      List<DoctorModel> doctors,
      DateTime date,
      List<String> availableSchedules});
}

/// @nodoc
class _$NewAppointmentStateCopyWithImpl<$Res>
    implements $NewAppointmentStateCopyWith<$Res> {
  _$NewAppointmentStateCopyWithImpl(this._self, this._then);

  final NewAppointmentState _self;
  final $Res Function(NewAppointmentState) _then;

  /// Create a copy of NewAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentId = null,
    Object? doctors = null,
    Object? date = null,
    Object? availableSchedules = null,
  }) {
    return _then(_self.copyWith(
      departmentId: null == departmentId
          ? _self.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as String,
      doctors: null == doctors
          ? _self.doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<DoctorModel>,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      availableSchedules: null == availableSchedules
          ? _self.availableSchedules
          : availableSchedules // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _NewAppointmentState implements NewAppointmentState {
  const _NewAppointmentState(
      {required this.departmentId,
      required final List<DoctorModel> doctors,
      required this.date,
      required final List<String> availableSchedules})
      : _doctors = doctors,
        _availableSchedules = availableSchedules;

  @override
  final String departmentId;
  final List<DoctorModel> _doctors;
  @override
  List<DoctorModel> get doctors {
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  @override
  final DateTime date;
  final List<String> _availableSchedules;
  @override
  List<String> get availableSchedules {
    if (_availableSchedules is EqualUnmodifiableListView)
      return _availableSchedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableSchedules);
  }

  /// Create a copy of NewAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewAppointmentStateCopyWith<_NewAppointmentState> get copyWith =>
      __$NewAppointmentStateCopyWithImpl<_NewAppointmentState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewAppointmentState &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            const DeepCollectionEquality().equals(other._doctors, _doctors) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._availableSchedules, _availableSchedules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      departmentId,
      const DeepCollectionEquality().hash(_doctors),
      date,
      const DeepCollectionEquality().hash(_availableSchedules));

  @override
  String toString() {
    return 'NewAppointmentState(departmentId: $departmentId, doctors: $doctors, date: $date, availableSchedules: $availableSchedules)';
  }
}

/// @nodoc
abstract mixin class _$NewAppointmentStateCopyWith<$Res>
    implements $NewAppointmentStateCopyWith<$Res> {
  factory _$NewAppointmentStateCopyWith(_NewAppointmentState value,
          $Res Function(_NewAppointmentState) _then) =
      __$NewAppointmentStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String departmentId,
      List<DoctorModel> doctors,
      DateTime date,
      List<String> availableSchedules});
}

/// @nodoc
class __$NewAppointmentStateCopyWithImpl<$Res>
    implements _$NewAppointmentStateCopyWith<$Res> {
  __$NewAppointmentStateCopyWithImpl(this._self, this._then);

  final _NewAppointmentState _self;
  final $Res Function(_NewAppointmentState) _then;

  /// Create a copy of NewAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? departmentId = null,
    Object? doctors = null,
    Object? date = null,
    Object? availableSchedules = null,
  }) {
    return _then(_NewAppointmentState(
      departmentId: null == departmentId
          ? _self.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as String,
      doctors: null == doctors
          ? _self._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<DoctorModel>,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      availableSchedules: null == availableSchedules
          ? _self._availableSchedules
          : availableSchedules // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
