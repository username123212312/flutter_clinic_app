// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_appointment_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DoctorAppointmentDetailsState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  AppointmentModel get appointment => throw _privateConstructorUsedError;
  MedicalInfoModel? get medicalInfo => throw _privateConstructorUsedError;
  String? get prescriptionFilePath => throw _privateConstructorUsedError;
  double? get downloadProgress => throw _privateConstructorUsedError;

  /// Create a copy of DoctorAppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorAppointmentDetailsStateCopyWith<DoctorAppointmentDetailsState>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorAppointmentDetailsStateCopyWith<$Res> {
  factory $DoctorAppointmentDetailsStateCopyWith(
    DoctorAppointmentDetailsState value,
    $Res Function(DoctorAppointmentDetailsState) then,
  ) =
      _$DoctorAppointmentDetailsStateCopyWithImpl<
        $Res,
        DoctorAppointmentDetailsState
      >;
  @useResult
  $Res call({
    DataStatus status,
    String message,
    AppointmentModel appointment,
    MedicalInfoModel? medicalInfo,
    String? prescriptionFilePath,
    double? downloadProgress,
  });

  $AppointmentModelCopyWith<$Res> get appointment;
  $MedicalInfoModelCopyWith<$Res>? get medicalInfo;
}

/// @nodoc
class _$DoctorAppointmentDetailsStateCopyWithImpl<
  $Res,
  $Val extends DoctorAppointmentDetailsState
>
    implements $DoctorAppointmentDetailsStateCopyWith<$Res> {
  _$DoctorAppointmentDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorAppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? appointment = null,
    Object? medicalInfo = freezed,
    Object? prescriptionFilePath = freezed,
    Object? downloadProgress = freezed,
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
            appointment:
                null == appointment
                    ? _value.appointment
                    : appointment // ignore: cast_nullable_to_non_nullable
                        as AppointmentModel,
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
          )
          as $Val,
    );
  }

  /// Create a copy of DoctorAppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentModelCopyWith<$Res> get appointment {
    return $AppointmentModelCopyWith<$Res>(_value.appointment, (value) {
      return _then(_value.copyWith(appointment: value) as $Val);
    });
  }

  /// Create a copy of DoctorAppointmentDetailsState
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
abstract class _$$DoctorAppointmentDetailsStateImplCopyWith<$Res>
    implements $DoctorAppointmentDetailsStateCopyWith<$Res> {
  factory _$$DoctorAppointmentDetailsStateImplCopyWith(
    _$DoctorAppointmentDetailsStateImpl value,
    $Res Function(_$DoctorAppointmentDetailsStateImpl) then,
  ) = __$$DoctorAppointmentDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DataStatus status,
    String message,
    AppointmentModel appointment,
    MedicalInfoModel? medicalInfo,
    String? prescriptionFilePath,
    double? downloadProgress,
  });

  @override
  $AppointmentModelCopyWith<$Res> get appointment;
  @override
  $MedicalInfoModelCopyWith<$Res>? get medicalInfo;
}

/// @nodoc
class __$$DoctorAppointmentDetailsStateImplCopyWithImpl<$Res>
    extends
        _$DoctorAppointmentDetailsStateCopyWithImpl<
          $Res,
          _$DoctorAppointmentDetailsStateImpl
        >
    implements _$$DoctorAppointmentDetailsStateImplCopyWith<$Res> {
  __$$DoctorAppointmentDetailsStateImplCopyWithImpl(
    _$DoctorAppointmentDetailsStateImpl _value,
    $Res Function(_$DoctorAppointmentDetailsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorAppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? appointment = null,
    Object? medicalInfo = freezed,
    Object? prescriptionFilePath = freezed,
    Object? downloadProgress = freezed,
  }) {
    return _then(
      _$DoctorAppointmentDetailsStateImpl(
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
        appointment:
            null == appointment
                ? _value.appointment
                : appointment // ignore: cast_nullable_to_non_nullable
                    as AppointmentModel,
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
      ),
    );
  }
}

/// @nodoc

class _$DoctorAppointmentDetailsStateImpl
    implements _DoctorAppointmentDetailsState {
  const _$DoctorAppointmentDetailsStateImpl({
    required this.status,
    required this.message,
    required this.appointment,
    this.medicalInfo,
    this.prescriptionFilePath,
    this.downloadProgress = 0.0,
  });

  @override
  final DataStatus status;
  @override
  final String message;
  @override
  final AppointmentModel appointment;
  @override
  final MedicalInfoModel? medicalInfo;
  @override
  final String? prescriptionFilePath;
  @override
  @JsonKey()
  final double? downloadProgress;

  @override
  String toString() {
    return 'DoctorAppointmentDetailsState(status: $status, message: $message, appointment: $appointment, medicalInfo: $medicalInfo, prescriptionFilePath: $prescriptionFilePath, downloadProgress: $downloadProgress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorAppointmentDetailsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.medicalInfo, medicalInfo) ||
                other.medicalInfo == medicalInfo) &&
            (identical(other.prescriptionFilePath, prescriptionFilePath) ||
                other.prescriptionFilePath == prescriptionFilePath) &&
            (identical(other.downloadProgress, downloadProgress) ||
                other.downloadProgress == downloadProgress));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    appointment,
    medicalInfo,
    prescriptionFilePath,
    downloadProgress,
  );

  /// Create a copy of DoctorAppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorAppointmentDetailsStateImplCopyWith<
    _$DoctorAppointmentDetailsStateImpl
  >
  get copyWith => __$$DoctorAppointmentDetailsStateImplCopyWithImpl<
    _$DoctorAppointmentDetailsStateImpl
  >(this, _$identity);
}

abstract class _DoctorAppointmentDetailsState
    implements DoctorAppointmentDetailsState {
  const factory _DoctorAppointmentDetailsState({
    required final DataStatus status,
    required final String message,
    required final AppointmentModel appointment,
    final MedicalInfoModel? medicalInfo,
    final String? prescriptionFilePath,
    final double? downloadProgress,
  }) = _$DoctorAppointmentDetailsStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  AppointmentModel get appointment;
  @override
  MedicalInfoModel? get medicalInfo;
  @override
  String? get prescriptionFilePath;
  @override
  double? get downloadProgress;

  /// Create a copy of DoctorAppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorAppointmentDetailsStateImplCopyWith<
    _$DoctorAppointmentDetailsStateImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
