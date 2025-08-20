// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_patients_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DoctorPatientsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) patientsFetched,
    required TResult Function() notificationsFetched,
    required TResult Function(String query) patientsSearched,
    required TResult Function() loadData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? patientsFetched,
    TResult? Function()? notificationsFetched,
    TResult? Function(String query)? patientsSearched,
    TResult? Function()? loadData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? patientsFetched,
    TResult Function()? notificationsFetched,
    TResult Function(String query)? patientsSearched,
    TResult Function()? loadData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PatientsFetched value) patientsFetched,
    required TResult Function(NotificationsFetched value) notificationsFetched,
    required TResult Function(PatientsSearched value) patientsSearched,
    required TResult Function(LoadData value) loadData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PatientsFetched value)? patientsFetched,
    TResult? Function(NotificationsFetched value)? notificationsFetched,
    TResult? Function(PatientsSearched value)? patientsSearched,
    TResult? Function(LoadData value)? loadData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientsFetched value)? patientsFetched,
    TResult Function(NotificationsFetched value)? notificationsFetched,
    TResult Function(PatientsSearched value)? patientsSearched,
    TResult Function(LoadData value)? loadData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorPatientsEventCopyWith<$Res> {
  factory $DoctorPatientsEventCopyWith(
    DoctorPatientsEvent value,
    $Res Function(DoctorPatientsEvent) then,
  ) = _$DoctorPatientsEventCopyWithImpl<$Res, DoctorPatientsEvent>;
}

/// @nodoc
class _$DoctorPatientsEventCopyWithImpl<$Res, $Val extends DoctorPatientsEvent>
    implements $DoctorPatientsEventCopyWith<$Res> {
  _$DoctorPatientsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorPatientsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PatientsFetchedImplCopyWith<$Res> {
  factory _$$PatientsFetchedImplCopyWith(
    _$PatientsFetchedImpl value,
    $Res Function(_$PatientsFetchedImpl) then,
  ) = __$$PatientsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class __$$PatientsFetchedImplCopyWithImpl<$Res>
    extends _$DoctorPatientsEventCopyWithImpl<$Res, _$PatientsFetchedImpl>
    implements _$$PatientsFetchedImplCopyWith<$Res> {
  __$$PatientsFetchedImplCopyWithImpl(
    _$PatientsFetchedImpl _value,
    $Res Function(_$PatientsFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorPatientsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isRefresh = null}) {
    return _then(
      _$PatientsFetchedImpl(
        isRefresh:
            null == isRefresh
                ? _value.isRefresh
                : isRefresh // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$PatientsFetchedImpl implements PatientsFetched {
  const _$PatientsFetchedImpl({this.isRefresh = false});

  @override
  @JsonKey()
  final bool isRefresh;

  @override
  String toString() {
    return 'DoctorPatientsEvent.patientsFetched(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientsFetchedImpl &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh);

  /// Create a copy of DoctorPatientsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientsFetchedImplCopyWith<_$PatientsFetchedImpl> get copyWith =>
      __$$PatientsFetchedImplCopyWithImpl<_$PatientsFetchedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) patientsFetched,
    required TResult Function() notificationsFetched,
    required TResult Function(String query) patientsSearched,
    required TResult Function() loadData,
  }) {
    return patientsFetched(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? patientsFetched,
    TResult? Function()? notificationsFetched,
    TResult? Function(String query)? patientsSearched,
    TResult? Function()? loadData,
  }) {
    return patientsFetched?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? patientsFetched,
    TResult Function()? notificationsFetched,
    TResult Function(String query)? patientsSearched,
    TResult Function()? loadData,
    required TResult orElse(),
  }) {
    if (patientsFetched != null) {
      return patientsFetched(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PatientsFetched value) patientsFetched,
    required TResult Function(NotificationsFetched value) notificationsFetched,
    required TResult Function(PatientsSearched value) patientsSearched,
    required TResult Function(LoadData value) loadData,
  }) {
    return patientsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PatientsFetched value)? patientsFetched,
    TResult? Function(NotificationsFetched value)? notificationsFetched,
    TResult? Function(PatientsSearched value)? patientsSearched,
    TResult? Function(LoadData value)? loadData,
  }) {
    return patientsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientsFetched value)? patientsFetched,
    TResult Function(NotificationsFetched value)? notificationsFetched,
    TResult Function(PatientsSearched value)? patientsSearched,
    TResult Function(LoadData value)? loadData,
    required TResult orElse(),
  }) {
    if (patientsFetched != null) {
      return patientsFetched(this);
    }
    return orElse();
  }
}

abstract class PatientsFetched implements DoctorPatientsEvent {
  const factory PatientsFetched({final bool isRefresh}) = _$PatientsFetchedImpl;

  bool get isRefresh;

  /// Create a copy of DoctorPatientsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientsFetchedImplCopyWith<_$PatientsFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationsFetchedImplCopyWith<$Res> {
  factory _$$NotificationsFetchedImplCopyWith(
    _$NotificationsFetchedImpl value,
    $Res Function(_$NotificationsFetchedImpl) then,
  ) = __$$NotificationsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationsFetchedImplCopyWithImpl<$Res>
    extends _$DoctorPatientsEventCopyWithImpl<$Res, _$NotificationsFetchedImpl>
    implements _$$NotificationsFetchedImplCopyWith<$Res> {
  __$$NotificationsFetchedImplCopyWithImpl(
    _$NotificationsFetchedImpl _value,
    $Res Function(_$NotificationsFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorPatientsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationsFetchedImpl implements NotificationsFetched {
  const _$NotificationsFetchedImpl();

  @override
  String toString() {
    return 'DoctorPatientsEvent.notificationsFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) patientsFetched,
    required TResult Function() notificationsFetched,
    required TResult Function(String query) patientsSearched,
    required TResult Function() loadData,
  }) {
    return notificationsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? patientsFetched,
    TResult? Function()? notificationsFetched,
    TResult? Function(String query)? patientsSearched,
    TResult? Function()? loadData,
  }) {
    return notificationsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? patientsFetched,
    TResult Function()? notificationsFetched,
    TResult Function(String query)? patientsSearched,
    TResult Function()? loadData,
    required TResult orElse(),
  }) {
    if (notificationsFetched != null) {
      return notificationsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PatientsFetched value) patientsFetched,
    required TResult Function(NotificationsFetched value) notificationsFetched,
    required TResult Function(PatientsSearched value) patientsSearched,
    required TResult Function(LoadData value) loadData,
  }) {
    return notificationsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PatientsFetched value)? patientsFetched,
    TResult? Function(NotificationsFetched value)? notificationsFetched,
    TResult? Function(PatientsSearched value)? patientsSearched,
    TResult? Function(LoadData value)? loadData,
  }) {
    return notificationsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientsFetched value)? patientsFetched,
    TResult Function(NotificationsFetched value)? notificationsFetched,
    TResult Function(PatientsSearched value)? patientsSearched,
    TResult Function(LoadData value)? loadData,
    required TResult orElse(),
  }) {
    if (notificationsFetched != null) {
      return notificationsFetched(this);
    }
    return orElse();
  }
}

abstract class NotificationsFetched implements DoctorPatientsEvent {
  const factory NotificationsFetched() = _$NotificationsFetchedImpl;
}

/// @nodoc
abstract class _$$PatientsSearchedImplCopyWith<$Res> {
  factory _$$PatientsSearchedImplCopyWith(
    _$PatientsSearchedImpl value,
    $Res Function(_$PatientsSearchedImpl) then,
  ) = __$$PatientsSearchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$PatientsSearchedImplCopyWithImpl<$Res>
    extends _$DoctorPatientsEventCopyWithImpl<$Res, _$PatientsSearchedImpl>
    implements _$$PatientsSearchedImplCopyWith<$Res> {
  __$$PatientsSearchedImplCopyWithImpl(
    _$PatientsSearchedImpl _value,
    $Res Function(_$PatientsSearchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorPatientsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$PatientsSearchedImpl(
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

class _$PatientsSearchedImpl implements PatientsSearched {
  const _$PatientsSearchedImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'DoctorPatientsEvent.patientsSearched(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientsSearchedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of DoctorPatientsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientsSearchedImplCopyWith<_$PatientsSearchedImpl> get copyWith =>
      __$$PatientsSearchedImplCopyWithImpl<_$PatientsSearchedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) patientsFetched,
    required TResult Function() notificationsFetched,
    required TResult Function(String query) patientsSearched,
    required TResult Function() loadData,
  }) {
    return patientsSearched(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? patientsFetched,
    TResult? Function()? notificationsFetched,
    TResult? Function(String query)? patientsSearched,
    TResult? Function()? loadData,
  }) {
    return patientsSearched?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? patientsFetched,
    TResult Function()? notificationsFetched,
    TResult Function(String query)? patientsSearched,
    TResult Function()? loadData,
    required TResult orElse(),
  }) {
    if (patientsSearched != null) {
      return patientsSearched(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PatientsFetched value) patientsFetched,
    required TResult Function(NotificationsFetched value) notificationsFetched,
    required TResult Function(PatientsSearched value) patientsSearched,
    required TResult Function(LoadData value) loadData,
  }) {
    return patientsSearched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PatientsFetched value)? patientsFetched,
    TResult? Function(NotificationsFetched value)? notificationsFetched,
    TResult? Function(PatientsSearched value)? patientsSearched,
    TResult? Function(LoadData value)? loadData,
  }) {
    return patientsSearched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientsFetched value)? patientsFetched,
    TResult Function(NotificationsFetched value)? notificationsFetched,
    TResult Function(PatientsSearched value)? patientsSearched,
    TResult Function(LoadData value)? loadData,
    required TResult orElse(),
  }) {
    if (patientsSearched != null) {
      return patientsSearched(this);
    }
    return orElse();
  }
}

abstract class PatientsSearched implements DoctorPatientsEvent {
  const factory PatientsSearched({required final String query}) =
      _$PatientsSearchedImpl;

  String get query;

  /// Create a copy of DoctorPatientsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientsSearchedImplCopyWith<_$PatientsSearchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadDataImplCopyWith<$Res> {
  factory _$$LoadDataImplCopyWith(
    _$LoadDataImpl value,
    $Res Function(_$LoadDataImpl) then,
  ) = __$$LoadDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDataImplCopyWithImpl<$Res>
    extends _$DoctorPatientsEventCopyWithImpl<$Res, _$LoadDataImpl>
    implements _$$LoadDataImplCopyWith<$Res> {
  __$$LoadDataImplCopyWithImpl(
    _$LoadDataImpl _value,
    $Res Function(_$LoadDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorPatientsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadDataImpl implements LoadData {
  const _$LoadDataImpl();

  @override
  String toString() {
    return 'DoctorPatientsEvent.loadData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) patientsFetched,
    required TResult Function() notificationsFetched,
    required TResult Function(String query) patientsSearched,
    required TResult Function() loadData,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? patientsFetched,
    TResult? Function()? notificationsFetched,
    TResult? Function(String query)? patientsSearched,
    TResult? Function()? loadData,
  }) {
    return loadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? patientsFetched,
    TResult Function()? notificationsFetched,
    TResult Function(String query)? patientsSearched,
    TResult Function()? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PatientsFetched value) patientsFetched,
    required TResult Function(NotificationsFetched value) notificationsFetched,
    required TResult Function(PatientsSearched value) patientsSearched,
    required TResult Function(LoadData value) loadData,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PatientsFetched value)? patientsFetched,
    TResult? Function(NotificationsFetched value)? notificationsFetched,
    TResult? Function(PatientsSearched value)? patientsSearched,
    TResult? Function(LoadData value)? loadData,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientsFetched value)? patientsFetched,
    TResult Function(NotificationsFetched value)? notificationsFetched,
    TResult Function(PatientsSearched value)? patientsSearched,
    TResult Function(LoadData value)? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class LoadData implements DoctorPatientsEvent {
  const factory LoadData() = _$LoadDataImpl;
}

/// @nodoc
mixin _$DoctorPatientsState {
  bool get hasMore => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<UserModel> get patients => throw _privateConstructorUsedError;
  int get notificationsCount => throw _privateConstructorUsedError;

  /// Create a copy of DoctorPatientsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorPatientsStateCopyWith<DoctorPatientsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorPatientsStateCopyWith<$Res> {
  factory $DoctorPatientsStateCopyWith(
    DoctorPatientsState value,
    $Res Function(DoctorPatientsState) then,
  ) = _$DoctorPatientsStateCopyWithImpl<$Res, DoctorPatientsState>;
  @useResult
  $Res call({
    bool hasMore,
    int currentPage,
    DataStatus status,
    String message,
    List<UserModel> patients,
    int notificationsCount,
  });
}

/// @nodoc
class _$DoctorPatientsStateCopyWithImpl<$Res, $Val extends DoctorPatientsState>
    implements $DoctorPatientsStateCopyWith<$Res> {
  _$DoctorPatientsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorPatientsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasMore = null,
    Object? currentPage = null,
    Object? status = null,
    Object? message = null,
    Object? patients = null,
    Object? notificationsCount = null,
  }) {
    return _then(
      _value.copyWith(
            hasMore:
                null == hasMore
                    ? _value.hasMore
                    : hasMore // ignore: cast_nullable_to_non_nullable
                        as bool,
            currentPage:
                null == currentPage
                    ? _value.currentPage
                    : currentPage // ignore: cast_nullable_to_non_nullable
                        as int,
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
            patients:
                null == patients
                    ? _value.patients
                    : patients // ignore: cast_nullable_to_non_nullable
                        as List<UserModel>,
            notificationsCount:
                null == notificationsCount
                    ? _value.notificationsCount
                    : notificationsCount // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DoctorPatientsStateImplCopyWith<$Res>
    implements $DoctorPatientsStateCopyWith<$Res> {
  factory _$$DoctorPatientsStateImplCopyWith(
    _$DoctorPatientsStateImpl value,
    $Res Function(_$DoctorPatientsStateImpl) then,
  ) = __$$DoctorPatientsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool hasMore,
    int currentPage,
    DataStatus status,
    String message,
    List<UserModel> patients,
    int notificationsCount,
  });
}

/// @nodoc
class __$$DoctorPatientsStateImplCopyWithImpl<$Res>
    extends _$DoctorPatientsStateCopyWithImpl<$Res, _$DoctorPatientsStateImpl>
    implements _$$DoctorPatientsStateImplCopyWith<$Res> {
  __$$DoctorPatientsStateImplCopyWithImpl(
    _$DoctorPatientsStateImpl _value,
    $Res Function(_$DoctorPatientsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorPatientsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasMore = null,
    Object? currentPage = null,
    Object? status = null,
    Object? message = null,
    Object? patients = null,
    Object? notificationsCount = null,
  }) {
    return _then(
      _$DoctorPatientsStateImpl(
        hasMore:
            null == hasMore
                ? _value.hasMore
                : hasMore // ignore: cast_nullable_to_non_nullable
                    as bool,
        currentPage:
            null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                    as int,
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
        patients:
            null == patients
                ? _value._patients
                : patients // ignore: cast_nullable_to_non_nullable
                    as List<UserModel>,
        notificationsCount:
            null == notificationsCount
                ? _value.notificationsCount
                : notificationsCount // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$DoctorPatientsStateImpl implements _DoctorPatientsState {
  const _$DoctorPatientsStateImpl({
    required this.hasMore,
    required this.currentPage,
    required this.status,
    required this.message,
    required final List<UserModel> patients,
    required this.notificationsCount,
  }) : _patients = patients;

  @override
  final bool hasMore;
  @override
  final int currentPage;
  @override
  final DataStatus status;
  @override
  final String message;
  final List<UserModel> _patients;
  @override
  List<UserModel> get patients {
    if (_patients is EqualUnmodifiableListView) return _patients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patients);
  }

  @override
  final int notificationsCount;

  @override
  String toString() {
    return 'DoctorPatientsState(hasMore: $hasMore, currentPage: $currentPage, status: $status, message: $message, patients: $patients, notificationsCount: $notificationsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorPatientsStateImpl &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._patients, _patients) &&
            (identical(other.notificationsCount, notificationsCount) ||
                other.notificationsCount == notificationsCount));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    hasMore,
    currentPage,
    status,
    message,
    const DeepCollectionEquality().hash(_patients),
    notificationsCount,
  );

  /// Create a copy of DoctorPatientsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorPatientsStateImplCopyWith<_$DoctorPatientsStateImpl> get copyWith =>
      __$$DoctorPatientsStateImplCopyWithImpl<_$DoctorPatientsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DoctorPatientsState implements DoctorPatientsState {
  const factory _DoctorPatientsState({
    required final bool hasMore,
    required final int currentPage,
    required final DataStatus status,
    required final String message,
    required final List<UserModel> patients,
    required final int notificationsCount,
  }) = _$DoctorPatientsStateImpl;

  @override
  bool get hasMore;
  @override
  int get currentPage;
  @override
  DataStatus get status;
  @override
  String get message;
  @override
  List<UserModel> get patients;
  @override
  int get notificationsCount;

  /// Create a copy of DoctorPatientsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorPatientsStateImplCopyWith<_$DoctorPatientsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
