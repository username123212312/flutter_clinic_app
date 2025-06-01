// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppointmentDetailsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppointmentDetailsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppointmentDetailsEvent()';
  }
}

/// @nodoc
class $AppointmentDetailsEventCopyWith<$Res> {
  $AppointmentDetailsEventCopyWith(
      AppointmentDetailsEvent _, $Res Function(AppointmentDetailsEvent) __);
}

/// @nodoc

class AppointmentFetched implements AppointmentDetailsEvent {
  const AppointmentFetched();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppointmentFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppointmentDetailsEvent.appointmentFetched()';
  }
}

/// @nodoc

class PrescriptionDownloaded implements AppointmentDetailsEvent {
  const PrescriptionDownloaded({required this.prescriptionId});

  final int prescriptionId;

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PrescriptionDownloadedCopyWith<PrescriptionDownloaded> get copyWith =>
      _$PrescriptionDownloadedCopyWithImpl<PrescriptionDownloaded>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PrescriptionDownloaded &&
            (identical(other.prescriptionId, prescriptionId) ||
                other.prescriptionId == prescriptionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prescriptionId);

  @override
  String toString() {
    return 'AppointmentDetailsEvent.prescriptionDownloaded(prescriptionId: $prescriptionId)';
  }
}

/// @nodoc
abstract mixin class $PrescriptionDownloadedCopyWith<$Res>
    implements $AppointmentDetailsEventCopyWith<$Res> {
  factory $PrescriptionDownloadedCopyWith(PrescriptionDownloaded value,
          $Res Function(PrescriptionDownloaded) _then) =
      _$PrescriptionDownloadedCopyWithImpl;
  @useResult
  $Res call({int prescriptionId});
}

/// @nodoc
class _$PrescriptionDownloadedCopyWithImpl<$Res>
    implements $PrescriptionDownloadedCopyWith<$Res> {
  _$PrescriptionDownloadedCopyWithImpl(this._self, this._then);

  final PrescriptionDownloaded _self;
  final $Res Function(PrescriptionDownloaded) _then;

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? prescriptionId = null,
  }) {
    return _then(PrescriptionDownloaded(
      prescriptionId: null == prescriptionId
          ? _self.prescriptionId
          : prescriptionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$AppointmentDetailsState {
  AppointmentModel? get appointment;
  MedicalInfoModel? get medicalInfo;
  String? get prescriptionFilePath;
  double? get downloadProgress;
  DataStatus get status;
  String get statusMessage;

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppointmentDetailsStateCopyWith<AppointmentDetailsState> get copyWith =>
      _$AppointmentDetailsStateCopyWithImpl<AppointmentDetailsState>(
          this as AppointmentDetailsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppointmentDetailsState &&
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
  int get hashCode => Object.hash(runtimeType, appointment, medicalInfo,
      prescriptionFilePath, downloadProgress, status, statusMessage);

  @override
  String toString() {
    return 'AppointmentDetailsState(appointment: $appointment, medicalInfo: $medicalInfo, prescriptionFilePath: $prescriptionFilePath, downloadProgress: $downloadProgress, status: $status, statusMessage: $statusMessage)';
  }
}

/// @nodoc
abstract mixin class $AppointmentDetailsStateCopyWith<$Res> {
  factory $AppointmentDetailsStateCopyWith(AppointmentDetailsState value,
          $Res Function(AppointmentDetailsState) _then) =
      _$AppointmentDetailsStateCopyWithImpl;
  @useResult
  $Res call(
      {AppointmentModel? appointment,
      MedicalInfoModel? medicalInfo,
      String? prescriptionFilePath,
      double? downloadProgress,
      DataStatus status,
      String statusMessage});

  $AppointmentModelCopyWith<$Res>? get appointment;
  $MedicalInfoModelCopyWith<$Res>? get medicalInfo;
}

/// @nodoc
class _$AppointmentDetailsStateCopyWithImpl<$Res>
    implements $AppointmentDetailsStateCopyWith<$Res> {
  _$AppointmentDetailsStateCopyWithImpl(this._self, this._then);

  final AppointmentDetailsState _self;
  final $Res Function(AppointmentDetailsState) _then;

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
    return _then(_self.copyWith(
      appointment: freezed == appointment
          ? _self.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentModel?,
      medicalInfo: freezed == medicalInfo
          ? _self.medicalInfo
          : medicalInfo // ignore: cast_nullable_to_non_nullable
              as MedicalInfoModel?,
      prescriptionFilePath: freezed == prescriptionFilePath
          ? _self.prescriptionFilePath
          : prescriptionFilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadProgress: freezed == downloadProgress
          ? _self.downloadProgress
          : downloadProgress // ignore: cast_nullable_to_non_nullable
              as double?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      statusMessage: null == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentModelCopyWith<$Res>? get appointment {
    if (_self.appointment == null) {
      return null;
    }

    return $AppointmentModelCopyWith<$Res>(_self.appointment!, (value) {
      return _then(_self.copyWith(appointment: value));
    });
  }

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicalInfoModelCopyWith<$Res>? get medicalInfo {
    if (_self.medicalInfo == null) {
      return null;
    }

    return $MedicalInfoModelCopyWith<$Res>(_self.medicalInfo!, (value) {
      return _then(_self.copyWith(medicalInfo: value));
    });
  }
}

/// @nodoc

class _AppointmentDetailsState implements AppointmentDetailsState {
  const _AppointmentDetailsState(
      {required this.appointment,
      this.medicalInfo,
      this.prescriptionFilePath,
      this.downloadProgress = 0.0,
      required this.status,
      required this.statusMessage});

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

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppointmentDetailsStateCopyWith<_AppointmentDetailsState> get copyWith =>
      __$AppointmentDetailsStateCopyWithImpl<_AppointmentDetailsState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentDetailsState &&
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
  int get hashCode => Object.hash(runtimeType, appointment, medicalInfo,
      prescriptionFilePath, downloadProgress, status, statusMessage);

  @override
  String toString() {
    return 'AppointmentDetailsState(appointment: $appointment, medicalInfo: $medicalInfo, prescriptionFilePath: $prescriptionFilePath, downloadProgress: $downloadProgress, status: $status, statusMessage: $statusMessage)';
  }
}

/// @nodoc
abstract mixin class _$AppointmentDetailsStateCopyWith<$Res>
    implements $AppointmentDetailsStateCopyWith<$Res> {
  factory _$AppointmentDetailsStateCopyWith(_AppointmentDetailsState value,
          $Res Function(_AppointmentDetailsState) _then) =
      __$AppointmentDetailsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AppointmentModel? appointment,
      MedicalInfoModel? medicalInfo,
      String? prescriptionFilePath,
      double? downloadProgress,
      DataStatus status,
      String statusMessage});

  @override
  $AppointmentModelCopyWith<$Res>? get appointment;
  @override
  $MedicalInfoModelCopyWith<$Res>? get medicalInfo;
}

/// @nodoc
class __$AppointmentDetailsStateCopyWithImpl<$Res>
    implements _$AppointmentDetailsStateCopyWith<$Res> {
  __$AppointmentDetailsStateCopyWithImpl(this._self, this._then);

  final _AppointmentDetailsState _self;
  final $Res Function(_AppointmentDetailsState) _then;

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? appointment = freezed,
    Object? medicalInfo = freezed,
    Object? prescriptionFilePath = freezed,
    Object? downloadProgress = freezed,
    Object? status = null,
    Object? statusMessage = null,
  }) {
    return _then(_AppointmentDetailsState(
      appointment: freezed == appointment
          ? _self.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentModel?,
      medicalInfo: freezed == medicalInfo
          ? _self.medicalInfo
          : medicalInfo // ignore: cast_nullable_to_non_nullable
              as MedicalInfoModel?,
      prescriptionFilePath: freezed == prescriptionFilePath
          ? _self.prescriptionFilePath
          : prescriptionFilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadProgress: freezed == downloadProgress
          ? _self.downloadProgress
          : downloadProgress // ignore: cast_nullable_to_non_nullable
              as double?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      statusMessage: null == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentModelCopyWith<$Res>? get appointment {
    if (_self.appointment == null) {
      return null;
    }

    return $AppointmentModelCopyWith<$Res>(_self.appointment!, (value) {
      return _then(_self.copyWith(appointment: value));
    });
  }

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicalInfoModelCopyWith<$Res>? get medicalInfo {
    if (_self.medicalInfo == null) {
      return null;
    }

    return $MedicalInfoModelCopyWith<$Res>(_self.medicalInfo!, (value) {
      return _then(_self.copyWith(medicalInfo: value));
    });
  }
}

// dart format on
