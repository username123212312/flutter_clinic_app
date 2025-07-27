// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppointmentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appointmentsFetched,
    required TResult Function(AppointmentStatus appointmentStatus)
    appointmentStatusChanged,
    required TResult Function(AppointmentType appointmentType)
    appointmentTypeChanged,
    required TResult Function(int reservationId) appointmentCanceled,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appointmentsFetched,
    TResult? Function(AppointmentStatus appointmentStatus)?
    appointmentStatusChanged,
    TResult? Function(AppointmentType appointmentType)? appointmentTypeChanged,
    TResult? Function(int reservationId)? appointmentCanceled,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appointmentsFetched,
    TResult Function(AppointmentStatus appointmentStatus)?
    appointmentStatusChanged,
    TResult Function(AppointmentType appointmentType)? appointmentTypeChanged,
    TResult Function(int reservationId)? appointmentCanceled,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentsFetched value) appointmentsFetched,
    required TResult Function(AppointmentStatusChanged value)
    appointmentStatusChanged,
    required TResult Function(AppointmentTypeChanged value)
    appointmentTypeChanged,
    required TResult Function(AppointmentCanceled value) appointmentCanceled,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentsFetched value)? appointmentsFetched,
    TResult? Function(AppointmentStatusChanged value)? appointmentStatusChanged,
    TResult? Function(AppointmentTypeChanged value)? appointmentTypeChanged,
    TResult? Function(AppointmentCanceled value)? appointmentCanceled,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentsFetched value)? appointmentsFetched,
    TResult Function(AppointmentStatusChanged value)? appointmentStatusChanged,
    TResult Function(AppointmentTypeChanged value)? appointmentTypeChanged,
    TResult Function(AppointmentCanceled value)? appointmentCanceled,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentsEventCopyWith<$Res> {
  factory $AppointmentsEventCopyWith(
    AppointmentsEvent value,
    $Res Function(AppointmentsEvent) then,
  ) = _$AppointmentsEventCopyWithImpl<$Res, AppointmentsEvent>;
}

/// @nodoc
class _$AppointmentsEventCopyWithImpl<$Res, $Val extends AppointmentsEvent>
    implements $AppointmentsEventCopyWith<$Res> {
  _$AppointmentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppointmentsFetchedImplCopyWith<$Res> {
  factory _$$AppointmentsFetchedImplCopyWith(
    _$AppointmentsFetchedImpl value,
    $Res Function(_$AppointmentsFetchedImpl) then,
  ) = __$$AppointmentsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppointmentsFetchedImplCopyWithImpl<$Res>
    extends _$AppointmentsEventCopyWithImpl<$Res, _$AppointmentsFetchedImpl>
    implements _$$AppointmentsFetchedImplCopyWith<$Res> {
  __$$AppointmentsFetchedImplCopyWithImpl(
    _$AppointmentsFetchedImpl _value,
    $Res Function(_$AppointmentsFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppointmentsFetchedImpl implements AppointmentsFetched {
  const _$AppointmentsFetchedImpl();

  @override
  String toString() {
    return 'AppointmentsEvent.appointmentsFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appointmentsFetched,
    required TResult Function(AppointmentStatus appointmentStatus)
    appointmentStatusChanged,
    required TResult Function(AppointmentType appointmentType)
    appointmentTypeChanged,
    required TResult Function(int reservationId) appointmentCanceled,
  }) {
    return appointmentsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appointmentsFetched,
    TResult? Function(AppointmentStatus appointmentStatus)?
    appointmentStatusChanged,
    TResult? Function(AppointmentType appointmentType)? appointmentTypeChanged,
    TResult? Function(int reservationId)? appointmentCanceled,
  }) {
    return appointmentsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appointmentsFetched,
    TResult Function(AppointmentStatus appointmentStatus)?
    appointmentStatusChanged,
    TResult Function(AppointmentType appointmentType)? appointmentTypeChanged,
    TResult Function(int reservationId)? appointmentCanceled,
    required TResult orElse(),
  }) {
    if (appointmentsFetched != null) {
      return appointmentsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentsFetched value) appointmentsFetched,
    required TResult Function(AppointmentStatusChanged value)
    appointmentStatusChanged,
    required TResult Function(AppointmentTypeChanged value)
    appointmentTypeChanged,
    required TResult Function(AppointmentCanceled value) appointmentCanceled,
  }) {
    return appointmentsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentsFetched value)? appointmentsFetched,
    TResult? Function(AppointmentStatusChanged value)? appointmentStatusChanged,
    TResult? Function(AppointmentTypeChanged value)? appointmentTypeChanged,
    TResult? Function(AppointmentCanceled value)? appointmentCanceled,
  }) {
    return appointmentsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentsFetched value)? appointmentsFetched,
    TResult Function(AppointmentStatusChanged value)? appointmentStatusChanged,
    TResult Function(AppointmentTypeChanged value)? appointmentTypeChanged,
    TResult Function(AppointmentCanceled value)? appointmentCanceled,
    required TResult orElse(),
  }) {
    if (appointmentsFetched != null) {
      return appointmentsFetched(this);
    }
    return orElse();
  }
}

abstract class AppointmentsFetched implements AppointmentsEvent {
  const factory AppointmentsFetched() = _$AppointmentsFetchedImpl;
}

/// @nodoc
abstract class _$$AppointmentStatusChangedImplCopyWith<$Res> {
  factory _$$AppointmentStatusChangedImplCopyWith(
    _$AppointmentStatusChangedImpl value,
    $Res Function(_$AppointmentStatusChangedImpl) then,
  ) = __$$AppointmentStatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppointmentStatus appointmentStatus});
}

/// @nodoc
class __$$AppointmentStatusChangedImplCopyWithImpl<$Res>
    extends
        _$AppointmentsEventCopyWithImpl<$Res, _$AppointmentStatusChangedImpl>
    implements _$$AppointmentStatusChangedImplCopyWith<$Res> {
  __$$AppointmentStatusChangedImplCopyWithImpl(
    _$AppointmentStatusChangedImpl _value,
    $Res Function(_$AppointmentStatusChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? appointmentStatus = null}) {
    return _then(
      _$AppointmentStatusChangedImpl(
        appointmentStatus:
            null == appointmentStatus
                ? _value.appointmentStatus
                : appointmentStatus // ignore: cast_nullable_to_non_nullable
                    as AppointmentStatus,
      ),
    );
  }
}

/// @nodoc

class _$AppointmentStatusChangedImpl implements AppointmentStatusChanged {
  const _$AppointmentStatusChangedImpl({required this.appointmentStatus});

  @override
  final AppointmentStatus appointmentStatus;

  @override
  String toString() {
    return 'AppointmentsEvent.appointmentStatusChanged(appointmentStatus: $appointmentStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentStatusChangedImpl &&
            (identical(other.appointmentStatus, appointmentStatus) ||
                other.appointmentStatus == appointmentStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentStatus);

  /// Create a copy of AppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentStatusChangedImplCopyWith<_$AppointmentStatusChangedImpl>
  get copyWith => __$$AppointmentStatusChangedImplCopyWithImpl<
    _$AppointmentStatusChangedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appointmentsFetched,
    required TResult Function(AppointmentStatus appointmentStatus)
    appointmentStatusChanged,
    required TResult Function(AppointmentType appointmentType)
    appointmentTypeChanged,
    required TResult Function(int reservationId) appointmentCanceled,
  }) {
    return appointmentStatusChanged(appointmentStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appointmentsFetched,
    TResult? Function(AppointmentStatus appointmentStatus)?
    appointmentStatusChanged,
    TResult? Function(AppointmentType appointmentType)? appointmentTypeChanged,
    TResult? Function(int reservationId)? appointmentCanceled,
  }) {
    return appointmentStatusChanged?.call(appointmentStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appointmentsFetched,
    TResult Function(AppointmentStatus appointmentStatus)?
    appointmentStatusChanged,
    TResult Function(AppointmentType appointmentType)? appointmentTypeChanged,
    TResult Function(int reservationId)? appointmentCanceled,
    required TResult orElse(),
  }) {
    if (appointmentStatusChanged != null) {
      return appointmentStatusChanged(appointmentStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentsFetched value) appointmentsFetched,
    required TResult Function(AppointmentStatusChanged value)
    appointmentStatusChanged,
    required TResult Function(AppointmentTypeChanged value)
    appointmentTypeChanged,
    required TResult Function(AppointmentCanceled value) appointmentCanceled,
  }) {
    return appointmentStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentsFetched value)? appointmentsFetched,
    TResult? Function(AppointmentStatusChanged value)? appointmentStatusChanged,
    TResult? Function(AppointmentTypeChanged value)? appointmentTypeChanged,
    TResult? Function(AppointmentCanceled value)? appointmentCanceled,
  }) {
    return appointmentStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentsFetched value)? appointmentsFetched,
    TResult Function(AppointmentStatusChanged value)? appointmentStatusChanged,
    TResult Function(AppointmentTypeChanged value)? appointmentTypeChanged,
    TResult Function(AppointmentCanceled value)? appointmentCanceled,
    required TResult orElse(),
  }) {
    if (appointmentStatusChanged != null) {
      return appointmentStatusChanged(this);
    }
    return orElse();
  }
}

abstract class AppointmentStatusChanged implements AppointmentsEvent {
  const factory AppointmentStatusChanged({
    required final AppointmentStatus appointmentStatus,
  }) = _$AppointmentStatusChangedImpl;

  AppointmentStatus get appointmentStatus;

  /// Create a copy of AppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentStatusChangedImplCopyWith<_$AppointmentStatusChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppointmentTypeChangedImplCopyWith<$Res> {
  factory _$$AppointmentTypeChangedImplCopyWith(
    _$AppointmentTypeChangedImpl value,
    $Res Function(_$AppointmentTypeChangedImpl) then,
  ) = __$$AppointmentTypeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppointmentType appointmentType});
}

/// @nodoc
class __$$AppointmentTypeChangedImplCopyWithImpl<$Res>
    extends _$AppointmentsEventCopyWithImpl<$Res, _$AppointmentTypeChangedImpl>
    implements _$$AppointmentTypeChangedImplCopyWith<$Res> {
  __$$AppointmentTypeChangedImplCopyWithImpl(
    _$AppointmentTypeChangedImpl _value,
    $Res Function(_$AppointmentTypeChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? appointmentType = null}) {
    return _then(
      _$AppointmentTypeChangedImpl(
        appointmentType:
            null == appointmentType
                ? _value.appointmentType
                : appointmentType // ignore: cast_nullable_to_non_nullable
                    as AppointmentType,
      ),
    );
  }
}

/// @nodoc

class _$AppointmentTypeChangedImpl implements AppointmentTypeChanged {
  const _$AppointmentTypeChangedImpl({required this.appointmentType});

  @override
  final AppointmentType appointmentType;

  @override
  String toString() {
    return 'AppointmentsEvent.appointmentTypeChanged(appointmentType: $appointmentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentTypeChangedImpl &&
            (identical(other.appointmentType, appointmentType) ||
                other.appointmentType == appointmentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentType);

  /// Create a copy of AppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentTypeChangedImplCopyWith<_$AppointmentTypeChangedImpl>
  get copyWith =>
      __$$AppointmentTypeChangedImplCopyWithImpl<_$AppointmentTypeChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appointmentsFetched,
    required TResult Function(AppointmentStatus appointmentStatus)
    appointmentStatusChanged,
    required TResult Function(AppointmentType appointmentType)
    appointmentTypeChanged,
    required TResult Function(int reservationId) appointmentCanceled,
  }) {
    return appointmentTypeChanged(appointmentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appointmentsFetched,
    TResult? Function(AppointmentStatus appointmentStatus)?
    appointmentStatusChanged,
    TResult? Function(AppointmentType appointmentType)? appointmentTypeChanged,
    TResult? Function(int reservationId)? appointmentCanceled,
  }) {
    return appointmentTypeChanged?.call(appointmentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appointmentsFetched,
    TResult Function(AppointmentStatus appointmentStatus)?
    appointmentStatusChanged,
    TResult Function(AppointmentType appointmentType)? appointmentTypeChanged,
    TResult Function(int reservationId)? appointmentCanceled,
    required TResult orElse(),
  }) {
    if (appointmentTypeChanged != null) {
      return appointmentTypeChanged(appointmentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentsFetched value) appointmentsFetched,
    required TResult Function(AppointmentStatusChanged value)
    appointmentStatusChanged,
    required TResult Function(AppointmentTypeChanged value)
    appointmentTypeChanged,
    required TResult Function(AppointmentCanceled value) appointmentCanceled,
  }) {
    return appointmentTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentsFetched value)? appointmentsFetched,
    TResult? Function(AppointmentStatusChanged value)? appointmentStatusChanged,
    TResult? Function(AppointmentTypeChanged value)? appointmentTypeChanged,
    TResult? Function(AppointmentCanceled value)? appointmentCanceled,
  }) {
    return appointmentTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentsFetched value)? appointmentsFetched,
    TResult Function(AppointmentStatusChanged value)? appointmentStatusChanged,
    TResult Function(AppointmentTypeChanged value)? appointmentTypeChanged,
    TResult Function(AppointmentCanceled value)? appointmentCanceled,
    required TResult orElse(),
  }) {
    if (appointmentTypeChanged != null) {
      return appointmentTypeChanged(this);
    }
    return orElse();
  }
}

abstract class AppointmentTypeChanged implements AppointmentsEvent {
  const factory AppointmentTypeChanged({
    required final AppointmentType appointmentType,
  }) = _$AppointmentTypeChangedImpl;

  AppointmentType get appointmentType;

  /// Create a copy of AppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentTypeChangedImplCopyWith<_$AppointmentTypeChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppointmentCanceledImplCopyWith<$Res> {
  factory _$$AppointmentCanceledImplCopyWith(
    _$AppointmentCanceledImpl value,
    $Res Function(_$AppointmentCanceledImpl) then,
  ) = __$$AppointmentCanceledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int reservationId});
}

/// @nodoc
class __$$AppointmentCanceledImplCopyWithImpl<$Res>
    extends _$AppointmentsEventCopyWithImpl<$Res, _$AppointmentCanceledImpl>
    implements _$$AppointmentCanceledImplCopyWith<$Res> {
  __$$AppointmentCanceledImplCopyWithImpl(
    _$AppointmentCanceledImpl _value,
    $Res Function(_$AppointmentCanceledImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reservationId = null}) {
    return _then(
      _$AppointmentCanceledImpl(
        reservationId:
            null == reservationId
                ? _value.reservationId
                : reservationId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$AppointmentCanceledImpl implements AppointmentCanceled {
  const _$AppointmentCanceledImpl({required this.reservationId});

  @override
  final int reservationId;

  @override
  String toString() {
    return 'AppointmentsEvent.appointmentCanceled(reservationId: $reservationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentCanceledImpl &&
            (identical(other.reservationId, reservationId) ||
                other.reservationId == reservationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservationId);

  /// Create a copy of AppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentCanceledImplCopyWith<_$AppointmentCanceledImpl> get copyWith =>
      __$$AppointmentCanceledImplCopyWithImpl<_$AppointmentCanceledImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appointmentsFetched,
    required TResult Function(AppointmentStatus appointmentStatus)
    appointmentStatusChanged,
    required TResult Function(AppointmentType appointmentType)
    appointmentTypeChanged,
    required TResult Function(int reservationId) appointmentCanceled,
  }) {
    return appointmentCanceled(reservationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appointmentsFetched,
    TResult? Function(AppointmentStatus appointmentStatus)?
    appointmentStatusChanged,
    TResult? Function(AppointmentType appointmentType)? appointmentTypeChanged,
    TResult? Function(int reservationId)? appointmentCanceled,
  }) {
    return appointmentCanceled?.call(reservationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appointmentsFetched,
    TResult Function(AppointmentStatus appointmentStatus)?
    appointmentStatusChanged,
    TResult Function(AppointmentType appointmentType)? appointmentTypeChanged,
    TResult Function(int reservationId)? appointmentCanceled,
    required TResult orElse(),
  }) {
    if (appointmentCanceled != null) {
      return appointmentCanceled(reservationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentsFetched value) appointmentsFetched,
    required TResult Function(AppointmentStatusChanged value)
    appointmentStatusChanged,
    required TResult Function(AppointmentTypeChanged value)
    appointmentTypeChanged,
    required TResult Function(AppointmentCanceled value) appointmentCanceled,
  }) {
    return appointmentCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentsFetched value)? appointmentsFetched,
    TResult? Function(AppointmentStatusChanged value)? appointmentStatusChanged,
    TResult? Function(AppointmentTypeChanged value)? appointmentTypeChanged,
    TResult? Function(AppointmentCanceled value)? appointmentCanceled,
  }) {
    return appointmentCanceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentsFetched value)? appointmentsFetched,
    TResult Function(AppointmentStatusChanged value)? appointmentStatusChanged,
    TResult Function(AppointmentTypeChanged value)? appointmentTypeChanged,
    TResult Function(AppointmentCanceled value)? appointmentCanceled,
    required TResult orElse(),
  }) {
    if (appointmentCanceled != null) {
      return appointmentCanceled(this);
    }
    return orElse();
  }
}

abstract class AppointmentCanceled implements AppointmentsEvent {
  const factory AppointmentCanceled({required final int reservationId}) =
      _$AppointmentCanceledImpl;

  int get reservationId;

  /// Create a copy of AppointmentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentCanceledImplCopyWith<_$AppointmentCanceledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppointmentsState {
  List<AppointmentModel>? get appointments =>
      throw _privateConstructorUsedError;
  AppointmentStatus get appointmentStatus => throw _privateConstructorUsedError;
  AppointmentType get appointmentType => throw _privateConstructorUsedError;
  DataStatus? get status => throw _privateConstructorUsedError;
  String? get statusMessage => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentsStateCopyWith<AppointmentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentsStateCopyWith<$Res> {
  factory $AppointmentsStateCopyWith(
    AppointmentsState value,
    $Res Function(AppointmentsState) then,
  ) = _$AppointmentsStateCopyWithImpl<$Res, AppointmentsState>;
  @useResult
  $Res call({
    List<AppointmentModel>? appointments,
    AppointmentStatus appointmentStatus,
    AppointmentType appointmentType,
    DataStatus? status,
    String? statusMessage,
  });
}

/// @nodoc
class _$AppointmentsStateCopyWithImpl<$Res, $Val extends AppointmentsState>
    implements $AppointmentsStateCopyWith<$Res> {
  _$AppointmentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointments = freezed,
    Object? appointmentStatus = null,
    Object? appointmentType = null,
    Object? status = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            appointments:
                freezed == appointments
                    ? _value.appointments
                    : appointments // ignore: cast_nullable_to_non_nullable
                        as List<AppointmentModel>?,
            appointmentStatus:
                null == appointmentStatus
                    ? _value.appointmentStatus
                    : appointmentStatus // ignore: cast_nullable_to_non_nullable
                        as AppointmentStatus,
            appointmentType:
                null == appointmentType
                    ? _value.appointmentType
                    : appointmentType // ignore: cast_nullable_to_non_nullable
                        as AppointmentType,
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
}

/// @nodoc
abstract class _$$AppointmentsStateImplCopyWith<$Res>
    implements $AppointmentsStateCopyWith<$Res> {
  factory _$$AppointmentsStateImplCopyWith(
    _$AppointmentsStateImpl value,
    $Res Function(_$AppointmentsStateImpl) then,
  ) = __$$AppointmentsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<AppointmentModel>? appointments,
    AppointmentStatus appointmentStatus,
    AppointmentType appointmentType,
    DataStatus? status,
    String? statusMessage,
  });
}

/// @nodoc
class __$$AppointmentsStateImplCopyWithImpl<$Res>
    extends _$AppointmentsStateCopyWithImpl<$Res, _$AppointmentsStateImpl>
    implements _$$AppointmentsStateImplCopyWith<$Res> {
  __$$AppointmentsStateImplCopyWithImpl(
    _$AppointmentsStateImpl _value,
    $Res Function(_$AppointmentsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointments = freezed,
    Object? appointmentStatus = null,
    Object? appointmentType = null,
    Object? status = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(
      _$AppointmentsStateImpl(
        appointments:
            freezed == appointments
                ? _value._appointments
                : appointments // ignore: cast_nullable_to_non_nullable
                    as List<AppointmentModel>?,
        appointmentStatus:
            null == appointmentStatus
                ? _value.appointmentStatus
                : appointmentStatus // ignore: cast_nullable_to_non_nullable
                    as AppointmentStatus,
        appointmentType:
            null == appointmentType
                ? _value.appointmentType
                : appointmentType // ignore: cast_nullable_to_non_nullable
                    as AppointmentType,
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

class _$AppointmentsStateImpl implements _AppointmentsState {
  const _$AppointmentsStateImpl({
    final List<AppointmentModel>? appointments,
    required this.appointmentStatus,
    required this.appointmentType,
    this.status,
    this.statusMessage,
  }) : _appointments = appointments;

  final List<AppointmentModel>? _appointments;
  @override
  List<AppointmentModel>? get appointments {
    final value = _appointments;
    if (value == null) return null;
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AppointmentStatus appointmentStatus;
  @override
  final AppointmentType appointmentType;
  @override
  final DataStatus? status;
  @override
  final String? statusMessage;

  @override
  String toString() {
    return 'AppointmentsState(appointments: $appointments, appointmentStatus: $appointmentStatus, appointmentType: $appointmentType, status: $status, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentsStateImpl &&
            const DeepCollectionEquality().equals(
              other._appointments,
              _appointments,
            ) &&
            (identical(other.appointmentStatus, appointmentStatus) ||
                other.appointmentStatus == appointmentStatus) &&
            (identical(other.appointmentType, appointmentType) ||
                other.appointmentType == appointmentType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_appointments),
    appointmentStatus,
    appointmentType,
    status,
    statusMessage,
  );

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentsStateImplCopyWith<_$AppointmentsStateImpl> get copyWith =>
      __$$AppointmentsStateImplCopyWithImpl<_$AppointmentsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _AppointmentsState implements AppointmentsState {
  const factory _AppointmentsState({
    final List<AppointmentModel>? appointments,
    required final AppointmentStatus appointmentStatus,
    required final AppointmentType appointmentType,
    final DataStatus? status,
    final String? statusMessage,
  }) = _$AppointmentsStateImpl;

  @override
  List<AppointmentModel>? get appointments;
  @override
  AppointmentStatus get appointmentStatus;
  @override
  AppointmentType get appointmentType;
  @override
  DataStatus? get status;
  @override
  String? get statusMessage;

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentsStateImplCopyWith<_$AppointmentsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
