// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_appointment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NewAppointmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clinicsFetched,
    required TResult Function(ClinicModel clinic) clinicDoctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(DoctorModel doctor) doctorSelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) scheduleSelected,
    required TResult Function(VaccinationRecord? vaccination)
    bookedNewAppointment,
    required TResult Function(String query) doctorSearched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clinicsFetched,
    TResult? Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(DoctorModel doctor)? doctorSelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function(TimeOfDay time)? scheduleSelected,
    TResult? Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult? Function(String query)? doctorSearched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clinicsFetched,
    TResult Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(DoctorModel doctor)? doctorSelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? scheduleSelected,
    TResult Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult Function(String query)? doctorSearched,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClinicsFetched value) clinicsFetched,
    required TResult Function(ClinicDoctorsFetched value) clinicDoctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSelected value) doctorSelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(ScheduleSelected value) scheduleSelected,
    required TResult Function(BookedNewAppointment value) bookedNewAppointment,
    required TResult Function(DoctorSearched value) doctorSearched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClinicsFetched value)? clinicsFetched,
    TResult? Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSelected value)? doctorSelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(ScheduleSelected value)? scheduleSelected,
    TResult? Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult? Function(DoctorSearched value)? doctorSearched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClinicsFetched value)? clinicsFetched,
    TResult Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSelected value)? doctorSelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(ScheduleSelected value)? scheduleSelected,
    TResult Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult Function(DoctorSearched value)? doctorSearched,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewAppointmentEventCopyWith<$Res> {
  factory $NewAppointmentEventCopyWith(
    NewAppointmentEvent value,
    $Res Function(NewAppointmentEvent) then,
  ) = _$NewAppointmentEventCopyWithImpl<$Res, NewAppointmentEvent>;
}

/// @nodoc
class _$NewAppointmentEventCopyWithImpl<$Res, $Val extends NewAppointmentEvent>
    implements $NewAppointmentEventCopyWith<$Res> {
  _$NewAppointmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClinicsFetchedImplCopyWith<$Res> {
  factory _$$ClinicsFetchedImplCopyWith(
    _$ClinicsFetchedImpl value,
    $Res Function(_$ClinicsFetchedImpl) then,
  ) = __$$ClinicsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClinicsFetchedImplCopyWithImpl<$Res>
    extends _$NewAppointmentEventCopyWithImpl<$Res, _$ClinicsFetchedImpl>
    implements _$$ClinicsFetchedImplCopyWith<$Res> {
  __$$ClinicsFetchedImplCopyWithImpl(
    _$ClinicsFetchedImpl _value,
    $Res Function(_$ClinicsFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClinicsFetchedImpl implements ClinicsFetched {
  const _$ClinicsFetchedImpl();

  @override
  String toString() {
    return 'NewAppointmentEvent.clinicsFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClinicsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clinicsFetched,
    required TResult Function(ClinicModel clinic) clinicDoctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(DoctorModel doctor) doctorSelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) scheduleSelected,
    required TResult Function(VaccinationRecord? vaccination)
    bookedNewAppointment,
    required TResult Function(String query) doctorSearched,
  }) {
    return clinicsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clinicsFetched,
    TResult? Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(DoctorModel doctor)? doctorSelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function(TimeOfDay time)? scheduleSelected,
    TResult? Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult? Function(String query)? doctorSearched,
  }) {
    return clinicsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clinicsFetched,
    TResult Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(DoctorModel doctor)? doctorSelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? scheduleSelected,
    TResult Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult Function(String query)? doctorSearched,
    required TResult orElse(),
  }) {
    if (clinicsFetched != null) {
      return clinicsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClinicsFetched value) clinicsFetched,
    required TResult Function(ClinicDoctorsFetched value) clinicDoctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSelected value) doctorSelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(ScheduleSelected value) scheduleSelected,
    required TResult Function(BookedNewAppointment value) bookedNewAppointment,
    required TResult Function(DoctorSearched value) doctorSearched,
  }) {
    return clinicsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClinicsFetched value)? clinicsFetched,
    TResult? Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSelected value)? doctorSelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(ScheduleSelected value)? scheduleSelected,
    TResult? Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult? Function(DoctorSearched value)? doctorSearched,
  }) {
    return clinicsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClinicsFetched value)? clinicsFetched,
    TResult Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSelected value)? doctorSelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(ScheduleSelected value)? scheduleSelected,
    TResult Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult Function(DoctorSearched value)? doctorSearched,
    required TResult orElse(),
  }) {
    if (clinicsFetched != null) {
      return clinicsFetched(this);
    }
    return orElse();
  }
}

abstract class ClinicsFetched implements NewAppointmentEvent {
  const factory ClinicsFetched() = _$ClinicsFetchedImpl;
}

/// @nodoc
abstract class _$$ClinicDoctorsFetchedImplCopyWith<$Res> {
  factory _$$ClinicDoctorsFetchedImplCopyWith(
    _$ClinicDoctorsFetchedImpl value,
    $Res Function(_$ClinicDoctorsFetchedImpl) then,
  ) = __$$ClinicDoctorsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClinicModel clinic});

  $ClinicModelCopyWith<$Res> get clinic;
}

/// @nodoc
class __$$ClinicDoctorsFetchedImplCopyWithImpl<$Res>
    extends _$NewAppointmentEventCopyWithImpl<$Res, _$ClinicDoctorsFetchedImpl>
    implements _$$ClinicDoctorsFetchedImplCopyWith<$Res> {
  __$$ClinicDoctorsFetchedImplCopyWithImpl(
    _$ClinicDoctorsFetchedImpl _value,
    $Res Function(_$ClinicDoctorsFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? clinic = null}) {
    return _then(
      _$ClinicDoctorsFetchedImpl(
        clinic:
            null == clinic
                ? _value.clinic
                : clinic // ignore: cast_nullable_to_non_nullable
                    as ClinicModel,
      ),
    );
  }

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClinicModelCopyWith<$Res> get clinic {
    return $ClinicModelCopyWith<$Res>(_value.clinic, (value) {
      return _then(_value.copyWith(clinic: value));
    });
  }
}

/// @nodoc

class _$ClinicDoctorsFetchedImpl implements ClinicDoctorsFetched {
  const _$ClinicDoctorsFetchedImpl({required this.clinic});

  @override
  final ClinicModel clinic;

  @override
  String toString() {
    return 'NewAppointmentEvent.clinicDoctorsFetched(clinic: $clinic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicDoctorsFetchedImpl &&
            (identical(other.clinic, clinic) || other.clinic == clinic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clinic);

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicDoctorsFetchedImplCopyWith<_$ClinicDoctorsFetchedImpl>
  get copyWith =>
      __$$ClinicDoctorsFetchedImplCopyWithImpl<_$ClinicDoctorsFetchedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clinicsFetched,
    required TResult Function(ClinicModel clinic) clinicDoctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(DoctorModel doctor) doctorSelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) scheduleSelected,
    required TResult Function(VaccinationRecord? vaccination)
    bookedNewAppointment,
    required TResult Function(String query) doctorSearched,
  }) {
    return clinicDoctorsFetched(clinic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clinicsFetched,
    TResult? Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(DoctorModel doctor)? doctorSelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function(TimeOfDay time)? scheduleSelected,
    TResult? Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult? Function(String query)? doctorSearched,
  }) {
    return clinicDoctorsFetched?.call(clinic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clinicsFetched,
    TResult Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(DoctorModel doctor)? doctorSelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? scheduleSelected,
    TResult Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult Function(String query)? doctorSearched,
    required TResult orElse(),
  }) {
    if (clinicDoctorsFetched != null) {
      return clinicDoctorsFetched(clinic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClinicsFetched value) clinicsFetched,
    required TResult Function(ClinicDoctorsFetched value) clinicDoctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSelected value) doctorSelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(ScheduleSelected value) scheduleSelected,
    required TResult Function(BookedNewAppointment value) bookedNewAppointment,
    required TResult Function(DoctorSearched value) doctorSearched,
  }) {
    return clinicDoctorsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClinicsFetched value)? clinicsFetched,
    TResult? Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSelected value)? doctorSelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(ScheduleSelected value)? scheduleSelected,
    TResult? Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult? Function(DoctorSearched value)? doctorSearched,
  }) {
    return clinicDoctorsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClinicsFetched value)? clinicsFetched,
    TResult Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSelected value)? doctorSelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(ScheduleSelected value)? scheduleSelected,
    TResult Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult Function(DoctorSearched value)? doctorSearched,
    required TResult orElse(),
  }) {
    if (clinicDoctorsFetched != null) {
      return clinicDoctorsFetched(this);
    }
    return orElse();
  }
}

abstract class ClinicDoctorsFetched implements NewAppointmentEvent {
  const factory ClinicDoctorsFetched({required final ClinicModel clinic}) =
      _$ClinicDoctorsFetchedImpl;

  ClinicModel get clinic;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClinicDoctorsFetchedImplCopyWith<_$ClinicDoctorsFetchedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllDoctorsFetchedImplCopyWith<$Res> {
  factory _$$AllDoctorsFetchedImplCopyWith(
    _$AllDoctorsFetchedImpl value,
    $Res Function(_$AllDoctorsFetchedImpl) then,
  ) = __$$AllDoctorsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllDoctorsFetchedImplCopyWithImpl<$Res>
    extends _$NewAppointmentEventCopyWithImpl<$Res, _$AllDoctorsFetchedImpl>
    implements _$$AllDoctorsFetchedImplCopyWith<$Res> {
  __$$AllDoctorsFetchedImplCopyWithImpl(
    _$AllDoctorsFetchedImpl _value,
    $Res Function(_$AllDoctorsFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AllDoctorsFetchedImpl implements AllDoctorsFetched {
  const _$AllDoctorsFetchedImpl();

  @override
  String toString() {
    return 'NewAppointmentEvent.allDoctorsFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AllDoctorsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clinicsFetched,
    required TResult Function(ClinicModel clinic) clinicDoctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(DoctorModel doctor) doctorSelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) scheduleSelected,
    required TResult Function(VaccinationRecord? vaccination)
    bookedNewAppointment,
    required TResult Function(String query) doctorSearched,
  }) {
    return allDoctorsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clinicsFetched,
    TResult? Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(DoctorModel doctor)? doctorSelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function(TimeOfDay time)? scheduleSelected,
    TResult? Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult? Function(String query)? doctorSearched,
  }) {
    return allDoctorsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clinicsFetched,
    TResult Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(DoctorModel doctor)? doctorSelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? scheduleSelected,
    TResult Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult Function(String query)? doctorSearched,
    required TResult orElse(),
  }) {
    if (allDoctorsFetched != null) {
      return allDoctorsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClinicsFetched value) clinicsFetched,
    required TResult Function(ClinicDoctorsFetched value) clinicDoctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSelected value) doctorSelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(ScheduleSelected value) scheduleSelected,
    required TResult Function(BookedNewAppointment value) bookedNewAppointment,
    required TResult Function(DoctorSearched value) doctorSearched,
  }) {
    return allDoctorsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClinicsFetched value)? clinicsFetched,
    TResult? Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSelected value)? doctorSelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(ScheduleSelected value)? scheduleSelected,
    TResult? Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult? Function(DoctorSearched value)? doctorSearched,
  }) {
    return allDoctorsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClinicsFetched value)? clinicsFetched,
    TResult Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSelected value)? doctorSelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(ScheduleSelected value)? scheduleSelected,
    TResult Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult Function(DoctorSearched value)? doctorSearched,
    required TResult orElse(),
  }) {
    if (allDoctorsFetched != null) {
      return allDoctorsFetched(this);
    }
    return orElse();
  }
}

abstract class AllDoctorsFetched implements NewAppointmentEvent {
  const factory AllDoctorsFetched() = _$AllDoctorsFetchedImpl;
}

/// @nodoc
abstract class _$$DoctorSelectedImplCopyWith<$Res> {
  factory _$$DoctorSelectedImplCopyWith(
    _$DoctorSelectedImpl value,
    $Res Function(_$DoctorSelectedImpl) then,
  ) = __$$DoctorSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DoctorModel doctor});

  $DoctorModelCopyWith<$Res> get doctor;
}

/// @nodoc
class __$$DoctorSelectedImplCopyWithImpl<$Res>
    extends _$NewAppointmentEventCopyWithImpl<$Res, _$DoctorSelectedImpl>
    implements _$$DoctorSelectedImplCopyWith<$Res> {
  __$$DoctorSelectedImplCopyWithImpl(
    _$DoctorSelectedImpl _value,
    $Res Function(_$DoctorSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? doctor = null}) {
    return _then(
      _$DoctorSelectedImpl(
        doctor:
            null == doctor
                ? _value.doctor
                : doctor // ignore: cast_nullable_to_non_nullable
                    as DoctorModel,
      ),
    );
  }

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorModelCopyWith<$Res> get doctor {
    return $DoctorModelCopyWith<$Res>(_value.doctor, (value) {
      return _then(_value.copyWith(doctor: value));
    });
  }
}

/// @nodoc

class _$DoctorSelectedImpl implements DoctorSelected {
  const _$DoctorSelectedImpl({required this.doctor});

  @override
  final DoctorModel doctor;

  @override
  String toString() {
    return 'NewAppointmentEvent.doctorSelected(doctor: $doctor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorSelectedImpl &&
            (identical(other.doctor, doctor) || other.doctor == doctor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctor);

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorSelectedImplCopyWith<_$DoctorSelectedImpl> get copyWith =>
      __$$DoctorSelectedImplCopyWithImpl<_$DoctorSelectedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clinicsFetched,
    required TResult Function(ClinicModel clinic) clinicDoctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(DoctorModel doctor) doctorSelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) scheduleSelected,
    required TResult Function(VaccinationRecord? vaccination)
    bookedNewAppointment,
    required TResult Function(String query) doctorSearched,
  }) {
    return doctorSelected(doctor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clinicsFetched,
    TResult? Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(DoctorModel doctor)? doctorSelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function(TimeOfDay time)? scheduleSelected,
    TResult? Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult? Function(String query)? doctorSearched,
  }) {
    return doctorSelected?.call(doctor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clinicsFetched,
    TResult Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(DoctorModel doctor)? doctorSelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? scheduleSelected,
    TResult Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult Function(String query)? doctorSearched,
    required TResult orElse(),
  }) {
    if (doctorSelected != null) {
      return doctorSelected(doctor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClinicsFetched value) clinicsFetched,
    required TResult Function(ClinicDoctorsFetched value) clinicDoctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSelected value) doctorSelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(ScheduleSelected value) scheduleSelected,
    required TResult Function(BookedNewAppointment value) bookedNewAppointment,
    required TResult Function(DoctorSearched value) doctorSearched,
  }) {
    return doctorSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClinicsFetched value)? clinicsFetched,
    TResult? Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSelected value)? doctorSelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(ScheduleSelected value)? scheduleSelected,
    TResult? Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult? Function(DoctorSearched value)? doctorSearched,
  }) {
    return doctorSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClinicsFetched value)? clinicsFetched,
    TResult Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSelected value)? doctorSelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(ScheduleSelected value)? scheduleSelected,
    TResult Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult Function(DoctorSearched value)? doctorSearched,
    required TResult orElse(),
  }) {
    if (doctorSelected != null) {
      return doctorSelected(this);
    }
    return orElse();
  }
}

abstract class DoctorSelected implements NewAppointmentEvent {
  const factory DoctorSelected({required final DoctorModel doctor}) =
      _$DoctorSelectedImpl;

  DoctorModel get doctor;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorSelectedImplCopyWith<_$DoctorSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateSelectedImplCopyWith<$Res> {
  factory _$$DateSelectedImplCopyWith(
    _$DateSelectedImpl value,
    $Res Function(_$DateSelectedImpl) then,
  ) = __$$DateSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$DateSelectedImplCopyWithImpl<$Res>
    extends _$NewAppointmentEventCopyWithImpl<$Res, _$DateSelectedImpl>
    implements _$$DateSelectedImplCopyWith<$Res> {
  __$$DateSelectedImplCopyWithImpl(
    _$DateSelectedImpl _value,
    $Res Function(_$DateSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null}) {
    return _then(
      _$DateSelectedImpl(
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$DateSelectedImpl implements DateSelected {
  const _$DateSelectedImpl({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'NewAppointmentEvent.dateSelected(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateSelectedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateSelectedImplCopyWith<_$DateSelectedImpl> get copyWith =>
      __$$DateSelectedImplCopyWithImpl<_$DateSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clinicsFetched,
    required TResult Function(ClinicModel clinic) clinicDoctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(DoctorModel doctor) doctorSelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) scheduleSelected,
    required TResult Function(VaccinationRecord? vaccination)
    bookedNewAppointment,
    required TResult Function(String query) doctorSearched,
  }) {
    return dateSelected(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clinicsFetched,
    TResult? Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(DoctorModel doctor)? doctorSelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function(TimeOfDay time)? scheduleSelected,
    TResult? Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult? Function(String query)? doctorSearched,
  }) {
    return dateSelected?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clinicsFetched,
    TResult Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(DoctorModel doctor)? doctorSelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? scheduleSelected,
    TResult Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult Function(String query)? doctorSearched,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClinicsFetched value) clinicsFetched,
    required TResult Function(ClinicDoctorsFetched value) clinicDoctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSelected value) doctorSelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(ScheduleSelected value) scheduleSelected,
    required TResult Function(BookedNewAppointment value) bookedNewAppointment,
    required TResult Function(DoctorSearched value) doctorSearched,
  }) {
    return dateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClinicsFetched value)? clinicsFetched,
    TResult? Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSelected value)? doctorSelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(ScheduleSelected value)? scheduleSelected,
    TResult? Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult? Function(DoctorSearched value)? doctorSearched,
  }) {
    return dateSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClinicsFetched value)? clinicsFetched,
    TResult Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSelected value)? doctorSelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(ScheduleSelected value)? scheduleSelected,
    TResult Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult Function(DoctorSearched value)? doctorSearched,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(this);
    }
    return orElse();
  }
}

abstract class DateSelected implements NewAppointmentEvent {
  const factory DateSelected({required final DateTime date}) =
      _$DateSelectedImpl;

  DateTime get date;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateSelectedImplCopyWith<_$DateSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleSelectedImplCopyWith<$Res> {
  factory _$$ScheduleSelectedImplCopyWith(
    _$ScheduleSelectedImpl value,
    $Res Function(_$ScheduleSelectedImpl) then,
  ) = __$$ScheduleSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TimeOfDay time});
}

/// @nodoc
class __$$ScheduleSelectedImplCopyWithImpl<$Res>
    extends _$NewAppointmentEventCopyWithImpl<$Res, _$ScheduleSelectedImpl>
    implements _$$ScheduleSelectedImplCopyWith<$Res> {
  __$$ScheduleSelectedImplCopyWithImpl(
    _$ScheduleSelectedImpl _value,
    $Res Function(_$ScheduleSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? time = null}) {
    return _then(
      _$ScheduleSelectedImpl(
        time:
            null == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                    as TimeOfDay,
      ),
    );
  }
}

/// @nodoc

class _$ScheduleSelectedImpl implements ScheduleSelected {
  const _$ScheduleSelectedImpl({required this.time});

  @override
  final TimeOfDay time;

  @override
  String toString() {
    return 'NewAppointmentEvent.scheduleSelected(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleSelectedImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleSelectedImplCopyWith<_$ScheduleSelectedImpl> get copyWith =>
      __$$ScheduleSelectedImplCopyWithImpl<_$ScheduleSelectedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clinicsFetched,
    required TResult Function(ClinicModel clinic) clinicDoctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(DoctorModel doctor) doctorSelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) scheduleSelected,
    required TResult Function(VaccinationRecord? vaccination)
    bookedNewAppointment,
    required TResult Function(String query) doctorSearched,
  }) {
    return scheduleSelected(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clinicsFetched,
    TResult? Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(DoctorModel doctor)? doctorSelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function(TimeOfDay time)? scheduleSelected,
    TResult? Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult? Function(String query)? doctorSearched,
  }) {
    return scheduleSelected?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clinicsFetched,
    TResult Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(DoctorModel doctor)? doctorSelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? scheduleSelected,
    TResult Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult Function(String query)? doctorSearched,
    required TResult orElse(),
  }) {
    if (scheduleSelected != null) {
      return scheduleSelected(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClinicsFetched value) clinicsFetched,
    required TResult Function(ClinicDoctorsFetched value) clinicDoctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSelected value) doctorSelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(ScheduleSelected value) scheduleSelected,
    required TResult Function(BookedNewAppointment value) bookedNewAppointment,
    required TResult Function(DoctorSearched value) doctorSearched,
  }) {
    return scheduleSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClinicsFetched value)? clinicsFetched,
    TResult? Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSelected value)? doctorSelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(ScheduleSelected value)? scheduleSelected,
    TResult? Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult? Function(DoctorSearched value)? doctorSearched,
  }) {
    return scheduleSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClinicsFetched value)? clinicsFetched,
    TResult Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSelected value)? doctorSelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(ScheduleSelected value)? scheduleSelected,
    TResult Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult Function(DoctorSearched value)? doctorSearched,
    required TResult orElse(),
  }) {
    if (scheduleSelected != null) {
      return scheduleSelected(this);
    }
    return orElse();
  }
}

abstract class ScheduleSelected implements NewAppointmentEvent {
  const factory ScheduleSelected({required final TimeOfDay time}) =
      _$ScheduleSelectedImpl;

  TimeOfDay get time;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleSelectedImplCopyWith<_$ScheduleSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookedNewAppointmentImplCopyWith<$Res> {
  factory _$$BookedNewAppointmentImplCopyWith(
    _$BookedNewAppointmentImpl value,
    $Res Function(_$BookedNewAppointmentImpl) then,
  ) = __$$BookedNewAppointmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VaccinationRecord? vaccination});

  $VaccinationRecordCopyWith<$Res>? get vaccination;
}

/// @nodoc
class __$$BookedNewAppointmentImplCopyWithImpl<$Res>
    extends _$NewAppointmentEventCopyWithImpl<$Res, _$BookedNewAppointmentImpl>
    implements _$$BookedNewAppointmentImplCopyWith<$Res> {
  __$$BookedNewAppointmentImplCopyWithImpl(
    _$BookedNewAppointmentImpl _value,
    $Res Function(_$BookedNewAppointmentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? vaccination = freezed}) {
    return _then(
      _$BookedNewAppointmentImpl(
        vaccination:
            freezed == vaccination
                ? _value.vaccination
                : vaccination // ignore: cast_nullable_to_non_nullable
                    as VaccinationRecord?,
      ),
    );
  }

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VaccinationRecordCopyWith<$Res>? get vaccination {
    if (_value.vaccination == null) {
      return null;
    }

    return $VaccinationRecordCopyWith<$Res>(_value.vaccination!, (value) {
      return _then(_value.copyWith(vaccination: value));
    });
  }
}

/// @nodoc

class _$BookedNewAppointmentImpl implements BookedNewAppointment {
  const _$BookedNewAppointmentImpl({this.vaccination});

  @override
  final VaccinationRecord? vaccination;

  @override
  String toString() {
    return 'NewAppointmentEvent.bookedNewAppointment(vaccination: $vaccination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookedNewAppointmentImpl &&
            (identical(other.vaccination, vaccination) ||
                other.vaccination == vaccination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vaccination);

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookedNewAppointmentImplCopyWith<_$BookedNewAppointmentImpl>
  get copyWith =>
      __$$BookedNewAppointmentImplCopyWithImpl<_$BookedNewAppointmentImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clinicsFetched,
    required TResult Function(ClinicModel clinic) clinicDoctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(DoctorModel doctor) doctorSelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) scheduleSelected,
    required TResult Function(VaccinationRecord? vaccination)
    bookedNewAppointment,
    required TResult Function(String query) doctorSearched,
  }) {
    return bookedNewAppointment(vaccination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clinicsFetched,
    TResult? Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(DoctorModel doctor)? doctorSelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function(TimeOfDay time)? scheduleSelected,
    TResult? Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult? Function(String query)? doctorSearched,
  }) {
    return bookedNewAppointment?.call(vaccination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clinicsFetched,
    TResult Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(DoctorModel doctor)? doctorSelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? scheduleSelected,
    TResult Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult Function(String query)? doctorSearched,
    required TResult orElse(),
  }) {
    if (bookedNewAppointment != null) {
      return bookedNewAppointment(vaccination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClinicsFetched value) clinicsFetched,
    required TResult Function(ClinicDoctorsFetched value) clinicDoctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSelected value) doctorSelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(ScheduleSelected value) scheduleSelected,
    required TResult Function(BookedNewAppointment value) bookedNewAppointment,
    required TResult Function(DoctorSearched value) doctorSearched,
  }) {
    return bookedNewAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClinicsFetched value)? clinicsFetched,
    TResult? Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSelected value)? doctorSelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(ScheduleSelected value)? scheduleSelected,
    TResult? Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult? Function(DoctorSearched value)? doctorSearched,
  }) {
    return bookedNewAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClinicsFetched value)? clinicsFetched,
    TResult Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSelected value)? doctorSelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(ScheduleSelected value)? scheduleSelected,
    TResult Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult Function(DoctorSearched value)? doctorSearched,
    required TResult orElse(),
  }) {
    if (bookedNewAppointment != null) {
      return bookedNewAppointment(this);
    }
    return orElse();
  }
}

abstract class BookedNewAppointment implements NewAppointmentEvent {
  const factory BookedNewAppointment({final VaccinationRecord? vaccination}) =
      _$BookedNewAppointmentImpl;

  VaccinationRecord? get vaccination;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookedNewAppointmentImplCopyWith<_$BookedNewAppointmentImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoctorSearchedImplCopyWith<$Res> {
  factory _$$DoctorSearchedImplCopyWith(
    _$DoctorSearchedImpl value,
    $Res Function(_$DoctorSearchedImpl) then,
  ) = __$$DoctorSearchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$DoctorSearchedImplCopyWithImpl<$Res>
    extends _$NewAppointmentEventCopyWithImpl<$Res, _$DoctorSearchedImpl>
    implements _$$DoctorSearchedImplCopyWith<$Res> {
  __$$DoctorSearchedImplCopyWithImpl(
    _$DoctorSearchedImpl _value,
    $Res Function(_$DoctorSearchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$DoctorSearchedImpl(
        query:
            null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$DoctorSearchedImpl implements DoctorSearched {
  const _$DoctorSearchedImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'NewAppointmentEvent.doctorSearched(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorSearchedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorSearchedImplCopyWith<_$DoctorSearchedImpl> get copyWith =>
      __$$DoctorSearchedImplCopyWithImpl<_$DoctorSearchedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clinicsFetched,
    required TResult Function(ClinicModel clinic) clinicDoctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(DoctorModel doctor) doctorSelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) scheduleSelected,
    required TResult Function(VaccinationRecord? vaccination)
    bookedNewAppointment,
    required TResult Function(String query) doctorSearched,
  }) {
    return doctorSearched(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clinicsFetched,
    TResult? Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(DoctorModel doctor)? doctorSelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function(TimeOfDay time)? scheduleSelected,
    TResult? Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult? Function(String query)? doctorSearched,
  }) {
    return doctorSearched?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clinicsFetched,
    TResult Function(ClinicModel clinic)? clinicDoctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(DoctorModel doctor)? doctorSelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? scheduleSelected,
    TResult Function(VaccinationRecord? vaccination)? bookedNewAppointment,
    TResult Function(String query)? doctorSearched,
    required TResult orElse(),
  }) {
    if (doctorSearched != null) {
      return doctorSearched(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClinicsFetched value) clinicsFetched,
    required TResult Function(ClinicDoctorsFetched value) clinicDoctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSelected value) doctorSelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(ScheduleSelected value) scheduleSelected,
    required TResult Function(BookedNewAppointment value) bookedNewAppointment,
    required TResult Function(DoctorSearched value) doctorSearched,
  }) {
    return doctorSearched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClinicsFetched value)? clinicsFetched,
    TResult? Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSelected value)? doctorSelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(ScheduleSelected value)? scheduleSelected,
    TResult? Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult? Function(DoctorSearched value)? doctorSearched,
  }) {
    return doctorSearched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClinicsFetched value)? clinicsFetched,
    TResult Function(ClinicDoctorsFetched value)? clinicDoctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSelected value)? doctorSelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(ScheduleSelected value)? scheduleSelected,
    TResult Function(BookedNewAppointment value)? bookedNewAppointment,
    TResult Function(DoctorSearched value)? doctorSearched,
    required TResult orElse(),
  }) {
    if (doctorSearched != null) {
      return doctorSearched(this);
    }
    return orElse();
  }
}

abstract class DoctorSearched implements NewAppointmentEvent {
  const factory DoctorSearched({required final String query}) =
      _$DoctorSearchedImpl;

  String get query;

  /// Create a copy of NewAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorSearchedImplCopyWith<_$DoctorSearchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewAppointmentState {
  ClinicModel? get department => throw _privateConstructorUsedError;
  bool? get isAuto => throw _privateConstructorUsedError;
  bool get isVaccine => throw _privateConstructorUsedError;
  DoctorModel? get doctor => throw _privateConstructorUsedError;
  List<DoctorModel>? get searchList => throw _privateConstructorUsedError;
  String? get statusMessage => throw _privateConstructorUsedError;
  List<DoctorModel>? get doctors => throw _privateConstructorUsedError;
  List<ClinicModel>? get clinics => throw _privateConstructorUsedError;
  List<DateTime>? get dates => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  List<TimeOfDay>? get availableTimes => throw _privateConstructorUsedError;
  TimeOfDay? get time => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  int? get appointmentID => throw _privateConstructorUsedError;

  /// Create a copy of NewAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewAppointmentStateCopyWith<NewAppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewAppointmentStateCopyWith<$Res> {
  factory $NewAppointmentStateCopyWith(
    NewAppointmentState value,
    $Res Function(NewAppointmentState) then,
  ) = _$NewAppointmentStateCopyWithImpl<$Res, NewAppointmentState>;
  @useResult
  $Res call({
    ClinicModel? department,
    bool? isAuto,
    bool isVaccine,
    DoctorModel? doctor,
    List<DoctorModel>? searchList,
    String? statusMessage,
    List<DoctorModel>? doctors,
    List<ClinicModel>? clinics,
    List<DateTime>? dates,
    DateTime? date,
    List<TimeOfDay>? availableTimes,
    TimeOfDay? time,
    DataStatus status,
    int? appointmentID,
  });

  $ClinicModelCopyWith<$Res>? get department;
  $DoctorModelCopyWith<$Res>? get doctor;
}

/// @nodoc
class _$NewAppointmentStateCopyWithImpl<$Res, $Val extends NewAppointmentState>
    implements $NewAppointmentStateCopyWith<$Res> {
  _$NewAppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = freezed,
    Object? isAuto = freezed,
    Object? isVaccine = null,
    Object? doctor = freezed,
    Object? searchList = freezed,
    Object? statusMessage = freezed,
    Object? doctors = freezed,
    Object? clinics = freezed,
    Object? dates = freezed,
    Object? date = freezed,
    Object? availableTimes = freezed,
    Object? time = freezed,
    Object? status = null,
    Object? appointmentID = freezed,
  }) {
    return _then(
      _value.copyWith(
            department:
                freezed == department
                    ? _value.department
                    : department // ignore: cast_nullable_to_non_nullable
                        as ClinicModel?,
            isAuto:
                freezed == isAuto
                    ? _value.isAuto
                    : isAuto // ignore: cast_nullable_to_non_nullable
                        as bool?,
            isVaccine:
                null == isVaccine
                    ? _value.isVaccine
                    : isVaccine // ignore: cast_nullable_to_non_nullable
                        as bool,
            doctor:
                freezed == doctor
                    ? _value.doctor
                    : doctor // ignore: cast_nullable_to_non_nullable
                        as DoctorModel?,
            searchList:
                freezed == searchList
                    ? _value.searchList
                    : searchList // ignore: cast_nullable_to_non_nullable
                        as List<DoctorModel>?,
            statusMessage:
                freezed == statusMessage
                    ? _value.statusMessage
                    : statusMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
            doctors:
                freezed == doctors
                    ? _value.doctors
                    : doctors // ignore: cast_nullable_to_non_nullable
                        as List<DoctorModel>?,
            clinics:
                freezed == clinics
                    ? _value.clinics
                    : clinics // ignore: cast_nullable_to_non_nullable
                        as List<ClinicModel>?,
            dates:
                freezed == dates
                    ? _value.dates
                    : dates // ignore: cast_nullable_to_non_nullable
                        as List<DateTime>?,
            date:
                freezed == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            availableTimes:
                freezed == availableTimes
                    ? _value.availableTimes
                    : availableTimes // ignore: cast_nullable_to_non_nullable
                        as List<TimeOfDay>?,
            time:
                freezed == time
                    ? _value.time
                    : time // ignore: cast_nullable_to_non_nullable
                        as TimeOfDay?,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            appointmentID:
                freezed == appointmentID
                    ? _value.appointmentID
                    : appointmentID // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }

  /// Create a copy of NewAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClinicModelCopyWith<$Res>? get department {
    if (_value.department == null) {
      return null;
    }

    return $ClinicModelCopyWith<$Res>(_value.department!, (value) {
      return _then(_value.copyWith(department: value) as $Val);
    });
  }

  /// Create a copy of NewAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorModelCopyWith<$Res>? get doctor {
    if (_value.doctor == null) {
      return null;
    }

    return $DoctorModelCopyWith<$Res>(_value.doctor!, (value) {
      return _then(_value.copyWith(doctor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewAppointmentStateImplCopyWith<$Res>
    implements $NewAppointmentStateCopyWith<$Res> {
  factory _$$NewAppointmentStateImplCopyWith(
    _$NewAppointmentStateImpl value,
    $Res Function(_$NewAppointmentStateImpl) then,
  ) = __$$NewAppointmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ClinicModel? department,
    bool? isAuto,
    bool isVaccine,
    DoctorModel? doctor,
    List<DoctorModel>? searchList,
    String? statusMessage,
    List<DoctorModel>? doctors,
    List<ClinicModel>? clinics,
    List<DateTime>? dates,
    DateTime? date,
    List<TimeOfDay>? availableTimes,
    TimeOfDay? time,
    DataStatus status,
    int? appointmentID,
  });

  @override
  $ClinicModelCopyWith<$Res>? get department;
  @override
  $DoctorModelCopyWith<$Res>? get doctor;
}

/// @nodoc
class __$$NewAppointmentStateImplCopyWithImpl<$Res>
    extends _$NewAppointmentStateCopyWithImpl<$Res, _$NewAppointmentStateImpl>
    implements _$$NewAppointmentStateImplCopyWith<$Res> {
  __$$NewAppointmentStateImplCopyWithImpl(
    _$NewAppointmentStateImpl _value,
    $Res Function(_$NewAppointmentStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = freezed,
    Object? isAuto = freezed,
    Object? isVaccine = null,
    Object? doctor = freezed,
    Object? searchList = freezed,
    Object? statusMessage = freezed,
    Object? doctors = freezed,
    Object? clinics = freezed,
    Object? dates = freezed,
    Object? date = freezed,
    Object? availableTimes = freezed,
    Object? time = freezed,
    Object? status = null,
    Object? appointmentID = freezed,
  }) {
    return _then(
      _$NewAppointmentStateImpl(
        department:
            freezed == department
                ? _value.department
                : department // ignore: cast_nullable_to_non_nullable
                    as ClinicModel?,
        isAuto:
            freezed == isAuto
                ? _value.isAuto
                : isAuto // ignore: cast_nullable_to_non_nullable
                    as bool?,
        isVaccine:
            null == isVaccine
                ? _value.isVaccine
                : isVaccine // ignore: cast_nullable_to_non_nullable
                    as bool,
        doctor:
            freezed == doctor
                ? _value.doctor
                : doctor // ignore: cast_nullable_to_non_nullable
                    as DoctorModel?,
        searchList:
            freezed == searchList
                ? _value._searchList
                : searchList // ignore: cast_nullable_to_non_nullable
                    as List<DoctorModel>?,
        statusMessage:
            freezed == statusMessage
                ? _value.statusMessage
                : statusMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
        doctors:
            freezed == doctors
                ? _value._doctors
                : doctors // ignore: cast_nullable_to_non_nullable
                    as List<DoctorModel>?,
        clinics:
            freezed == clinics
                ? _value._clinics
                : clinics // ignore: cast_nullable_to_non_nullable
                    as List<ClinicModel>?,
        dates:
            freezed == dates
                ? _value._dates
                : dates // ignore: cast_nullable_to_non_nullable
                    as List<DateTime>?,
        date:
            freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        availableTimes:
            freezed == availableTimes
                ? _value._availableTimes
                : availableTimes // ignore: cast_nullable_to_non_nullable
                    as List<TimeOfDay>?,
        time:
            freezed == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                    as TimeOfDay?,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        appointmentID:
            freezed == appointmentID
                ? _value.appointmentID
                : appointmentID // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc

class _$NewAppointmentStateImpl implements _NewAppointmentState {
  const _$NewAppointmentStateImpl({
    this.department,
    this.isAuto,
    this.isVaccine = false,
    this.doctor,
    final List<DoctorModel>? searchList,
    this.statusMessage,
    final List<DoctorModel>? doctors,
    final List<ClinicModel>? clinics,
    final List<DateTime>? dates,
    this.date,
    final List<TimeOfDay>? availableTimes,
    this.time,
    required this.status,
    this.appointmentID,
  }) : _searchList = searchList,
       _doctors = doctors,
       _clinics = clinics,
       _dates = dates,
       _availableTimes = availableTimes;

  @override
  final ClinicModel? department;
  @override
  final bool? isAuto;
  @override
  @JsonKey()
  final bool isVaccine;
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
  final DataStatus status;
  @override
  final int? appointmentID;

  @override
  String toString() {
    return 'NewAppointmentState(department: $department, isAuto: $isAuto, isVaccine: $isVaccine, doctor: $doctor, searchList: $searchList, statusMessage: $statusMessage, doctors: $doctors, clinics: $clinics, dates: $dates, date: $date, availableTimes: $availableTimes, time: $time, status: $status, appointmentID: $appointmentID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewAppointmentStateImpl &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.isAuto, isAuto) || other.isAuto == isAuto) &&
            (identical(other.isVaccine, isVaccine) ||
                other.isVaccine == isVaccine) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            const DeepCollectionEquality().equals(
              other._searchList,
              _searchList,
            ) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage) &&
            const DeepCollectionEquality().equals(other._doctors, _doctors) &&
            const DeepCollectionEquality().equals(other._clinics, _clinics) &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(
              other._availableTimes,
              _availableTimes,
            ) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.appointmentID, appointmentID) ||
                other.appointmentID == appointmentID));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    department,
    isAuto,
    isVaccine,
    doctor,
    const DeepCollectionEquality().hash(_searchList),
    statusMessage,
    const DeepCollectionEquality().hash(_doctors),
    const DeepCollectionEquality().hash(_clinics),
    const DeepCollectionEquality().hash(_dates),
    date,
    const DeepCollectionEquality().hash(_availableTimes),
    time,
    status,
    appointmentID,
  );

  /// Create a copy of NewAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewAppointmentStateImplCopyWith<_$NewAppointmentStateImpl> get copyWith =>
      __$$NewAppointmentStateImplCopyWithImpl<_$NewAppointmentStateImpl>(
        this,
        _$identity,
      );
}

abstract class _NewAppointmentState implements NewAppointmentState {
  const factory _NewAppointmentState({
    final ClinicModel? department,
    final bool? isAuto,
    final bool isVaccine,
    final DoctorModel? doctor,
    final List<DoctorModel>? searchList,
    final String? statusMessage,
    final List<DoctorModel>? doctors,
    final List<ClinicModel>? clinics,
    final List<DateTime>? dates,
    final DateTime? date,
    final List<TimeOfDay>? availableTimes,
    final TimeOfDay? time,
    required final DataStatus status,
    final int? appointmentID,
  }) = _$NewAppointmentStateImpl;

  @override
  ClinicModel? get department;
  @override
  bool? get isAuto;
  @override
  bool get isVaccine;
  @override
  DoctorModel? get doctor;
  @override
  List<DoctorModel>? get searchList;
  @override
  String? get statusMessage;
  @override
  List<DoctorModel>? get doctors;
  @override
  List<ClinicModel>? get clinics;
  @override
  List<DateTime>? get dates;
  @override
  DateTime? get date;
  @override
  List<TimeOfDay>? get availableTimes;
  @override
  TimeOfDay? get time;
  @override
  DataStatus get status;
  @override
  int? get appointmentID;

  /// Create a copy of NewAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewAppointmentStateImplCopyWith<_$NewAppointmentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
