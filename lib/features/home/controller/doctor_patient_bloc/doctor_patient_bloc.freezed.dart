// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_patient_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DoctorPatientEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() patientProfileFetched,
    required TResult Function() patientAppointmentsFetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? patientProfileFetched,
    TResult? Function()? patientAppointmentsFetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? patientProfileFetched,
    TResult Function()? patientAppointmentsFetched,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PatientProfileFetched value)
    patientProfileFetched,
    required TResult Function(PatientAppointmentsFetched value)
    patientAppointmentsFetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PatientProfileFetched value)? patientProfileFetched,
    TResult? Function(PatientAppointmentsFetched value)?
    patientAppointmentsFetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientProfileFetched value)? patientProfileFetched,
    TResult Function(PatientAppointmentsFetched value)?
    patientAppointmentsFetched,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorPatientEventCopyWith<$Res> {
  factory $DoctorPatientEventCopyWith(
    DoctorPatientEvent value,
    $Res Function(DoctorPatientEvent) then,
  ) = _$DoctorPatientEventCopyWithImpl<$Res, DoctorPatientEvent>;
}

/// @nodoc
class _$DoctorPatientEventCopyWithImpl<$Res, $Val extends DoctorPatientEvent>
    implements $DoctorPatientEventCopyWith<$Res> {
  _$DoctorPatientEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorPatientEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PatientProfileFetchedImplCopyWith<$Res> {
  factory _$$PatientProfileFetchedImplCopyWith(
    _$PatientProfileFetchedImpl value,
    $Res Function(_$PatientProfileFetchedImpl) then,
  ) = __$$PatientProfileFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PatientProfileFetchedImplCopyWithImpl<$Res>
    extends _$DoctorPatientEventCopyWithImpl<$Res, _$PatientProfileFetchedImpl>
    implements _$$PatientProfileFetchedImplCopyWith<$Res> {
  __$$PatientProfileFetchedImplCopyWithImpl(
    _$PatientProfileFetchedImpl _value,
    $Res Function(_$PatientProfileFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorPatientEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PatientProfileFetchedImpl implements PatientProfileFetched {
  const _$PatientProfileFetchedImpl();

  @override
  String toString() {
    return 'DoctorPatientEvent.patientProfileFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientProfileFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() patientProfileFetched,
    required TResult Function() patientAppointmentsFetched,
  }) {
    return patientProfileFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? patientProfileFetched,
    TResult? Function()? patientAppointmentsFetched,
  }) {
    return patientProfileFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? patientProfileFetched,
    TResult Function()? patientAppointmentsFetched,
    required TResult orElse(),
  }) {
    if (patientProfileFetched != null) {
      return patientProfileFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PatientProfileFetched value)
    patientProfileFetched,
    required TResult Function(PatientAppointmentsFetched value)
    patientAppointmentsFetched,
  }) {
    return patientProfileFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PatientProfileFetched value)? patientProfileFetched,
    TResult? Function(PatientAppointmentsFetched value)?
    patientAppointmentsFetched,
  }) {
    return patientProfileFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientProfileFetched value)? patientProfileFetched,
    TResult Function(PatientAppointmentsFetched value)?
    patientAppointmentsFetched,
    required TResult orElse(),
  }) {
    if (patientProfileFetched != null) {
      return patientProfileFetched(this);
    }
    return orElse();
  }
}

abstract class PatientProfileFetched implements DoctorPatientEvent {
  const factory PatientProfileFetched() = _$PatientProfileFetchedImpl;
}

/// @nodoc
abstract class _$$PatientAppointmentsFetchedImplCopyWith<$Res> {
  factory _$$PatientAppointmentsFetchedImplCopyWith(
    _$PatientAppointmentsFetchedImpl value,
    $Res Function(_$PatientAppointmentsFetchedImpl) then,
  ) = __$$PatientAppointmentsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PatientAppointmentsFetchedImplCopyWithImpl<$Res>
    extends
        _$DoctorPatientEventCopyWithImpl<$Res, _$PatientAppointmentsFetchedImpl>
    implements _$$PatientAppointmentsFetchedImplCopyWith<$Res> {
  __$$PatientAppointmentsFetchedImplCopyWithImpl(
    _$PatientAppointmentsFetchedImpl _value,
    $Res Function(_$PatientAppointmentsFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorPatientEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PatientAppointmentsFetchedImpl implements PatientAppointmentsFetched {
  const _$PatientAppointmentsFetchedImpl();

  @override
  String toString() {
    return 'DoctorPatientEvent.patientAppointmentsFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientAppointmentsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() patientProfileFetched,
    required TResult Function() patientAppointmentsFetched,
  }) {
    return patientAppointmentsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? patientProfileFetched,
    TResult? Function()? patientAppointmentsFetched,
  }) {
    return patientAppointmentsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? patientProfileFetched,
    TResult Function()? patientAppointmentsFetched,
    required TResult orElse(),
  }) {
    if (patientAppointmentsFetched != null) {
      return patientAppointmentsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PatientProfileFetched value)
    patientProfileFetched,
    required TResult Function(PatientAppointmentsFetched value)
    patientAppointmentsFetched,
  }) {
    return patientAppointmentsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PatientProfileFetched value)? patientProfileFetched,
    TResult? Function(PatientAppointmentsFetched value)?
    patientAppointmentsFetched,
  }) {
    return patientAppointmentsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientProfileFetched value)? patientProfileFetched,
    TResult Function(PatientAppointmentsFetched value)?
    patientAppointmentsFetched,
    required TResult orElse(),
  }) {
    if (patientAppointmentsFetched != null) {
      return patientAppointmentsFetched(this);
    }
    return orElse();
  }
}

abstract class PatientAppointmentsFetched implements DoctorPatientEvent {
  const factory PatientAppointmentsFetched() = _$PatientAppointmentsFetchedImpl;
}

/// @nodoc
mixin _$DoctorPatientState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<AppointmentModel> get appointments => throw _privateConstructorUsedError;
  DataStatus get appointmentsStatus => throw _privateConstructorUsedError;
  UserModel get patient => throw _privateConstructorUsedError;

  /// Create a copy of DoctorPatientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorPatientStateCopyWith<DoctorPatientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorPatientStateCopyWith<$Res> {
  factory $DoctorPatientStateCopyWith(
    DoctorPatientState value,
    $Res Function(DoctorPatientState) then,
  ) = _$DoctorPatientStateCopyWithImpl<$Res, DoctorPatientState>;
  @useResult
  $Res call({
    DataStatus status,
    String message,
    List<AppointmentModel> appointments,
    DataStatus appointmentsStatus,
    UserModel patient,
  });

  $UserModelCopyWith<$Res> get patient;
}

/// @nodoc
class _$DoctorPatientStateCopyWithImpl<$Res, $Val extends DoctorPatientState>
    implements $DoctorPatientStateCopyWith<$Res> {
  _$DoctorPatientStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorPatientState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? appointments = null,
    Object? appointmentsStatus = null,
    Object? patient = null,
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
            appointments:
                null == appointments
                    ? _value.appointments
                    : appointments // ignore: cast_nullable_to_non_nullable
                        as List<AppointmentModel>,
            appointmentsStatus:
                null == appointmentsStatus
                    ? _value.appointmentsStatus
                    : appointmentsStatus // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            patient:
                null == patient
                    ? _value.patient
                    : patient // ignore: cast_nullable_to_non_nullable
                        as UserModel,
          )
          as $Val,
    );
  }

  /// Create a copy of DoctorPatientState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get patient {
    return $UserModelCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorPatientStateImplCopyWith<$Res>
    implements $DoctorPatientStateCopyWith<$Res> {
  factory _$$DoctorPatientStateImplCopyWith(
    _$DoctorPatientStateImpl value,
    $Res Function(_$DoctorPatientStateImpl) then,
  ) = __$$DoctorPatientStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DataStatus status,
    String message,
    List<AppointmentModel> appointments,
    DataStatus appointmentsStatus,
    UserModel patient,
  });

  @override
  $UserModelCopyWith<$Res> get patient;
}

/// @nodoc
class __$$DoctorPatientStateImplCopyWithImpl<$Res>
    extends _$DoctorPatientStateCopyWithImpl<$Res, _$DoctorPatientStateImpl>
    implements _$$DoctorPatientStateImplCopyWith<$Res> {
  __$$DoctorPatientStateImplCopyWithImpl(
    _$DoctorPatientStateImpl _value,
    $Res Function(_$DoctorPatientStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorPatientState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? appointments = null,
    Object? appointmentsStatus = null,
    Object? patient = null,
  }) {
    return _then(
      _$DoctorPatientStateImpl(
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
        appointments:
            null == appointments
                ? _value._appointments
                : appointments // ignore: cast_nullable_to_non_nullable
                    as List<AppointmentModel>,
        appointmentsStatus:
            null == appointmentsStatus
                ? _value.appointmentsStatus
                : appointmentsStatus // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        patient:
            null == patient
                ? _value.patient
                : patient // ignore: cast_nullable_to_non_nullable
                    as UserModel,
      ),
    );
  }
}

/// @nodoc

class _$DoctorPatientStateImpl implements _DoctorPatientState {
  const _$DoctorPatientStateImpl({
    required this.status,
    required this.message,
    required final List<AppointmentModel> appointments,
    required this.appointmentsStatus,
    required this.patient,
  }) : _appointments = appointments;

  @override
  final DataStatus status;
  @override
  final String message;
  final List<AppointmentModel> _appointments;
  @override
  List<AppointmentModel> get appointments {
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appointments);
  }

  @override
  final DataStatus appointmentsStatus;
  @override
  final UserModel patient;

  @override
  String toString() {
    return 'DoctorPatientState(status: $status, message: $message, appointments: $appointments, appointmentsStatus: $appointmentsStatus, patient: $patient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorPatientStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._appointments,
              _appointments,
            ) &&
            (identical(other.appointmentsStatus, appointmentsStatus) ||
                other.appointmentsStatus == appointmentsStatus) &&
            (identical(other.patient, patient) || other.patient == patient));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    const DeepCollectionEquality().hash(_appointments),
    appointmentsStatus,
    patient,
  );

  /// Create a copy of DoctorPatientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorPatientStateImplCopyWith<_$DoctorPatientStateImpl> get copyWith =>
      __$$DoctorPatientStateImplCopyWithImpl<_$DoctorPatientStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DoctorPatientState implements DoctorPatientState {
  const factory _DoctorPatientState({
    required final DataStatus status,
    required final String message,
    required final List<AppointmentModel> appointments,
    required final DataStatus appointmentsStatus,
    required final UserModel patient,
  }) = _$DoctorPatientStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  List<AppointmentModel> get appointments;
  @override
  DataStatus get appointmentsStatus;
  @override
  UserModel get patient;

  /// Create a copy of DoctorPatientState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorPatientStateImplCopyWith<_$DoctorPatientStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
