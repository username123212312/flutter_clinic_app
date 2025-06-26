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
    required TResult Function() notificationsCountFetched,
    required TResult Function() upcomingAppointmentsFetched,
    required TResult Function() departmentsFetched,
    required TResult Function() doctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(String query) doctorSearched,
    required TResult Function() pharmaciesFetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allListsFetched,
    TResult? Function()? notificationsCountFetched,
    TResult? Function()? upcomingAppointmentsFetched,
    TResult? Function()? departmentsFetched,
    TResult? Function()? doctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(String query)? doctorSearched,
    TResult? Function()? pharmaciesFetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allListsFetched,
    TResult Function()? notificationsCountFetched,
    TResult Function()? upcomingAppointmentsFetched,
    TResult Function()? departmentsFetched,
    TResult Function()? doctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(String query)? doctorSearched,
    TResult Function()? pharmaciesFetched,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllListsFetched value) allListsFetched,
    required TResult Function(NotificationCountFetched value)
    notificationsCountFetched,
    required TResult Function(UpcomingAppointmentsFetched value)
    upcomingAppointmentsFetched,
    required TResult Function(DepartmentsFetched value) departmentsFetched,
    required TResult Function(DoctorsFetched value) doctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSearched value) doctorSearched,
    required TResult Function(PharmaciesFetched value) pharmaciesFetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllListsFetched value)? allListsFetched,
    TResult? Function(NotificationCountFetched value)?
    notificationsCountFetched,
    TResult? Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult? Function(DepartmentsFetched value)? departmentsFetched,
    TResult? Function(DoctorsFetched value)? doctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSearched value)? doctorSearched,
    TResult? Function(PharmaciesFetched value)? pharmaciesFetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllListsFetched value)? allListsFetched,
    TResult Function(NotificationCountFetched value)? notificationsCountFetched,
    TResult Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult Function(DepartmentsFetched value)? departmentsFetched,
    TResult Function(DoctorsFetched value)? doctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSearched value)? doctorSearched,
    TResult Function(PharmaciesFetched value)? pharmaciesFetched,
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
    required TResult Function() notificationsCountFetched,
    required TResult Function() upcomingAppointmentsFetched,
    required TResult Function() departmentsFetched,
    required TResult Function() doctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(String query) doctorSearched,
    required TResult Function() pharmaciesFetched,
  }) {
    return allListsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allListsFetched,
    TResult? Function()? notificationsCountFetched,
    TResult? Function()? upcomingAppointmentsFetched,
    TResult? Function()? departmentsFetched,
    TResult? Function()? doctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(String query)? doctorSearched,
    TResult? Function()? pharmaciesFetched,
  }) {
    return allListsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allListsFetched,
    TResult Function()? notificationsCountFetched,
    TResult Function()? upcomingAppointmentsFetched,
    TResult Function()? departmentsFetched,
    TResult Function()? doctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(String query)? doctorSearched,
    TResult Function()? pharmaciesFetched,
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
    notificationsCountFetched,
    required TResult Function(UpcomingAppointmentsFetched value)
    upcomingAppointmentsFetched,
    required TResult Function(DepartmentsFetched value) departmentsFetched,
    required TResult Function(DoctorsFetched value) doctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSearched value) doctorSearched,
    required TResult Function(PharmaciesFetched value) pharmaciesFetched,
  }) {
    return allListsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllListsFetched value)? allListsFetched,
    TResult? Function(NotificationCountFetched value)?
    notificationsCountFetched,
    TResult? Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult? Function(DepartmentsFetched value)? departmentsFetched,
    TResult? Function(DoctorsFetched value)? doctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSearched value)? doctorSearched,
    TResult? Function(PharmaciesFetched value)? pharmaciesFetched,
  }) {
    return allListsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllListsFetched value)? allListsFetched,
    TResult Function(NotificationCountFetched value)? notificationsCountFetched,
    TResult Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult Function(DepartmentsFetched value)? departmentsFetched,
    TResult Function(DoctorsFetched value)? doctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSearched value)? doctorSearched,
    TResult Function(PharmaciesFetched value)? pharmaciesFetched,
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
    return 'HomeEvent.notificationsCountFetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.notificationsCountFetched'));
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
    required TResult Function() notificationsCountFetched,
    required TResult Function() upcomingAppointmentsFetched,
    required TResult Function() departmentsFetched,
    required TResult Function() doctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(String query) doctorSearched,
    required TResult Function() pharmaciesFetched,
  }) {
    return notificationsCountFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allListsFetched,
    TResult? Function()? notificationsCountFetched,
    TResult? Function()? upcomingAppointmentsFetched,
    TResult? Function()? departmentsFetched,
    TResult? Function()? doctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(String query)? doctorSearched,
    TResult? Function()? pharmaciesFetched,
  }) {
    return notificationsCountFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allListsFetched,
    TResult Function()? notificationsCountFetched,
    TResult Function()? upcomingAppointmentsFetched,
    TResult Function()? departmentsFetched,
    TResult Function()? doctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(String query)? doctorSearched,
    TResult Function()? pharmaciesFetched,
    required TResult orElse(),
  }) {
    if (notificationsCountFetched != null) {
      return notificationsCountFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllListsFetched value) allListsFetched,
    required TResult Function(NotificationCountFetched value)
    notificationsCountFetched,
    required TResult Function(UpcomingAppointmentsFetched value)
    upcomingAppointmentsFetched,
    required TResult Function(DepartmentsFetched value) departmentsFetched,
    required TResult Function(DoctorsFetched value) doctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSearched value) doctorSearched,
    required TResult Function(PharmaciesFetched value) pharmaciesFetched,
  }) {
    return notificationsCountFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllListsFetched value)? allListsFetched,
    TResult? Function(NotificationCountFetched value)?
    notificationsCountFetched,
    TResult? Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult? Function(DepartmentsFetched value)? departmentsFetched,
    TResult? Function(DoctorsFetched value)? doctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSearched value)? doctorSearched,
    TResult? Function(PharmaciesFetched value)? pharmaciesFetched,
  }) {
    return notificationsCountFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllListsFetched value)? allListsFetched,
    TResult Function(NotificationCountFetched value)? notificationsCountFetched,
    TResult Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult Function(DepartmentsFetched value)? departmentsFetched,
    TResult Function(DoctorsFetched value)? doctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSearched value)? doctorSearched,
    TResult Function(PharmaciesFetched value)? pharmaciesFetched,
    required TResult orElse(),
  }) {
    if (notificationsCountFetched != null) {
      return notificationsCountFetched(this);
    }
    return orElse();
  }
}

abstract class NotificationCountFetched implements HomeEvent {
  const factory NotificationCountFetched() = _$NotificationCountFetchedImpl;
}

/// @nodoc
abstract class _$$UpcomingAppointmentsFetchedImplCopyWith<$Res> {
  factory _$$UpcomingAppointmentsFetchedImplCopyWith(
    _$UpcomingAppointmentsFetchedImpl value,
    $Res Function(_$UpcomingAppointmentsFetchedImpl) then,
  ) = __$$UpcomingAppointmentsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpcomingAppointmentsFetchedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpcomingAppointmentsFetchedImpl>
    implements _$$UpcomingAppointmentsFetchedImplCopyWith<$Res> {
  __$$UpcomingAppointmentsFetchedImplCopyWithImpl(
    _$UpcomingAppointmentsFetchedImpl _value,
    $Res Function(_$UpcomingAppointmentsFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpcomingAppointmentsFetchedImpl
    with DiagnosticableTreeMixin
    implements UpcomingAppointmentsFetched {
  const _$UpcomingAppointmentsFetchedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.upcomingAppointmentsFetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(
      DiagnosticsProperty('type', 'HomeEvent.upcomingAppointmentsFetched'),
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpcomingAppointmentsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allListsFetched,
    required TResult Function() notificationsCountFetched,
    required TResult Function() upcomingAppointmentsFetched,
    required TResult Function() departmentsFetched,
    required TResult Function() doctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(String query) doctorSearched,
    required TResult Function() pharmaciesFetched,
  }) {
    return upcomingAppointmentsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allListsFetched,
    TResult? Function()? notificationsCountFetched,
    TResult? Function()? upcomingAppointmentsFetched,
    TResult? Function()? departmentsFetched,
    TResult? Function()? doctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(String query)? doctorSearched,
    TResult? Function()? pharmaciesFetched,
  }) {
    return upcomingAppointmentsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allListsFetched,
    TResult Function()? notificationsCountFetched,
    TResult Function()? upcomingAppointmentsFetched,
    TResult Function()? departmentsFetched,
    TResult Function()? doctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(String query)? doctorSearched,
    TResult Function()? pharmaciesFetched,
    required TResult orElse(),
  }) {
    if (upcomingAppointmentsFetched != null) {
      return upcomingAppointmentsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllListsFetched value) allListsFetched,
    required TResult Function(NotificationCountFetched value)
    notificationsCountFetched,
    required TResult Function(UpcomingAppointmentsFetched value)
    upcomingAppointmentsFetched,
    required TResult Function(DepartmentsFetched value) departmentsFetched,
    required TResult Function(DoctorsFetched value) doctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSearched value) doctorSearched,
    required TResult Function(PharmaciesFetched value) pharmaciesFetched,
  }) {
    return upcomingAppointmentsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllListsFetched value)? allListsFetched,
    TResult? Function(NotificationCountFetched value)?
    notificationsCountFetched,
    TResult? Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult? Function(DepartmentsFetched value)? departmentsFetched,
    TResult? Function(DoctorsFetched value)? doctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSearched value)? doctorSearched,
    TResult? Function(PharmaciesFetched value)? pharmaciesFetched,
  }) {
    return upcomingAppointmentsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllListsFetched value)? allListsFetched,
    TResult Function(NotificationCountFetched value)? notificationsCountFetched,
    TResult Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult Function(DepartmentsFetched value)? departmentsFetched,
    TResult Function(DoctorsFetched value)? doctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSearched value)? doctorSearched,
    TResult Function(PharmaciesFetched value)? pharmaciesFetched,
    required TResult orElse(),
  }) {
    if (upcomingAppointmentsFetched != null) {
      return upcomingAppointmentsFetched(this);
    }
    return orElse();
  }
}

abstract class UpcomingAppointmentsFetched implements HomeEvent {
  const factory UpcomingAppointmentsFetched() =
      _$UpcomingAppointmentsFetchedImpl;
}

/// @nodoc
abstract class _$$DepartmentsFetchedImplCopyWith<$Res> {
  factory _$$DepartmentsFetchedImplCopyWith(
    _$DepartmentsFetchedImpl value,
    $Res Function(_$DepartmentsFetchedImpl) then,
  ) = __$$DepartmentsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DepartmentsFetchedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DepartmentsFetchedImpl>
    implements _$$DepartmentsFetchedImplCopyWith<$Res> {
  __$$DepartmentsFetchedImplCopyWithImpl(
    _$DepartmentsFetchedImpl _value,
    $Res Function(_$DepartmentsFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DepartmentsFetchedImpl
    with DiagnosticableTreeMixin
    implements DepartmentsFetched {
  const _$DepartmentsFetchedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.departmentsFetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.departmentsFetched'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DepartmentsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allListsFetched,
    required TResult Function() notificationsCountFetched,
    required TResult Function() upcomingAppointmentsFetched,
    required TResult Function() departmentsFetched,
    required TResult Function() doctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(String query) doctorSearched,
    required TResult Function() pharmaciesFetched,
  }) {
    return departmentsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allListsFetched,
    TResult? Function()? notificationsCountFetched,
    TResult? Function()? upcomingAppointmentsFetched,
    TResult? Function()? departmentsFetched,
    TResult? Function()? doctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(String query)? doctorSearched,
    TResult? Function()? pharmaciesFetched,
  }) {
    return departmentsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allListsFetched,
    TResult Function()? notificationsCountFetched,
    TResult Function()? upcomingAppointmentsFetched,
    TResult Function()? departmentsFetched,
    TResult Function()? doctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(String query)? doctorSearched,
    TResult Function()? pharmaciesFetched,
    required TResult orElse(),
  }) {
    if (departmentsFetched != null) {
      return departmentsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllListsFetched value) allListsFetched,
    required TResult Function(NotificationCountFetched value)
    notificationsCountFetched,
    required TResult Function(UpcomingAppointmentsFetched value)
    upcomingAppointmentsFetched,
    required TResult Function(DepartmentsFetched value) departmentsFetched,
    required TResult Function(DoctorsFetched value) doctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSearched value) doctorSearched,
    required TResult Function(PharmaciesFetched value) pharmaciesFetched,
  }) {
    return departmentsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllListsFetched value)? allListsFetched,
    TResult? Function(NotificationCountFetched value)?
    notificationsCountFetched,
    TResult? Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult? Function(DepartmentsFetched value)? departmentsFetched,
    TResult? Function(DoctorsFetched value)? doctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSearched value)? doctorSearched,
    TResult? Function(PharmaciesFetched value)? pharmaciesFetched,
  }) {
    return departmentsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllListsFetched value)? allListsFetched,
    TResult Function(NotificationCountFetched value)? notificationsCountFetched,
    TResult Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult Function(DepartmentsFetched value)? departmentsFetched,
    TResult Function(DoctorsFetched value)? doctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSearched value)? doctorSearched,
    TResult Function(PharmaciesFetched value)? pharmaciesFetched,
    required TResult orElse(),
  }) {
    if (departmentsFetched != null) {
      return departmentsFetched(this);
    }
    return orElse();
  }
}

abstract class DepartmentsFetched implements HomeEvent {
  const factory DepartmentsFetched() = _$DepartmentsFetchedImpl;
}

/// @nodoc
abstract class _$$DoctorsFetchedImplCopyWith<$Res> {
  factory _$$DoctorsFetchedImplCopyWith(
    _$DoctorsFetchedImpl value,
    $Res Function(_$DoctorsFetchedImpl) then,
  ) = __$$DoctorsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoctorsFetchedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DoctorsFetchedImpl>
    implements _$$DoctorsFetchedImplCopyWith<$Res> {
  __$$DoctorsFetchedImplCopyWithImpl(
    _$DoctorsFetchedImpl _value,
    $Res Function(_$DoctorsFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DoctorsFetchedImpl
    with DiagnosticableTreeMixin
    implements DoctorsFetched {
  const _$DoctorsFetchedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.doctorsFetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeEvent.doctorsFetched'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoctorsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allListsFetched,
    required TResult Function() notificationsCountFetched,
    required TResult Function() upcomingAppointmentsFetched,
    required TResult Function() departmentsFetched,
    required TResult Function() doctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(String query) doctorSearched,
    required TResult Function() pharmaciesFetched,
  }) {
    return doctorsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allListsFetched,
    TResult? Function()? notificationsCountFetched,
    TResult? Function()? upcomingAppointmentsFetched,
    TResult? Function()? departmentsFetched,
    TResult? Function()? doctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(String query)? doctorSearched,
    TResult? Function()? pharmaciesFetched,
  }) {
    return doctorsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allListsFetched,
    TResult Function()? notificationsCountFetched,
    TResult Function()? upcomingAppointmentsFetched,
    TResult Function()? departmentsFetched,
    TResult Function()? doctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(String query)? doctorSearched,
    TResult Function()? pharmaciesFetched,
    required TResult orElse(),
  }) {
    if (doctorsFetched != null) {
      return doctorsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllListsFetched value) allListsFetched,
    required TResult Function(NotificationCountFetched value)
    notificationsCountFetched,
    required TResult Function(UpcomingAppointmentsFetched value)
    upcomingAppointmentsFetched,
    required TResult Function(DepartmentsFetched value) departmentsFetched,
    required TResult Function(DoctorsFetched value) doctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSearched value) doctorSearched,
    required TResult Function(PharmaciesFetched value) pharmaciesFetched,
  }) {
    return doctorsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllListsFetched value)? allListsFetched,
    TResult? Function(NotificationCountFetched value)?
    notificationsCountFetched,
    TResult? Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult? Function(DepartmentsFetched value)? departmentsFetched,
    TResult? Function(DoctorsFetched value)? doctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSearched value)? doctorSearched,
    TResult? Function(PharmaciesFetched value)? pharmaciesFetched,
  }) {
    return doctorsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllListsFetched value)? allListsFetched,
    TResult Function(NotificationCountFetched value)? notificationsCountFetched,
    TResult Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult Function(DepartmentsFetched value)? departmentsFetched,
    TResult Function(DoctorsFetched value)? doctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSearched value)? doctorSearched,
    TResult Function(PharmaciesFetched value)? pharmaciesFetched,
    required TResult orElse(),
  }) {
    if (doctorsFetched != null) {
      return doctorsFetched(this);
    }
    return orElse();
  }
}

abstract class DoctorsFetched implements HomeEvent {
  const factory DoctorsFetched() = _$DoctorsFetchedImpl;
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
    extends _$HomeEventCopyWithImpl<$Res, _$AllDoctorsFetchedImpl>
    implements _$$AllDoctorsFetchedImplCopyWith<$Res> {
  __$$AllDoctorsFetchedImplCopyWithImpl(
    _$AllDoctorsFetchedImpl _value,
    $Res Function(_$AllDoctorsFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AllDoctorsFetchedImpl
    with DiagnosticableTreeMixin
    implements AllDoctorsFetched {
  const _$AllDoctorsFetchedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.allDoctorsFetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeEvent.allDoctorsFetched'));
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
    required TResult Function() allListsFetched,
    required TResult Function() notificationsCountFetched,
    required TResult Function() upcomingAppointmentsFetched,
    required TResult Function() departmentsFetched,
    required TResult Function() doctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(String query) doctorSearched,
    required TResult Function() pharmaciesFetched,
  }) {
    return allDoctorsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allListsFetched,
    TResult? Function()? notificationsCountFetched,
    TResult? Function()? upcomingAppointmentsFetched,
    TResult? Function()? departmentsFetched,
    TResult? Function()? doctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(String query)? doctorSearched,
    TResult? Function()? pharmaciesFetched,
  }) {
    return allDoctorsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allListsFetched,
    TResult Function()? notificationsCountFetched,
    TResult Function()? upcomingAppointmentsFetched,
    TResult Function()? departmentsFetched,
    TResult Function()? doctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(String query)? doctorSearched,
    TResult Function()? pharmaciesFetched,
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
    required TResult Function(AllListsFetched value) allListsFetched,
    required TResult Function(NotificationCountFetched value)
    notificationsCountFetched,
    required TResult Function(UpcomingAppointmentsFetched value)
    upcomingAppointmentsFetched,
    required TResult Function(DepartmentsFetched value) departmentsFetched,
    required TResult Function(DoctorsFetched value) doctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSearched value) doctorSearched,
    required TResult Function(PharmaciesFetched value) pharmaciesFetched,
  }) {
    return allDoctorsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllListsFetched value)? allListsFetched,
    TResult? Function(NotificationCountFetched value)?
    notificationsCountFetched,
    TResult? Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult? Function(DepartmentsFetched value)? departmentsFetched,
    TResult? Function(DoctorsFetched value)? doctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSearched value)? doctorSearched,
    TResult? Function(PharmaciesFetched value)? pharmaciesFetched,
  }) {
    return allDoctorsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllListsFetched value)? allListsFetched,
    TResult Function(NotificationCountFetched value)? notificationsCountFetched,
    TResult Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult Function(DepartmentsFetched value)? departmentsFetched,
    TResult Function(DoctorsFetched value)? doctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSearched value)? doctorSearched,
    TResult Function(PharmaciesFetched value)? pharmaciesFetched,
    required TResult orElse(),
  }) {
    if (allDoctorsFetched != null) {
      return allDoctorsFetched(this);
    }
    return orElse();
  }
}

abstract class AllDoctorsFetched implements HomeEvent {
  const factory AllDoctorsFetched() = _$AllDoctorsFetchedImpl;
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
    extends _$HomeEventCopyWithImpl<$Res, _$DoctorSearchedImpl>
    implements _$$DoctorSearchedImplCopyWith<$Res> {
  __$$DoctorSearchedImplCopyWithImpl(
    _$DoctorSearchedImpl _value,
    $Res Function(_$DoctorSearchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$DoctorSearchedImpl(
        null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$DoctorSearchedImpl
    with DiagnosticableTreeMixin
    implements DoctorSearched {
  const _$DoctorSearchedImpl(this.query);

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.doctorSearched(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.doctorSearched'))
      ..add(DiagnosticsProperty('query', query));
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

  /// Create a copy of HomeEvent
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
    required TResult Function() allListsFetched,
    required TResult Function() notificationsCountFetched,
    required TResult Function() upcomingAppointmentsFetched,
    required TResult Function() departmentsFetched,
    required TResult Function() doctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(String query) doctorSearched,
    required TResult Function() pharmaciesFetched,
  }) {
    return doctorSearched(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allListsFetched,
    TResult? Function()? notificationsCountFetched,
    TResult? Function()? upcomingAppointmentsFetched,
    TResult? Function()? departmentsFetched,
    TResult? Function()? doctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(String query)? doctorSearched,
    TResult? Function()? pharmaciesFetched,
  }) {
    return doctorSearched?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allListsFetched,
    TResult Function()? notificationsCountFetched,
    TResult Function()? upcomingAppointmentsFetched,
    TResult Function()? departmentsFetched,
    TResult Function()? doctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(String query)? doctorSearched,
    TResult Function()? pharmaciesFetched,
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
    required TResult Function(AllListsFetched value) allListsFetched,
    required TResult Function(NotificationCountFetched value)
    notificationsCountFetched,
    required TResult Function(UpcomingAppointmentsFetched value)
    upcomingAppointmentsFetched,
    required TResult Function(DepartmentsFetched value) departmentsFetched,
    required TResult Function(DoctorsFetched value) doctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSearched value) doctorSearched,
    required TResult Function(PharmaciesFetched value) pharmaciesFetched,
  }) {
    return doctorSearched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllListsFetched value)? allListsFetched,
    TResult? Function(NotificationCountFetched value)?
    notificationsCountFetched,
    TResult? Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult? Function(DepartmentsFetched value)? departmentsFetched,
    TResult? Function(DoctorsFetched value)? doctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSearched value)? doctorSearched,
    TResult? Function(PharmaciesFetched value)? pharmaciesFetched,
  }) {
    return doctorSearched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllListsFetched value)? allListsFetched,
    TResult Function(NotificationCountFetched value)? notificationsCountFetched,
    TResult Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult Function(DepartmentsFetched value)? departmentsFetched,
    TResult Function(DoctorsFetched value)? doctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSearched value)? doctorSearched,
    TResult Function(PharmaciesFetched value)? pharmaciesFetched,
    required TResult orElse(),
  }) {
    if (doctorSearched != null) {
      return doctorSearched(this);
    }
    return orElse();
  }
}

abstract class DoctorSearched implements HomeEvent {
  const factory DoctorSearched(final String query) = _$DoctorSearchedImpl;

  String get query;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorSearchedImplCopyWith<_$DoctorSearchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PharmaciesFetchedImplCopyWith<$Res> {
  factory _$$PharmaciesFetchedImplCopyWith(
    _$PharmaciesFetchedImpl value,
    $Res Function(_$PharmaciesFetchedImpl) then,
  ) = __$$PharmaciesFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PharmaciesFetchedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$PharmaciesFetchedImpl>
    implements _$$PharmaciesFetchedImplCopyWith<$Res> {
  __$$PharmaciesFetchedImplCopyWithImpl(
    _$PharmaciesFetchedImpl _value,
    $Res Function(_$PharmaciesFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PharmaciesFetchedImpl
    with DiagnosticableTreeMixin
    implements PharmaciesFetched {
  const _$PharmaciesFetchedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.pharmaciesFetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeEvent.pharmaciesFetched'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PharmaciesFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allListsFetched,
    required TResult Function() notificationsCountFetched,
    required TResult Function() upcomingAppointmentsFetched,
    required TResult Function() departmentsFetched,
    required TResult Function() doctorsFetched,
    required TResult Function() allDoctorsFetched,
    required TResult Function(String query) doctorSearched,
    required TResult Function() pharmaciesFetched,
  }) {
    return pharmaciesFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allListsFetched,
    TResult? Function()? notificationsCountFetched,
    TResult? Function()? upcomingAppointmentsFetched,
    TResult? Function()? departmentsFetched,
    TResult? Function()? doctorsFetched,
    TResult? Function()? allDoctorsFetched,
    TResult? Function(String query)? doctorSearched,
    TResult? Function()? pharmaciesFetched,
  }) {
    return pharmaciesFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allListsFetched,
    TResult Function()? notificationsCountFetched,
    TResult Function()? upcomingAppointmentsFetched,
    TResult Function()? departmentsFetched,
    TResult Function()? doctorsFetched,
    TResult Function()? allDoctorsFetched,
    TResult Function(String query)? doctorSearched,
    TResult Function()? pharmaciesFetched,
    required TResult orElse(),
  }) {
    if (pharmaciesFetched != null) {
      return pharmaciesFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllListsFetched value) allListsFetched,
    required TResult Function(NotificationCountFetched value)
    notificationsCountFetched,
    required TResult Function(UpcomingAppointmentsFetched value)
    upcomingAppointmentsFetched,
    required TResult Function(DepartmentsFetched value) departmentsFetched,
    required TResult Function(DoctorsFetched value) doctorsFetched,
    required TResult Function(AllDoctorsFetched value) allDoctorsFetched,
    required TResult Function(DoctorSearched value) doctorSearched,
    required TResult Function(PharmaciesFetched value) pharmaciesFetched,
  }) {
    return pharmaciesFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllListsFetched value)? allListsFetched,
    TResult? Function(NotificationCountFetched value)?
    notificationsCountFetched,
    TResult? Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult? Function(DepartmentsFetched value)? departmentsFetched,
    TResult? Function(DoctorsFetched value)? doctorsFetched,
    TResult? Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult? Function(DoctorSearched value)? doctorSearched,
    TResult? Function(PharmaciesFetched value)? pharmaciesFetched,
  }) {
    return pharmaciesFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllListsFetched value)? allListsFetched,
    TResult Function(NotificationCountFetched value)? notificationsCountFetched,
    TResult Function(UpcomingAppointmentsFetched value)?
    upcomingAppointmentsFetched,
    TResult Function(DepartmentsFetched value)? departmentsFetched,
    TResult Function(DoctorsFetched value)? doctorsFetched,
    TResult Function(AllDoctorsFetched value)? allDoctorsFetched,
    TResult Function(DoctorSearched value)? doctorSearched,
    TResult Function(PharmaciesFetched value)? pharmaciesFetched,
    required TResult orElse(),
  }) {
    if (pharmaciesFetched != null) {
      return pharmaciesFetched(this);
    }
    return orElse();
  }
}

abstract class PharmaciesFetched implements HomeEvent {
  const factory PharmaciesFetched() = _$PharmaciesFetchedImpl;
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
  List<DoctorModel> get doctorsSearchList => throw _privateConstructorUsedError;
  DataStatus get doctorsearchListStatus => throw _privateConstructorUsedError;
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
    List<DoctorModel> doctorsSearchList,
    DataStatus doctorsearchListStatus,
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
    Object? doctorsSearchList = null,
    Object? doctorsearchListStatus = null,
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
            doctorsSearchList:
                null == doctorsSearchList
                    ? _value.doctorsSearchList
                    : doctorsSearchList // ignore: cast_nullable_to_non_nullable
                        as List<DoctorModel>,
            doctorsearchListStatus:
                null == doctorsearchListStatus
                    ? _value.doctorsearchListStatus
                    : doctorsearchListStatus // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
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
    List<DoctorModel> doctorsSearchList,
    DataStatus doctorsearchListStatus,
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
    Object? doctorsSearchList = null,
    Object? doctorsearchListStatus = null,
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
        doctorsSearchList:
            null == doctorsSearchList
                ? _value._doctorsSearchList
                : doctorsSearchList // ignore: cast_nullable_to_non_nullable
                    as List<DoctorModel>,
        doctorsearchListStatus:
            null == doctorsearchListStatus
                ? _value.doctorsearchListStatus
                : doctorsearchListStatus // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
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
    required final List<DoctorModel> doctorsSearchList,
    required this.doctorsearchListStatus,
    required this.doctorsListStatus,
    required final List<PharmacyModel> pharmaciesList,
    required this.pharmaciesListStatus,
    required this.notificationCount,
  }) : _upcomingAppointmentsList = upcomingAppointmentsList,
       _departmentsList = departmentsList,
       _doctorsList = doctorsList,
       _doctorsSearchList = doctorsSearchList,
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

  final List<DoctorModel> _doctorsSearchList;
  @override
  List<DoctorModel> get doctorsSearchList {
    if (_doctorsSearchList is EqualUnmodifiableListView)
      return _doctorsSearchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctorsSearchList);
  }

  @override
  final DataStatus doctorsearchListStatus;
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
    return 'HomeState(status: $status, message: $message, upcomingAppointmentsList: $upcomingAppointmentsList, upcomingAppointmentsListStatus: $upcomingAppointmentsListStatus, departmentsList: $departmentsList, departmentsListStatus: $departmentsListStatus, doctorsList: $doctorsList, doctorsSearchList: $doctorsSearchList, doctorsearchListStatus: $doctorsearchListStatus, doctorsListStatus: $doctorsListStatus, pharmaciesList: $pharmaciesList, pharmaciesListStatus: $pharmaciesListStatus, notificationCount: $notificationCount)';
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
      ..add(DiagnosticsProperty('doctorsSearchList', doctorsSearchList))
      ..add(
        DiagnosticsProperty('doctorsearchListStatus', doctorsearchListStatus),
      )
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
            const DeepCollectionEquality().equals(
              other._doctorsSearchList,
              _doctorsSearchList,
            ) &&
            (identical(other.doctorsearchListStatus, doctorsearchListStatus) ||
                other.doctorsearchListStatus == doctorsearchListStatus) &&
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
    const DeepCollectionEquality().hash(_doctorsSearchList),
    doctorsearchListStatus,
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
    required final List<DoctorModel> doctorsSearchList,
    required final DataStatus doctorsearchListStatus,
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
  List<DoctorModel> get doctorsSearchList;
  @override
  DataStatus get doctorsearchListStatus;
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
