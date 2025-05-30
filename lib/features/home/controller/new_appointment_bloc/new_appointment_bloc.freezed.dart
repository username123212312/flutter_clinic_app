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

class ClinicDoctorsFetched implements NewAppointmentEvent {
  const ClinicDoctorsFetched({required this.clinic});

  final ClinicModel clinic;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClinicDoctorsFetchedCopyWith<ClinicDoctorsFetched> get copyWith =>
      _$ClinicDoctorsFetchedCopyWithImpl<ClinicDoctorsFetched>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClinicDoctorsFetched &&
            (identical(other.clinic, clinic) || other.clinic == clinic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clinic);

  @override
  String toString() {
    return 'NewAppointmentEvent.clinicDoctorsFetched(clinic: $clinic)';
  }
}

/// @nodoc
abstract mixin class $ClinicDoctorsFetchedCopyWith<$Res>
    implements $NewAppointmentEventCopyWith<$Res> {
  factory $ClinicDoctorsFetchedCopyWith(ClinicDoctorsFetched value,
          $Res Function(ClinicDoctorsFetched) _then) =
      _$ClinicDoctorsFetchedCopyWithImpl;
  @useResult
  $Res call({ClinicModel clinic});

  $ClinicModelCopyWith<$Res> get clinic;
}

/// @nodoc
class _$ClinicDoctorsFetchedCopyWithImpl<$Res>
    implements $ClinicDoctorsFetchedCopyWith<$Res> {
  _$ClinicDoctorsFetchedCopyWithImpl(this._self, this._then);

  final ClinicDoctorsFetched _self;
  final $Res Function(ClinicDoctorsFetched) _then;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clinic = null,
  }) {
    return _then(ClinicDoctorsFetched(
      clinic: null == clinic
          ? _self.clinic
          : clinic // ignore: cast_nullable_to_non_nullable
              as ClinicModel,
    ));
  }

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClinicModelCopyWith<$Res> get clinic {
    return $ClinicModelCopyWith<$Res>(_self.clinic, (value) {
      return _then(_self.copyWith(clinic: value));
    });
  }
}

/// @nodoc

class AllDoctorsFetched implements NewAppointmentEvent {
  const AllDoctorsFetched();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AllDoctorsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NewAppointmentEvent.allDoctorsFetched()';
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
  const DateSelected({required this.date});

  final DateTime date;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DateSelectedCopyWith<DateSelected> get copyWith =>
      _$DateSelectedCopyWithImpl<DateSelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DateSelected &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @override
  String toString() {
    return 'NewAppointmentEvent.dateSelected(date: $date)';
  }
}

/// @nodoc
abstract mixin class $DateSelectedCopyWith<$Res>
    implements $NewAppointmentEventCopyWith<$Res> {
  factory $DateSelectedCopyWith(
          DateSelected value, $Res Function(DateSelected) _then) =
      _$DateSelectedCopyWithImpl;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class _$DateSelectedCopyWithImpl<$Res> implements $DateSelectedCopyWith<$Res> {
  _$DateSelectedCopyWithImpl(this._self, this._then);

  final DateSelected _self;
  final $Res Function(DateSelected) _then;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
  }) {
    return _then(DateSelected(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class ScheduleSelected implements NewAppointmentEvent {
  const ScheduleSelected({required this.time});

  final TimeOfDay time;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ScheduleSelectedCopyWith<ScheduleSelected> get copyWith =>
      _$ScheduleSelectedCopyWithImpl<ScheduleSelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ScheduleSelected &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @override
  String toString() {
    return 'NewAppointmentEvent.scheduleSelected(time: $time)';
  }
}

/// @nodoc
abstract mixin class $ScheduleSelectedCopyWith<$Res>
    implements $NewAppointmentEventCopyWith<$Res> {
  factory $ScheduleSelectedCopyWith(
          ScheduleSelected value, $Res Function(ScheduleSelected) _then) =
      _$ScheduleSelectedCopyWithImpl;
  @useResult
  $Res call({TimeOfDay time});
}

/// @nodoc
class _$ScheduleSelectedCopyWithImpl<$Res>
    implements $ScheduleSelectedCopyWith<$Res> {
  _$ScheduleSelectedCopyWithImpl(this._self, this._then);

  final ScheduleSelected _self;
  final $Res Function(ScheduleSelected) _then;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? time = null,
  }) {
    return _then(ScheduleSelected(
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class BookedNewAppointment implements NewAppointmentEvent {
  const BookedNewAppointment();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BookedNewAppointment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NewAppointmentEvent.bookedNewAppointment()';
  }
}

/// @nodoc

class DoctorSearched implements NewAppointmentEvent {
  const DoctorSearched({required this.query});

  final String query;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DoctorSearchedCopyWith<DoctorSearched> get copyWith =>
      _$DoctorSearchedCopyWithImpl<DoctorSearched>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DoctorSearched &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @override
  String toString() {
    return 'NewAppointmentEvent.doctorSearched(query: $query)';
  }
}

/// @nodoc
abstract mixin class $DoctorSearchedCopyWith<$Res>
    implements $NewAppointmentEventCopyWith<$Res> {
  factory $DoctorSearchedCopyWith(
          DoctorSearched value, $Res Function(DoctorSearched) _then) =
      _$DoctorSearchedCopyWithImpl;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$DoctorSearchedCopyWithImpl<$Res>
    implements $DoctorSearchedCopyWith<$Res> {
  _$DoctorSearchedCopyWithImpl(this._self, this._then);

  final DoctorSearched _self;
  final $Res Function(DoctorSearched) _then;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
  }) {
    return _then(DoctorSearched(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$NewAppointmentState {
  ClinicModel? get department;
  DoctorModel? get doctor;
  List<DoctorModel>? get searchList;
  String? get statusMessage;
  List<DoctorModel>? get doctors;
  List<ClinicModel>? get clinics;
  List<DateTime>? get dates;
  DateTime? get date;
  List<TimeOfDay>? get availableTimes;
  TimeOfDay? get time;
  DataStatus? get status;

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
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            const DeepCollectionEquality()
                .equals(other.searchList, searchList) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage) &&
            const DeepCollectionEquality().equals(other.doctors, doctors) &&
            const DeepCollectionEquality().equals(other.clinics, clinics) &&
            const DeepCollectionEquality().equals(other.dates, dates) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other.availableTimes, availableTimes) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      department,
      doctor,
      const DeepCollectionEquality().hash(searchList),
      statusMessage,
      const DeepCollectionEquality().hash(doctors),
      const DeepCollectionEquality().hash(clinics),
      const DeepCollectionEquality().hash(dates),
      date,
      const DeepCollectionEquality().hash(availableTimes),
      time,
      status);

  @override
  String toString() {
    return 'NewAppointmentState(department: $department, doctor: $doctor, searchList: $searchList, statusMessage: $statusMessage, doctors: $doctors, clinics: $clinics, dates: $dates, date: $date, availableTimes: $availableTimes, time: $time, status: $status)';
  }
}

/// @nodoc
abstract mixin class $NewAppointmentStateCopyWith<$Res> {
  factory $NewAppointmentStateCopyWith(
          NewAppointmentState value, $Res Function(NewAppointmentState) _then) =
      _$NewAppointmentStateCopyWithImpl;
  @useResult
  $Res call(
      {ClinicModel? department,
      DoctorModel? doctor,
      List<DoctorModel>? searchList,
      String? statusMessage,
      List<DoctorModel>? doctors,
      List<ClinicModel>? clinics,
      List<DateTime>? dates,
      DateTime? date,
      List<TimeOfDay>? availableTimes,
      TimeOfDay? time,
      DataStatus? status});

  $ClinicModelCopyWith<$Res>? get department;
  $DoctorModelCopyWith<$Res>? get doctor;
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
    Object? department = freezed,
    Object? doctor = freezed,
    Object? searchList = freezed,
    Object? statusMessage = freezed,
    Object? doctors = freezed,
    Object? clinics = freezed,
    Object? dates = freezed,
    Object? date = freezed,
    Object? availableTimes = freezed,
    Object? time = freezed,
    Object? status = freezed,
  }) {
    return _then(_self.copyWith(
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as ClinicModel?,
      doctor: freezed == doctor
          ? _self.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as DoctorModel?,
      searchList: freezed == searchList
          ? _self.searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<DoctorModel>?,
      statusMessage: freezed == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      doctors: freezed == doctors
          ? _self.doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<DoctorModel>?,
      clinics: freezed == clinics
          ? _self.clinics
          : clinics // ignore: cast_nullable_to_non_nullable
              as List<ClinicModel>?,
      dates: freezed == dates
          ? _self.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableTimes: freezed == availableTimes
          ? _self.availableTimes
          : availableTimes // ignore: cast_nullable_to_non_nullable
              as List<TimeOfDay>?,
      time: freezed == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus?,
    ));
  }

  /// Create a copy of NewAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClinicModelCopyWith<$Res>? get department {
    if (_self.department == null) {
      return null;
    }

    return $ClinicModelCopyWith<$Res>(_self.department!, (value) {
      return _then(_self.copyWith(department: value));
    });
  }

  /// Create a copy of NewAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorModelCopyWith<$Res>? get doctor {
    if (_self.doctor == null) {
      return null;
    }

    return $DoctorModelCopyWith<$Res>(_self.doctor!, (value) {
      return _then(_self.copyWith(doctor: value));
    });
  }
}

/// @nodoc

class _NewAppointmentState implements NewAppointmentState {
  const _NewAppointmentState(
      {this.department,
      this.doctor,
      final List<DoctorModel>? searchList,
      this.statusMessage,
      final List<DoctorModel>? doctors,
      final List<ClinicModel>? clinics,
      final List<DateTime>? dates,
      this.date,
      final List<TimeOfDay>? availableTimes,
      this.time,
      this.status})
      : _searchList = searchList,
        _doctors = doctors,
        _clinics = clinics,
        _dates = dates,
        _availableTimes = availableTimes;

  @override
  final ClinicModel? department;
  @override
  final DoctorModel? doctor;
  final List<DoctorModel>? _searchList;
  @override
  List<DoctorModel>? get searchList {
    final value = _searchList;
    if (value == null) return null;
    if (_searchList is EqualUnmodifiableListView) return _searchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? statusMessage;
  final List<DoctorModel>? _doctors;
  @override
  List<DoctorModel>? get doctors {
    final value = _doctors;
    if (value == null) return null;
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ClinicModel>? _clinics;
  @override
  List<ClinicModel>? get clinics {
    final value = _clinics;
    if (value == null) return null;
    if (_clinics is EqualUnmodifiableListView) return _clinics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DateTime>? _dates;
  @override
  List<DateTime>? get dates {
    final value = _dates;
    if (value == null) return null;
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? date;
  final List<TimeOfDay>? _availableTimes;
  @override
  List<TimeOfDay>? get availableTimes {
    final value = _availableTimes;
    if (value == null) return null;
    if (_availableTimes is EqualUnmodifiableListView) return _availableTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TimeOfDay? time;
  @override
  final DataStatus? status;

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
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            const DeepCollectionEquality()
                .equals(other._searchList, _searchList) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage) &&
            const DeepCollectionEquality().equals(other._doctors, _doctors) &&
            const DeepCollectionEquality().equals(other._clinics, _clinics) &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._availableTimes, _availableTimes) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      department,
      doctor,
      const DeepCollectionEquality().hash(_searchList),
      statusMessage,
      const DeepCollectionEquality().hash(_doctors),
      const DeepCollectionEquality().hash(_clinics),
      const DeepCollectionEquality().hash(_dates),
      date,
      const DeepCollectionEquality().hash(_availableTimes),
      time,
      status);

  @override
  String toString() {
    return 'NewAppointmentState(department: $department, doctor: $doctor, searchList: $searchList, statusMessage: $statusMessage, doctors: $doctors, clinics: $clinics, dates: $dates, date: $date, availableTimes: $availableTimes, time: $time, status: $status)';
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
      {ClinicModel? department,
      DoctorModel? doctor,
      List<DoctorModel>? searchList,
      String? statusMessage,
      List<DoctorModel>? doctors,
      List<ClinicModel>? clinics,
      List<DateTime>? dates,
      DateTime? date,
      List<TimeOfDay>? availableTimes,
      TimeOfDay? time,
      DataStatus? status});

  @override
  $ClinicModelCopyWith<$Res>? get department;
  @override
  $DoctorModelCopyWith<$Res>? get doctor;
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
    Object? department = freezed,
    Object? doctor = freezed,
    Object? searchList = freezed,
    Object? statusMessage = freezed,
    Object? doctors = freezed,
    Object? clinics = freezed,
    Object? dates = freezed,
    Object? date = freezed,
    Object? availableTimes = freezed,
    Object? time = freezed,
    Object? status = freezed,
  }) {
    return _then(_NewAppointmentState(
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as ClinicModel?,
      doctor: freezed == doctor
          ? _self.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as DoctorModel?,
      searchList: freezed == searchList
          ? _self._searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<DoctorModel>?,
      statusMessage: freezed == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      doctors: freezed == doctors
          ? _self._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<DoctorModel>?,
      clinics: freezed == clinics
          ? _self._clinics
          : clinics // ignore: cast_nullable_to_non_nullable
              as List<ClinicModel>?,
      dates: freezed == dates
          ? _self._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableTimes: freezed == availableTimes
          ? _self._availableTimes
          : availableTimes // ignore: cast_nullable_to_non_nullable
              as List<TimeOfDay>?,
      time: freezed == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus?,
    ));
  }

  /// Create a copy of NewAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClinicModelCopyWith<$Res>? get department {
    if (_self.department == null) {
      return null;
    }

    return $ClinicModelCopyWith<$Res>(_self.department!, (value) {
      return _then(_self.copyWith(department: value));
    });
  }

  /// Create a copy of NewAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorModelCopyWith<$Res>? get doctor {
    if (_self.doctor == null) {
      return null;
    }

    return $DoctorModelCopyWith<$Res>(_self.doctor!, (value) {
      return _then(_self.copyWith(doctor: value));
    });
  }
}

// dart format on
