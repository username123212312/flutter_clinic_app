// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppointmentDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appointmentFetched,
    required TResult Function(int prescriptionId) prescriptionDownloaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appointmentFetched,
    TResult? Function(int prescriptionId)? prescriptionDownloaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appointmentFetched,
    TResult Function(int prescriptionId)? prescriptionDownloaded,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentFetched value) appointmentFetched,
    required TResult Function(PrescriptionDownloaded value)
    prescriptionDownloaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentFetched value)? appointmentFetched,
    TResult? Function(PrescriptionDownloaded value)? prescriptionDownloaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentFetched value)? appointmentFetched,
    TResult Function(PrescriptionDownloaded value)? prescriptionDownloaded,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDetailsEventCopyWith<$Res> {
  factory $AppointmentDetailsEventCopyWith(
    AppointmentDetailsEvent value,
    $Res Function(AppointmentDetailsEvent) then,
  ) = _$AppointmentDetailsEventCopyWithImpl<$Res, AppointmentDetailsEvent>;
}

/// @nodoc
class _$AppointmentDetailsEventCopyWithImpl<
  $Res,
  $Val extends AppointmentDetailsEvent
>
    implements $AppointmentDetailsEventCopyWith<$Res> {
  _$AppointmentDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppointmentFetchedImplCopyWith<$Res> {
  factory _$$AppointmentFetchedImplCopyWith(
    _$AppointmentFetchedImpl value,
    $Res Function(_$AppointmentFetchedImpl) then,
  ) = __$$AppointmentFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppointmentFetchedImplCopyWithImpl<$Res>
    extends
        _$AppointmentDetailsEventCopyWithImpl<$Res, _$AppointmentFetchedImpl>
    implements _$$AppointmentFetchedImplCopyWith<$Res> {
  __$$AppointmentFetchedImplCopyWithImpl(
    _$AppointmentFetchedImpl _value,
    $Res Function(_$AppointmentFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppointmentFetchedImpl implements AppointmentFetched {
  const _$AppointmentFetchedImpl();

  @override
  String toString() {
    return 'AppointmentDetailsEvent.appointmentFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppointmentFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appointmentFetched,
    required TResult Function(int prescriptionId) prescriptionDownloaded,
  }) {
    return appointmentFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appointmentFetched,
    TResult? Function(int prescriptionId)? prescriptionDownloaded,
  }) {
    return appointmentFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appointmentFetched,
    TResult Function(int prescriptionId)? prescriptionDownloaded,
    required TResult orElse(),
  }) {
    if (appointmentFetched != null) {
      return appointmentFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentFetched value) appointmentFetched,
    required TResult Function(PrescriptionDownloaded value)
    prescriptionDownloaded,
  }) {
    return appointmentFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentFetched value)? appointmentFetched,
    TResult? Function(PrescriptionDownloaded value)? prescriptionDownloaded,
  }) {
    return appointmentFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentFetched value)? appointmentFetched,
    TResult Function(PrescriptionDownloaded value)? prescriptionDownloaded,
    required TResult orElse(),
  }) {
    if (appointmentFetched != null) {
      return appointmentFetched(this);
    }
    return orElse();
  }
}

abstract class AppointmentFetched implements AppointmentDetailsEvent {
  const factory AppointmentFetched() = _$AppointmentFetchedImpl;
}

/// @nodoc
abstract class _$$PrescriptionDownloadedImplCopyWith<$Res> {
  factory _$$PrescriptionDownloadedImplCopyWith(
    _$PrescriptionDownloadedImpl value,
    $Res Function(_$PrescriptionDownloadedImpl) then,
  ) = __$$PrescriptionDownloadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int prescriptionId});
}

/// @nodoc
class __$$PrescriptionDownloadedImplCopyWithImpl<$Res>
    extends
        _$AppointmentDetailsEventCopyWithImpl<
          $Res,
          _$PrescriptionDownloadedImpl
        >
    implements _$$PrescriptionDownloadedImplCopyWith<$Res> {
  __$$PrescriptionDownloadedImplCopyWithImpl(
    _$PrescriptionDownloadedImpl _value,
    $Res Function(_$PrescriptionDownloadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? prescriptionId = null}) {
    return _then(
      _$PrescriptionDownloadedImpl(
        prescriptionId:
            null == prescriptionId
                ? _value.prescriptionId
                : prescriptionId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$PrescriptionDownloadedImpl implements PrescriptionDownloaded {
  const _$PrescriptionDownloadedImpl({required this.prescriptionId});

  @override
  final int prescriptionId;

  @override
  String toString() {
    return 'AppointmentDetailsEvent.prescriptionDownloaded(prescriptionId: $prescriptionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrescriptionDownloadedImpl &&
            (identical(other.prescriptionId, prescriptionId) ||
                other.prescriptionId == prescriptionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prescriptionId);

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrescriptionDownloadedImplCopyWith<_$PrescriptionDownloadedImpl>
  get copyWith =>
      __$$PrescriptionDownloadedImplCopyWithImpl<_$PrescriptionDownloadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appointmentFetched,
    required TResult Function(int prescriptionId) prescriptionDownloaded,
  }) {
    return prescriptionDownloaded(prescriptionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appointmentFetched,
    TResult? Function(int prescriptionId)? prescriptionDownloaded,
  }) {
    return prescriptionDownloaded?.call(prescriptionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appointmentFetched,
    TResult Function(int prescriptionId)? prescriptionDownloaded,
    required TResult orElse(),
  }) {
    if (prescriptionDownloaded != null) {
      return prescriptionDownloaded(prescriptionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentFetched value) appointmentFetched,
    required TResult Function(PrescriptionDownloaded value)
    prescriptionDownloaded,
  }) {
    return prescriptionDownloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentFetched value)? appointmentFetched,
    TResult? Function(PrescriptionDownloaded value)? prescriptionDownloaded,
  }) {
    return prescriptionDownloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentFetched value)? appointmentFetched,
    TResult Function(PrescriptionDownloaded value)? prescriptionDownloaded,
    required TResult orElse(),
  }) {
    if (prescriptionDownloaded != null) {
      return prescriptionDownloaded(this);
    }
    return orElse();
  }
}

abstract class PrescriptionDownloaded implements AppointmentDetailsEvent {
  const factory PrescriptionDownloaded({required final int prescriptionId}) =
      _$PrescriptionDownloadedImpl;

  int get prescriptionId;

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrescriptionDownloadedImplCopyWith<_$PrescriptionDownloadedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppointmentDetailsState {
  AppointmentModel? get appointment => throw _privateConstructorUsedError;
  MedicalInfoModel? get medicalInfo => throw _privateConstructorUsedError;
  String? get prescriptionFilePath => throw _privateConstructorUsedError;
  double? get downloadProgress => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  String get statusMessage => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentDetailsStateCopyWith<AppointmentDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDetailsStateCopyWith<$Res> {
  factory $AppointmentDetailsStateCopyWith(
    AppointmentDetailsState value,
    $Res Function(AppointmentDetailsState) then,
  ) = _$AppointmentDetailsStateCopyWithImpl<$Res, AppointmentDetailsState>;
  @useResult
  $Res call({
    AppointmentModel? appointment,
    MedicalInfoModel? medicalInfo,
    String? prescriptionFilePath,
    double? downloadProgress,
    DataStatus status,
    String statusMessage,
  });

  $AppointmentModelCopyWith<$Res>? get appointment;
  $MedicalInfoModelCopyWith<$Res>? get medicalInfo;
}

/// @nodoc
class _$AppointmentDetailsStateCopyWithImpl<
  $Res,
  $Val extends AppointmentDetailsState
>
    implements $AppointmentDetailsStateCopyWith<$Res> {
  _$AppointmentDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointment = freezed,
    Object? medicalInfo = freezed,
    Object? prescriptionFilePath = freezed,
    Object? downloadProgress = freezed,
    Object? status = null,
    Object? statusMessage = null,
  }) {
    return _then(
      _value.copyWith(
            appointment:
                freezed == appointment
                    ? _value.appointment
                    : appointment // ignore: cast_nullable_to_non_nullable
                        as AppointmentModel?,
            medicalInfo:
                freezed == medicalInfo
                    ? _value.medicalInfo
                    : medicalInfo // ignore: cast_nullable_to_non_nullable
                        as MedicalInfoModel?,
            prescriptionFilePath:
                freezed == prescriptionFilePath
                    ? _value.prescriptionFilePath
                    : prescriptionFilePath // ignore: cast_nullable_to_non_nullable
                        as String?,
            downloadProgress:
                freezed == downloadProgress
                    ? _value.downloadProgress
                    : downloadProgress // ignore: cast_nullable_to_non_nullable
                        as double?,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            statusMessage:
                null == statusMessage
                    ? _value.statusMessage
                    : statusMessage // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentModelCopyWith<$Res>? get appointment {
    if (_value.appointment == null) {
      return null;
    }

    return $AppointmentModelCopyWith<$Res>(_value.appointment!, (value) {
      return _then(_value.copyWith(appointment: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicalInfoModelCopyWith<$Res>? get medicalInfo {
    if (_value.medicalInfo == null) {
      return null;
    }

    return $MedicalInfoModelCopyWith<$Res>(_value.medicalInfo!, (value) {
      return _then(_value.copyWith(medicalInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentDetailsStateImplCopyWith<$Res>
    implements $AppointmentDetailsStateCopyWith<$Res> {
  factory _$$AppointmentDetailsStateImplCopyWith(
    _$AppointmentDetailsStateImpl value,
    $Res Function(_$AppointmentDetailsStateImpl) then,
  ) = __$$AppointmentDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AppointmentModel? appointment,
    MedicalInfoModel? medicalInfo,
    String? prescriptionFilePath,
    double? downloadProgress,
    DataStatus status,
    String statusMessage,
  });

  @override
  $AppointmentModelCopyWith<$Res>? get appointment;
  @override
  $MedicalInfoModelCopyWith<$Res>? get medicalInfo;
}

/// @nodoc
class __$$AppointmentDetailsStateImplCopyWithImpl<$Res>
    extends
        _$AppointmentDetailsStateCopyWithImpl<
          $Res,
          _$AppointmentDetailsStateImpl
        >
    implements _$$AppointmentDetailsStateImplCopyWith<$Res> {
  __$$AppointmentDetailsStateImplCopyWithImpl(
    _$AppointmentDetailsStateImpl _value,
    $Res Function(_$AppointmentDetailsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointment = freezed,
    Object? medicalInfo = freezed,
    Object? prescriptionFilePath = freezed,
    Object? downloadProgress = freezed,
    Object? status = null,
    Object? statusMessage = null,
  }) {
    return _then(
      _$AppointmentDetailsStateImpl(
        appointment:
            freezed == appointment
                ? _value.appointment
                : appointment // ignore: cast_nullable_to_non_nullable
                    as AppointmentModel?,
        medicalInfo:
            freezed == medicalInfo
                ? _value.medicalInfo
                : medicalInfo // ignore: cast_nullable_to_non_nullable
                    as MedicalInfoModel?,
        prescriptionFilePath:
            freezed == prescriptionFilePath
                ? _value.prescriptionFilePath
                : prescriptionFilePath // ignore: cast_nullable_to_non_nullable
                    as String?,
        downloadProgress:
            freezed == downloadProgress
                ? _value.downloadProgress
                : downloadProgress // ignore: cast_nullable_to_non_nullable
                    as double?,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        statusMessage:
            null == statusMessage
                ? _value.statusMessage
                : statusMessage // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$AppointmentDetailsStateImpl implements _AppointmentDetailsState {
  const _$AppointmentDetailsStateImpl({
    required this.appointment,
    this.medicalInfo,
    this.prescriptionFilePath,
    this.downloadProgress = 0.0,
    required this.status,
    required this.statusMessage,
  });

  @override
  final AppointmentModel? appointment;
  @override
  final MedicalInfoModel? medicalInfo;
  @override
  final String? prescriptionFilePath;
  @override
  @JsonKey()
  final double? downloadProgress;
  @override
  final DataStatus status;
  @override
  final String statusMessage;

  @override
  String toString() {
    return 'AppointmentDetailsState(appointment: $appointment, medicalInfo: $medicalInfo, prescriptionFilePath: $prescriptionFilePath, downloadProgress: $downloadProgress, status: $status, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentDetailsStateImpl &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.medicalInfo, medicalInfo) ||
                other.medicalInfo == medicalInfo) &&
            (identical(other.prescriptionFilePath, prescriptionFilePath) ||
                other.prescriptionFilePath == prescriptionFilePath) &&
            (identical(other.downloadProgress, downloadProgress) ||
                other.downloadProgress == downloadProgress) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    appointment,
    medicalInfo,
    prescriptionFilePath,
    downloadProgress,
    status,
    statusMessage,
  );

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentDetailsStateImplCopyWith<_$AppointmentDetailsStateImpl>
  get copyWith => __$$AppointmentDetailsStateImplCopyWithImpl<
    _$AppointmentDetailsStateImpl
  >(this, _$identity);
}

abstract class _AppointmentDetailsState implements AppointmentDetailsState {
  const factory _AppointmentDetailsState({
    required final AppointmentModel? appointment,
    final MedicalInfoModel? medicalInfo,
    final String? prescriptionFilePath,
    final double? downloadProgress,
    required final DataStatus status,
    required final String statusMessage,
  }) = _$AppointmentDetailsStateImpl;

  @override
  AppointmentModel? get appointment;
  @override
  MedicalInfoModel? get medicalInfo;
  @override
  String? get prescriptionFilePath;
  @override
  double? get downloadProgress;
  @override
  DataStatus get status;
  @override
  String get statusMessage;

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentDetailsStateImplCopyWith<_$AppointmentDetailsStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
