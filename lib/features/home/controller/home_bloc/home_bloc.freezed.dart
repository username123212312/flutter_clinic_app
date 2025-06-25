// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allListsFetched,
    required TResult Function() notificationsCountetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allListsFetched,
    TResult? Function()? notificationsCountetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allListsFetched,
    TResult Function()? notificationsCountetched,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllListsFetched value) allListsFetched,
    required TResult Function(NotificationCountFetched value)
    notificationsCountetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllListsFetched value)? allListsFetched,
    TResult? Function(NotificationCountFetched value)? notificationsCountetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllListsFetched value)? allListsFetched,
    TResult Function(NotificationCountFetched value)? notificationsCountetched,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AllListsFetchedImplCopyWith<$Res> {
  factory _$$AllListsFetchedImplCopyWith(
    _$AllListsFetchedImpl value,
    $Res Function(_$AllListsFetchedImpl) then,
  ) = __$$AllListsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllListsFetchedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AllListsFetchedImpl>
    implements _$$AllListsFetchedImplCopyWith<$Res> {
  __$$AllListsFetchedImplCopyWithImpl(
    _$AllListsFetchedImpl _value,
    $Res Function(_$AllListsFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AllListsFetchedImpl
    with DiagnosticableTreeMixin
    implements AllListsFetched {
  const _$AllListsFetchedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.allListsFetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeEvent.allListsFetched'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AllListsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allListsFetched,
    required TResult Function() notificationsCountetched,
  }) {
    return allListsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allListsFetched,
    TResult? Function()? notificationsCountetched,
  }) {
    return allListsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allListsFetched,
    TResult Function()? notificationsCountetched,
    required TResult orElse(),
  }) {
    if (allListsFetched != null) {
      return allListsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllListsFetched value) allListsFetched,
    required TResult Function(NotificationCountFetched value)
    notificationsCountetched,
  }) {
    return allListsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllListsFetched value)? allListsFetched,
    TResult? Function(NotificationCountFetched value)? notificationsCountetched,
  }) {
    return allListsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllListsFetched value)? allListsFetched,
    TResult Function(NotificationCountFetched value)? notificationsCountetched,
    required TResult orElse(),
  }) {
    if (allListsFetched != null) {
      return allListsFetched(this);
    }
    return orElse();
  }
}

abstract class AllListsFetched implements HomeEvent {
  const factory AllListsFetched() = _$AllListsFetchedImpl;
}

/// @nodoc
abstract class _$$NotificationCountFetchedImplCopyWith<$Res> {
  factory _$$NotificationCountFetchedImplCopyWith(
    _$NotificationCountFetchedImpl value,
    $Res Function(_$NotificationCountFetchedImpl) then,
  ) = __$$NotificationCountFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationCountFetchedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$NotificationCountFetchedImpl>
    implements _$$NotificationCountFetchedImplCopyWith<$Res> {
  __$$NotificationCountFetchedImplCopyWithImpl(
    _$NotificationCountFetchedImpl _value,
    $Res Function(_$NotificationCountFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationCountFetchedImpl
    with DiagnosticableTreeMixin
    implements NotificationCountFetched {
  const _$NotificationCountFetchedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.notificationsCountetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.notificationsCountetched'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationCountFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allListsFetched,
    required TResult Function() notificationsCountetched,
  }) {
    return notificationsCountetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allListsFetched,
    TResult? Function()? notificationsCountetched,
  }) {
    return notificationsCountetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allListsFetched,
    TResult Function()? notificationsCountetched,
    required TResult orElse(),
  }) {
    if (notificationsCountetched != null) {
      return notificationsCountetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllListsFetched value) allListsFetched,
    required TResult Function(NotificationCountFetched value)
    notificationsCountetched,
  }) {
    return notificationsCountetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllListsFetched value)? allListsFetched,
    TResult? Function(NotificationCountFetched value)? notificationsCountetched,
  }) {
    return notificationsCountetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllListsFetched value)? allListsFetched,
    TResult Function(NotificationCountFetched value)? notificationsCountetched,
    required TResult orElse(),
  }) {
    if (notificationsCountetched != null) {
      return notificationsCountetched(this);
    }
    return orElse();
  }
}

abstract class NotificationCountFetched implements HomeEvent {
  const factory NotificationCountFetched() = _$NotificationCountFetchedImpl;
}

/// @nodoc
mixin _$HomeState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<AppointmentModel> get upcomingAppointmentsList =>
      throw _privateConstructorUsedError;
  DataStatus get upcomingAppointmentsListStatus =>
      throw _privateConstructorUsedError;
  List<ClinicModel> get departmentsList => throw _privateConstructorUsedError;
  DataStatus get departmentsListStatus => throw _privateConstructorUsedError;
  List<DoctorModel> get doctorsList => throw _privateConstructorUsedError;
  DataStatus get doctorsListStatus => throw _privateConstructorUsedError;
  List<PharmacyModel> get pharmaciesList => throw _privateConstructorUsedError;
  DataStatus get pharmaciesListStatus => throw _privateConstructorUsedError;
  int get notificationCount => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({
    DataStatus status,
    String message,
    List<AppointmentModel> upcomingAppointmentsList,
    DataStatus upcomingAppointmentsListStatus,
    List<ClinicModel> departmentsList,
    DataStatus departmentsListStatus,
    List<DoctorModel> doctorsList,
    DataStatus doctorsListStatus,
    List<PharmacyModel> pharmaciesList,
    DataStatus pharmaciesListStatus,
    int notificationCount,
  });
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? upcomingAppointmentsList = null,
    Object? upcomingAppointmentsListStatus = null,
    Object? departmentsList = null,
    Object? departmentsListStatus = null,
    Object? doctorsList = null,
    Object? doctorsListStatus = null,
    Object? pharmaciesList = null,
    Object? pharmaciesListStatus = null,
    Object? notificationCount = null,
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
            upcomingAppointmentsList:
                null == upcomingAppointmentsList
                    ? _value.upcomingAppointmentsList
                    : upcomingAppointmentsList // ignore: cast_nullable_to_non_nullable
                        as List<AppointmentModel>,
            upcomingAppointmentsListStatus:
                null == upcomingAppointmentsListStatus
                    ? _value.upcomingAppointmentsListStatus
                    : upcomingAppointmentsListStatus // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            departmentsList:
                null == departmentsList
                    ? _value.departmentsList
                    : departmentsList // ignore: cast_nullable_to_non_nullable
                        as List<ClinicModel>,
            departmentsListStatus:
                null == departmentsListStatus
                    ? _value.departmentsListStatus
                    : departmentsListStatus // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            doctorsList:
                null == doctorsList
                    ? _value.doctorsList
                    : doctorsList // ignore: cast_nullable_to_non_nullable
                        as List<DoctorModel>,
            doctorsListStatus:
                null == doctorsListStatus
                    ? _value.doctorsListStatus
                    : doctorsListStatus // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            pharmaciesList:
                null == pharmaciesList
                    ? _value.pharmaciesList
                    : pharmaciesList // ignore: cast_nullable_to_non_nullable
                        as List<PharmacyModel>,
            pharmaciesListStatus:
                null == pharmaciesListStatus
                    ? _value.pharmaciesListStatus
                    : pharmaciesListStatus // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            notificationCount:
                null == notificationCount
                    ? _value.notificationCount
                    : notificationCount // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DataStatus status,
    String message,
    List<AppointmentModel> upcomingAppointmentsList,
    DataStatus upcomingAppointmentsListStatus,
    List<ClinicModel> departmentsList,
    DataStatus departmentsListStatus,
    List<DoctorModel> doctorsList,
    DataStatus doctorsListStatus,
    List<PharmacyModel> pharmaciesList,
    DataStatus pharmaciesListStatus,
    int notificationCount,
  });
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? upcomingAppointmentsList = null,
    Object? upcomingAppointmentsListStatus = null,
    Object? departmentsList = null,
    Object? departmentsListStatus = null,
    Object? doctorsList = null,
    Object? doctorsListStatus = null,
    Object? pharmaciesList = null,
    Object? pharmaciesListStatus = null,
    Object? notificationCount = null,
  }) {
    return _then(
      _$HomeStateImpl(
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
        upcomingAppointmentsList:
            null == upcomingAppointmentsList
                ? _value._upcomingAppointmentsList
                : upcomingAppointmentsList // ignore: cast_nullable_to_non_nullable
                    as List<AppointmentModel>,
        upcomingAppointmentsListStatus:
            null == upcomingAppointmentsListStatus
                ? _value.upcomingAppointmentsListStatus
                : upcomingAppointmentsListStatus // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        departmentsList:
            null == departmentsList
                ? _value._departmentsList
                : departmentsList // ignore: cast_nullable_to_non_nullable
                    as List<ClinicModel>,
        departmentsListStatus:
            null == departmentsListStatus
                ? _value.departmentsListStatus
                : departmentsListStatus // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        doctorsList:
            null == doctorsList
                ? _value._doctorsList
                : doctorsList // ignore: cast_nullable_to_non_nullable
                    as List<DoctorModel>,
        doctorsListStatus:
            null == doctorsListStatus
                ? _value.doctorsListStatus
                : doctorsListStatus // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        pharmaciesList:
            null == pharmaciesList
                ? _value._pharmaciesList
                : pharmaciesList // ignore: cast_nullable_to_non_nullable
                    as List<PharmacyModel>,
        pharmaciesListStatus:
            null == pharmaciesListStatus
                ? _value.pharmaciesListStatus
                : pharmaciesListStatus // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        notificationCount:
            null == notificationCount
                ? _value.notificationCount
                : notificationCount // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$HomeStateImpl with DiagnosticableTreeMixin implements _HomeState {
  const _$HomeStateImpl({
    required this.status,
    required this.message,
    required final List<AppointmentModel> upcomingAppointmentsList,
    required this.upcomingAppointmentsListStatus,
    required final List<ClinicModel> departmentsList,
    required this.departmentsListStatus,
    required final List<DoctorModel> doctorsList,
    required this.doctorsListStatus,
    required final List<PharmacyModel> pharmaciesList,
    required this.pharmaciesListStatus,
    required this.notificationCount,
  }) : _upcomingAppointmentsList = upcomingAppointmentsList,
       _departmentsList = departmentsList,
       _doctorsList = doctorsList,
       _pharmaciesList = pharmaciesList;

  @override
  final DataStatus status;
  @override
  final String message;
  final List<AppointmentModel> _upcomingAppointmentsList;
  @override
  List<AppointmentModel> get upcomingAppointmentsList {
    if (_upcomingAppointmentsList is EqualUnmodifiableListView)
      return _upcomingAppointmentsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingAppointmentsList);
  }

  @override
  final DataStatus upcomingAppointmentsListStatus;
  final List<ClinicModel> _departmentsList;
  @override
  List<ClinicModel> get departmentsList {
    if (_departmentsList is EqualUnmodifiableListView) return _departmentsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departmentsList);
  }

  @override
  final DataStatus departmentsListStatus;
  final List<DoctorModel> _doctorsList;
  @override
  List<DoctorModel> get doctorsList {
    if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctorsList);
  }

  @override
  final DataStatus doctorsListStatus;
  final List<PharmacyModel> _pharmaciesList;
  @override
  List<PharmacyModel> get pharmaciesList {
    if (_pharmaciesList is EqualUnmodifiableListView) return _pharmaciesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pharmaciesList);
  }

  @override
  final DataStatus pharmaciesListStatus;
  @override
  final int notificationCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(status: $status, message: $message, upcomingAppointmentsList: $upcomingAppointmentsList, upcomingAppointmentsListStatus: $upcomingAppointmentsListStatus, departmentsList: $departmentsList, departmentsListStatus: $departmentsListStatus, doctorsList: $doctorsList, doctorsListStatus: $doctorsListStatus, pharmaciesList: $pharmaciesList, pharmaciesListStatus: $pharmaciesListStatus, notificationCount: $notificationCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('message', message))
      ..add(
        DiagnosticsProperty(
          'upcomingAppointmentsList',
          upcomingAppointmentsList,
        ),
      )
      ..add(
        DiagnosticsProperty(
          'upcomingAppointmentsListStatus',
          upcomingAppointmentsListStatus,
        ),
      )
      ..add(DiagnosticsProperty('departmentsList', departmentsList))
      ..add(DiagnosticsProperty('departmentsListStatus', departmentsListStatus))
      ..add(DiagnosticsProperty('doctorsList', doctorsList))
      ..add(DiagnosticsProperty('doctorsListStatus', doctorsListStatus))
      ..add(DiagnosticsProperty('pharmaciesList', pharmaciesList))
      ..add(DiagnosticsProperty('pharmaciesListStatus', pharmaciesListStatus))
      ..add(DiagnosticsProperty('notificationCount', notificationCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._upcomingAppointmentsList,
              _upcomingAppointmentsList,
            ) &&
            (identical(
                  other.upcomingAppointmentsListStatus,
                  upcomingAppointmentsListStatus,
                ) ||
                other.upcomingAppointmentsListStatus ==
                    upcomingAppointmentsListStatus) &&
            const DeepCollectionEquality().equals(
              other._departmentsList,
              _departmentsList,
            ) &&
            (identical(other.departmentsListStatus, departmentsListStatus) ||
                other.departmentsListStatus == departmentsListStatus) &&
            const DeepCollectionEquality().equals(
              other._doctorsList,
              _doctorsList,
            ) &&
            (identical(other.doctorsListStatus, doctorsListStatus) ||
                other.doctorsListStatus == doctorsListStatus) &&
            const DeepCollectionEquality().equals(
              other._pharmaciesList,
              _pharmaciesList,
            ) &&
            (identical(other.pharmaciesListStatus, pharmaciesListStatus) ||
                other.pharmaciesListStatus == pharmaciesListStatus) &&
            (identical(other.notificationCount, notificationCount) ||
                other.notificationCount == notificationCount));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    const DeepCollectionEquality().hash(_upcomingAppointmentsList),
    upcomingAppointmentsListStatus,
    const DeepCollectionEquality().hash(_departmentsList),
    departmentsListStatus,
    const DeepCollectionEquality().hash(_doctorsList),
    doctorsListStatus,
    const DeepCollectionEquality().hash(_pharmaciesList),
    pharmaciesListStatus,
    notificationCount,
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({
    required final DataStatus status,
    required final String message,
    required final List<AppointmentModel> upcomingAppointmentsList,
    required final DataStatus upcomingAppointmentsListStatus,
    required final List<ClinicModel> departmentsList,
    required final DataStatus departmentsListStatus,
    required final List<DoctorModel> doctorsList,
    required final DataStatus doctorsListStatus,
    required final List<PharmacyModel> pharmaciesList,
    required final DataStatus pharmaciesListStatus,
    required final int notificationCount,
  }) = _$HomeStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  List<AppointmentModel> get upcomingAppointmentsList;
  @override
  DataStatus get upcomingAppointmentsListStatus;
  @override
  List<ClinicModel> get departmentsList;
  @override
  DataStatus get departmentsListStatus;
  @override
  List<DoctorModel> get doctorsList;
  @override
  DataStatus get doctorsListStatus;
  @override
  List<PharmacyModel> get pharmaciesList;
  @override
  DataStatus get pharmaciesListStatus;
  @override
  int get notificationCount;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
