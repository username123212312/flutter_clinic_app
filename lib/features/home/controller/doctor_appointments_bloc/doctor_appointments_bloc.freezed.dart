// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_appointments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DoctorAppointmentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAppointmentsByType,
    required TResult Function() resetAppointments,
    required TResult Function(DoctorAppointmentStatus status)
    changeAppointmentStatus,
    required TResult Function(DoctorAppointmentType type) changeAppointmentType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAppointmentsByType,
    TResult? Function()? resetAppointments,
    TResult? Function(DoctorAppointmentStatus status)? changeAppointmentStatus,
    TResult? Function(DoctorAppointmentType type)? changeAppointmentType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAppointmentsByType,
    TResult Function()? resetAppointments,
    TResult Function(DoctorAppointmentStatus status)? changeAppointmentStatus,
    TResult Function(DoctorAppointmentType type)? changeAppointmentType,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAppointmentsByType value)
    fetchAppointmentsByType,
    required TResult Function(ResetAppointments value) resetAppointments,
    required TResult Function(ChangeAppointmentStatus value)
    changeAppointmentStatus,
    required TResult Function(ChangeAppointmentType value)
    changeAppointmentType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAppointmentsByType value)? fetchAppointmentsByType,
    TResult? Function(ResetAppointments value)? resetAppointments,
    TResult? Function(ChangeAppointmentStatus value)? changeAppointmentStatus,
    TResult? Function(ChangeAppointmentType value)? changeAppointmentType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAppointmentsByType value)? fetchAppointmentsByType,
    TResult Function(ResetAppointments value)? resetAppointments,
    TResult Function(ChangeAppointmentStatus value)? changeAppointmentStatus,
    TResult Function(ChangeAppointmentType value)? changeAppointmentType,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorAppointmentsEventCopyWith<$Res> {
  factory $DoctorAppointmentsEventCopyWith(
    DoctorAppointmentsEvent value,
    $Res Function(DoctorAppointmentsEvent) then,
  ) = _$DoctorAppointmentsEventCopyWithImpl<$Res, DoctorAppointmentsEvent>;
}

/// @nodoc
class _$DoctorAppointmentsEventCopyWithImpl<
  $Res,
  $Val extends DoctorAppointmentsEvent
>
    implements $DoctorAppointmentsEventCopyWith<$Res> {
  _$DoctorAppointmentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorAppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchAppointmentsByTypeImplCopyWith<$Res> {
  factory _$$FetchAppointmentsByTypeImplCopyWith(
    _$FetchAppointmentsByTypeImpl value,
    $Res Function(_$FetchAppointmentsByTypeImpl) then,
  ) = __$$FetchAppointmentsByTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAppointmentsByTypeImplCopyWithImpl<$Res>
    extends
        _$DoctorAppointmentsEventCopyWithImpl<
          $Res,
          _$FetchAppointmentsByTypeImpl
        >
    implements _$$FetchAppointmentsByTypeImplCopyWith<$Res> {
  __$$FetchAppointmentsByTypeImplCopyWithImpl(
    _$FetchAppointmentsByTypeImpl _value,
    $Res Function(_$FetchAppointmentsByTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorAppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAppointmentsByTypeImpl implements FetchAppointmentsByType {
  const _$FetchAppointmentsByTypeImpl();

  @override
  String toString() {
    return 'DoctorAppointmentsEvent.fetchAppointmentsByType()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAppointmentsByTypeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAppointmentsByType,
    required TResult Function() resetAppointments,
    required TResult Function(DoctorAppointmentStatus status)
    changeAppointmentStatus,
    required TResult Function(DoctorAppointmentType type) changeAppointmentType,
  }) {
    return fetchAppointmentsByType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAppointmentsByType,
    TResult? Function()? resetAppointments,
    TResult? Function(DoctorAppointmentStatus status)? changeAppointmentStatus,
    TResult? Function(DoctorAppointmentType type)? changeAppointmentType,
  }) {
    return fetchAppointmentsByType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAppointmentsByType,
    TResult Function()? resetAppointments,
    TResult Function(DoctorAppointmentStatus status)? changeAppointmentStatus,
    TResult Function(DoctorAppointmentType type)? changeAppointmentType,
    required TResult orElse(),
  }) {
    if (fetchAppointmentsByType != null) {
      return fetchAppointmentsByType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAppointmentsByType value)
    fetchAppointmentsByType,
    required TResult Function(ResetAppointments value) resetAppointments,
    required TResult Function(ChangeAppointmentStatus value)
    changeAppointmentStatus,
    required TResult Function(ChangeAppointmentType value)
    changeAppointmentType,
  }) {
    return fetchAppointmentsByType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAppointmentsByType value)? fetchAppointmentsByType,
    TResult? Function(ResetAppointments value)? resetAppointments,
    TResult? Function(ChangeAppointmentStatus value)? changeAppointmentStatus,
    TResult? Function(ChangeAppointmentType value)? changeAppointmentType,
  }) {
    return fetchAppointmentsByType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAppointmentsByType value)? fetchAppointmentsByType,
    TResult Function(ResetAppointments value)? resetAppointments,
    TResult Function(ChangeAppointmentStatus value)? changeAppointmentStatus,
    TResult Function(ChangeAppointmentType value)? changeAppointmentType,
    required TResult orElse(),
  }) {
    if (fetchAppointmentsByType != null) {
      return fetchAppointmentsByType(this);
    }
    return orElse();
  }
}

abstract class FetchAppointmentsByType implements DoctorAppointmentsEvent {
  const factory FetchAppointmentsByType() = _$FetchAppointmentsByTypeImpl;
}

/// @nodoc
abstract class _$$ResetAppointmentsImplCopyWith<$Res> {
  factory _$$ResetAppointmentsImplCopyWith(
    _$ResetAppointmentsImpl value,
    $Res Function(_$ResetAppointmentsImpl) then,
  ) = __$$ResetAppointmentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetAppointmentsImplCopyWithImpl<$Res>
    extends _$DoctorAppointmentsEventCopyWithImpl<$Res, _$ResetAppointmentsImpl>
    implements _$$ResetAppointmentsImplCopyWith<$Res> {
  __$$ResetAppointmentsImplCopyWithImpl(
    _$ResetAppointmentsImpl _value,
    $Res Function(_$ResetAppointmentsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorAppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetAppointmentsImpl implements ResetAppointments {
  const _$ResetAppointmentsImpl();

  @override
  String toString() {
    return 'DoctorAppointmentsEvent.resetAppointments()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetAppointmentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAppointmentsByType,
    required TResult Function() resetAppointments,
    required TResult Function(DoctorAppointmentStatus status)
    changeAppointmentStatus,
    required TResult Function(DoctorAppointmentType type) changeAppointmentType,
  }) {
    return resetAppointments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAppointmentsByType,
    TResult? Function()? resetAppointments,
    TResult? Function(DoctorAppointmentStatus status)? changeAppointmentStatus,
    TResult? Function(DoctorAppointmentType type)? changeAppointmentType,
  }) {
    return resetAppointments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAppointmentsByType,
    TResult Function()? resetAppointments,
    TResult Function(DoctorAppointmentStatus status)? changeAppointmentStatus,
    TResult Function(DoctorAppointmentType type)? changeAppointmentType,
    required TResult orElse(),
  }) {
    if (resetAppointments != null) {
      return resetAppointments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAppointmentsByType value)
    fetchAppointmentsByType,
    required TResult Function(ResetAppointments value) resetAppointments,
    required TResult Function(ChangeAppointmentStatus value)
    changeAppointmentStatus,
    required TResult Function(ChangeAppointmentType value)
    changeAppointmentType,
  }) {
    return resetAppointments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAppointmentsByType value)? fetchAppointmentsByType,
    TResult? Function(ResetAppointments value)? resetAppointments,
    TResult? Function(ChangeAppointmentStatus value)? changeAppointmentStatus,
    TResult? Function(ChangeAppointmentType value)? changeAppointmentType,
  }) {
    return resetAppointments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAppointmentsByType value)? fetchAppointmentsByType,
    TResult Function(ResetAppointments value)? resetAppointments,
    TResult Function(ChangeAppointmentStatus value)? changeAppointmentStatus,
    TResult Function(ChangeAppointmentType value)? changeAppointmentType,
    required TResult orElse(),
  }) {
    if (resetAppointments != null) {
      return resetAppointments(this);
    }
    return orElse();
  }
}

abstract class ResetAppointments implements DoctorAppointmentsEvent {
  const factory ResetAppointments() = _$ResetAppointmentsImpl;
}

/// @nodoc
abstract class _$$ChangeAppointmentStatusImplCopyWith<$Res> {
  factory _$$ChangeAppointmentStatusImplCopyWith(
    _$ChangeAppointmentStatusImpl value,
    $Res Function(_$ChangeAppointmentStatusImpl) then,
  ) = __$$ChangeAppointmentStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DoctorAppointmentStatus status});
}

/// @nodoc
class __$$ChangeAppointmentStatusImplCopyWithImpl<$Res>
    extends
        _$DoctorAppointmentsEventCopyWithImpl<
          $Res,
          _$ChangeAppointmentStatusImpl
        >
    implements _$$ChangeAppointmentStatusImplCopyWith<$Res> {
  __$$ChangeAppointmentStatusImplCopyWithImpl(
    _$ChangeAppointmentStatusImpl _value,
    $Res Function(_$ChangeAppointmentStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorAppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _$ChangeAppointmentStatusImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as DoctorAppointmentStatus,
      ),
    );
  }
}

/// @nodoc

class _$ChangeAppointmentStatusImpl implements ChangeAppointmentStatus {
  const _$ChangeAppointmentStatusImpl({required this.status});

  @override
  final DoctorAppointmentStatus status;

  @override
  String toString() {
    return 'DoctorAppointmentsEvent.changeAppointmentStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAppointmentStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of DoctorAppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAppointmentStatusImplCopyWith<_$ChangeAppointmentStatusImpl>
  get copyWith => __$$ChangeAppointmentStatusImplCopyWithImpl<
    _$ChangeAppointmentStatusImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAppointmentsByType,
    required TResult Function() resetAppointments,
    required TResult Function(DoctorAppointmentStatus status)
    changeAppointmentStatus,
    required TResult Function(DoctorAppointmentType type) changeAppointmentType,
  }) {
    return changeAppointmentStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAppointmentsByType,
    TResult? Function()? resetAppointments,
    TResult? Function(DoctorAppointmentStatus status)? changeAppointmentStatus,
    TResult? Function(DoctorAppointmentType type)? changeAppointmentType,
  }) {
    return changeAppointmentStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAppointmentsByType,
    TResult Function()? resetAppointments,
    TResult Function(DoctorAppointmentStatus status)? changeAppointmentStatus,
    TResult Function(DoctorAppointmentType type)? changeAppointmentType,
    required TResult orElse(),
  }) {
    if (changeAppointmentStatus != null) {
      return changeAppointmentStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAppointmentsByType value)
    fetchAppointmentsByType,
    required TResult Function(ResetAppointments value) resetAppointments,
    required TResult Function(ChangeAppointmentStatus value)
    changeAppointmentStatus,
    required TResult Function(ChangeAppointmentType value)
    changeAppointmentType,
  }) {
    return changeAppointmentStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAppointmentsByType value)? fetchAppointmentsByType,
    TResult? Function(ResetAppointments value)? resetAppointments,
    TResult? Function(ChangeAppointmentStatus value)? changeAppointmentStatus,
    TResult? Function(ChangeAppointmentType value)? changeAppointmentType,
  }) {
    return changeAppointmentStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAppointmentsByType value)? fetchAppointmentsByType,
    TResult Function(ResetAppointments value)? resetAppointments,
    TResult Function(ChangeAppointmentStatus value)? changeAppointmentStatus,
    TResult Function(ChangeAppointmentType value)? changeAppointmentType,
    required TResult orElse(),
  }) {
    if (changeAppointmentStatus != null) {
      return changeAppointmentStatus(this);
    }
    return orElse();
  }
}

abstract class ChangeAppointmentStatus implements DoctorAppointmentsEvent {
  const factory ChangeAppointmentStatus({
    required final DoctorAppointmentStatus status,
  }) = _$ChangeAppointmentStatusImpl;

  DoctorAppointmentStatus get status;

  /// Create a copy of DoctorAppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeAppointmentStatusImplCopyWith<_$ChangeAppointmentStatusImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeAppointmentTypeImplCopyWith<$Res> {
  factory _$$ChangeAppointmentTypeImplCopyWith(
    _$ChangeAppointmentTypeImpl value,
    $Res Function(_$ChangeAppointmentTypeImpl) then,
  ) = __$$ChangeAppointmentTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DoctorAppointmentType type});
}

/// @nodoc
class __$$ChangeAppointmentTypeImplCopyWithImpl<$Res>
    extends
        _$DoctorAppointmentsEventCopyWithImpl<$Res, _$ChangeAppointmentTypeImpl>
    implements _$$ChangeAppointmentTypeImplCopyWith<$Res> {
  __$$ChangeAppointmentTypeImplCopyWithImpl(
    _$ChangeAppointmentTypeImpl _value,
    $Res Function(_$ChangeAppointmentTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorAppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null}) {
    return _then(
      _$ChangeAppointmentTypeImpl(
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as DoctorAppointmentType,
      ),
    );
  }
}

/// @nodoc

class _$ChangeAppointmentTypeImpl implements ChangeAppointmentType {
  const _$ChangeAppointmentTypeImpl({required this.type});

  @override
  final DoctorAppointmentType type;

  @override
  String toString() {
    return 'DoctorAppointmentsEvent.changeAppointmentType(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAppointmentTypeImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of DoctorAppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAppointmentTypeImplCopyWith<_$ChangeAppointmentTypeImpl>
  get copyWith =>
      __$$ChangeAppointmentTypeImplCopyWithImpl<_$ChangeAppointmentTypeImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAppointmentsByType,
    required TResult Function() resetAppointments,
    required TResult Function(DoctorAppointmentStatus status)
    changeAppointmentStatus,
    required TResult Function(DoctorAppointmentType type) changeAppointmentType,
  }) {
    return changeAppointmentType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAppointmentsByType,
    TResult? Function()? resetAppointments,
    TResult? Function(DoctorAppointmentStatus status)? changeAppointmentStatus,
    TResult? Function(DoctorAppointmentType type)? changeAppointmentType,
  }) {
    return changeAppointmentType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAppointmentsByType,
    TResult Function()? resetAppointments,
    TResult Function(DoctorAppointmentStatus status)? changeAppointmentStatus,
    TResult Function(DoctorAppointmentType type)? changeAppointmentType,
    required TResult orElse(),
  }) {
    if (changeAppointmentType != null) {
      return changeAppointmentType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAppointmentsByType value)
    fetchAppointmentsByType,
    required TResult Function(ResetAppointments value) resetAppointments,
    required TResult Function(ChangeAppointmentStatus value)
    changeAppointmentStatus,
    required TResult Function(ChangeAppointmentType value)
    changeAppointmentType,
  }) {
    return changeAppointmentType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAppointmentsByType value)? fetchAppointmentsByType,
    TResult? Function(ResetAppointments value)? resetAppointments,
    TResult? Function(ChangeAppointmentStatus value)? changeAppointmentStatus,
    TResult? Function(ChangeAppointmentType value)? changeAppointmentType,
  }) {
    return changeAppointmentType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAppointmentsByType value)? fetchAppointmentsByType,
    TResult Function(ResetAppointments value)? resetAppointments,
    TResult Function(ChangeAppointmentStatus value)? changeAppointmentStatus,
    TResult Function(ChangeAppointmentType value)? changeAppointmentType,
    required TResult orElse(),
  }) {
    if (changeAppointmentType != null) {
      return changeAppointmentType(this);
    }
    return orElse();
  }
}

abstract class ChangeAppointmentType implements DoctorAppointmentsEvent {
  const factory ChangeAppointmentType({
    required final DoctorAppointmentType type,
  }) = _$ChangeAppointmentTypeImpl;

  DoctorAppointmentType get type;

  /// Create a copy of DoctorAppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeAppointmentTypeImplCopyWith<_$ChangeAppointmentTypeImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorAppointmentsState {
  DoctorAppointmentStatus get doctorAppointmentStatus =>
      throw _privateConstructorUsedError;
  DoctorAppointmentType get doctorAppointmentType =>
      throw _privateConstructorUsedError;
  List<AppointmentModel> get appointments => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of DoctorAppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorAppointmentsStateCopyWith<DoctorAppointmentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorAppointmentsStateCopyWith<$Res> {
  factory $DoctorAppointmentsStateCopyWith(
    DoctorAppointmentsState value,
    $Res Function(DoctorAppointmentsState) then,
  ) = _$DoctorAppointmentsStateCopyWithImpl<$Res, DoctorAppointmentsState>;
  @useResult
  $Res call({
    DoctorAppointmentStatus doctorAppointmentStatus,
    DoctorAppointmentType doctorAppointmentType,
    List<AppointmentModel> appointments,
    DataStatus status,
    String message,
  });
}

/// @nodoc
class _$DoctorAppointmentsStateCopyWithImpl<
  $Res,
  $Val extends DoctorAppointmentsState
>
    implements $DoctorAppointmentsStateCopyWith<$Res> {
  _$DoctorAppointmentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorAppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorAppointmentStatus = null,
    Object? doctorAppointmentType = null,
    Object? appointments = null,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(
      _value.copyWith(
            doctorAppointmentStatus:
                null == doctorAppointmentStatus
                    ? _value.doctorAppointmentStatus
                    : doctorAppointmentStatus // ignore: cast_nullable_to_non_nullable
                        as DoctorAppointmentStatus,
            doctorAppointmentType:
                null == doctorAppointmentType
                    ? _value.doctorAppointmentType
                    : doctorAppointmentType // ignore: cast_nullable_to_non_nullable
                        as DoctorAppointmentType,
            appointments:
                null == appointments
                    ? _value.appointments
                    : appointments // ignore: cast_nullable_to_non_nullable
                        as List<AppointmentModel>,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DoctorAppointmentsStateImplCopyWith<$Res>
    implements $DoctorAppointmentsStateCopyWith<$Res> {
  factory _$$DoctorAppointmentsStateImplCopyWith(
    _$DoctorAppointmentsStateImpl value,
    $Res Function(_$DoctorAppointmentsStateImpl) then,
  ) = __$$DoctorAppointmentsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DoctorAppointmentStatus doctorAppointmentStatus,
    DoctorAppointmentType doctorAppointmentType,
    List<AppointmentModel> appointments,
    DataStatus status,
    String message,
  });
}

/// @nodoc
class __$$DoctorAppointmentsStateImplCopyWithImpl<$Res>
    extends
        _$DoctorAppointmentsStateCopyWithImpl<
          $Res,
          _$DoctorAppointmentsStateImpl
        >
    implements _$$DoctorAppointmentsStateImplCopyWith<$Res> {
  __$$DoctorAppointmentsStateImplCopyWithImpl(
    _$DoctorAppointmentsStateImpl _value,
    $Res Function(_$DoctorAppointmentsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorAppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorAppointmentStatus = null,
    Object? doctorAppointmentType = null,
    Object? appointments = null,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(
      _$DoctorAppointmentsStateImpl(
        doctorAppointmentStatus:
            null == doctorAppointmentStatus
                ? _value.doctorAppointmentStatus
                : doctorAppointmentStatus // ignore: cast_nullable_to_non_nullable
                    as DoctorAppointmentStatus,
        doctorAppointmentType:
            null == doctorAppointmentType
                ? _value.doctorAppointmentType
                : doctorAppointmentType // ignore: cast_nullable_to_non_nullable
                    as DoctorAppointmentType,
        appointments:
            null == appointments
                ? _value._appointments
                : appointments // ignore: cast_nullable_to_non_nullable
                    as List<AppointmentModel>,
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
      ),
    );
  }
}

/// @nodoc

class _$DoctorAppointmentsStateImpl implements _DoctorAppointmentsState {
  const _$DoctorAppointmentsStateImpl({
    required this.doctorAppointmentStatus,
    required this.doctorAppointmentType,
    required final List<AppointmentModel> appointments,
    required this.status,
    required this.message,
  }) : _appointments = appointments;

  @override
  final DoctorAppointmentStatus doctorAppointmentStatus;
  @override
  final DoctorAppointmentType doctorAppointmentType;
  final List<AppointmentModel> _appointments;
  @override
  List<AppointmentModel> get appointments {
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appointments);
  }

  @override
  final DataStatus status;
  @override
  final String message;

  @override
  String toString() {
    return 'DoctorAppointmentsState(doctorAppointmentStatus: $doctorAppointmentStatus, doctorAppointmentType: $doctorAppointmentType, appointments: $appointments, status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorAppointmentsStateImpl &&
            (identical(
                  other.doctorAppointmentStatus,
                  doctorAppointmentStatus,
                ) ||
                other.doctorAppointmentStatus == doctorAppointmentStatus) &&
            (identical(other.doctorAppointmentType, doctorAppointmentType) ||
                other.doctorAppointmentType == doctorAppointmentType) &&
            const DeepCollectionEquality().equals(
              other._appointments,
              _appointments,
            ) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    doctorAppointmentStatus,
    doctorAppointmentType,
    const DeepCollectionEquality().hash(_appointments),
    status,
    message,
  );

  /// Create a copy of DoctorAppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorAppointmentsStateImplCopyWith<_$DoctorAppointmentsStateImpl>
  get copyWith => __$$DoctorAppointmentsStateImplCopyWithImpl<
    _$DoctorAppointmentsStateImpl
  >(this, _$identity);
}

abstract class _DoctorAppointmentsState implements DoctorAppointmentsState {
  const factory _DoctorAppointmentsState({
    required final DoctorAppointmentStatus doctorAppointmentStatus,
    required final DoctorAppointmentType doctorAppointmentType,
    required final List<AppointmentModel> appointments,
    required final DataStatus status,
    required final String message,
  }) = _$DoctorAppointmentsStateImpl;

  @override
  DoctorAppointmentStatus get doctorAppointmentStatus;
  @override
  DoctorAppointmentType get doctorAppointmentType;
  @override
  List<AppointmentModel> get appointments;
  @override
  DataStatus get status;
  @override
  String get message;

  /// Create a copy of DoctorAppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorAppointmentsStateImplCopyWith<_$DoctorAppointmentsStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
