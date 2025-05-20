// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppointmentModel implements DiagnosticableTreeMixin {
  String get service;
  DoctorModel get doctor;
  String get department;
  DateTime get dateAndTime;
  PatientModel get patient;
  AppointmentStatus get appointmentStatus;

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppointmentModelCopyWith<AppointmentModel> get copyWith =>
      _$AppointmentModelCopyWithImpl<AppointmentModel>(
          this as AppointmentModel, _$identity);

  /// Serializes this AppointmentModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AppointmentModel'))
      ..add(DiagnosticsProperty('service', service))
      ..add(DiagnosticsProperty('doctor', doctor))
      ..add(DiagnosticsProperty('department', department))
      ..add(DiagnosticsProperty('dateAndTime', dateAndTime))
      ..add(DiagnosticsProperty('patient', patient))
      ..add(DiagnosticsProperty('appointmentStatus', appointmentStatus));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppointmentModel &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.dateAndTime, dateAndTime) ||
                other.dateAndTime == dateAndTime) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.appointmentStatus, appointmentStatus) ||
                other.appointmentStatus == appointmentStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, service, doctor, department,
      dateAndTime, patient, appointmentStatus);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppointmentModel(service: $service, doctor: $doctor, department: $department, dateAndTime: $dateAndTime, patient: $patient, appointmentStatus: $appointmentStatus)';
  }
}

/// @nodoc
abstract mixin class $AppointmentModelCopyWith<$Res> {
  factory $AppointmentModelCopyWith(
          AppointmentModel value, $Res Function(AppointmentModel) _then) =
      _$AppointmentModelCopyWithImpl;
  @useResult
  $Res call(
      {String service,
      DoctorModel doctor,
      String department,
      DateTime dateAndTime,
      PatientModel patient,
      AppointmentStatus appointmentStatus});

  $DoctorModelCopyWith<$Res> get doctor;
  $PatientModelCopyWith<$Res> get patient;
}

/// @nodoc
class _$AppointmentModelCopyWithImpl<$Res>
    implements $AppointmentModelCopyWith<$Res> {
  _$AppointmentModelCopyWithImpl(this._self, this._then);

  final AppointmentModel _self;
  final $Res Function(AppointmentModel) _then;

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = null,
    Object? doctor = null,
    Object? department = null,
    Object? dateAndTime = null,
    Object? patient = null,
    Object? appointmentStatus = null,
  }) {
    return _then(_self.copyWith(
      service: null == service
          ? _self.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      doctor: null == doctor
          ? _self.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as DoctorModel,
      department: null == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      dateAndTime: null == dateAndTime
          ? _self.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      patient: null == patient
          ? _self.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as PatientModel,
      appointmentStatus: null == appointmentStatus
          ? _self.appointmentStatus
          : appointmentStatus // ignore: cast_nullable_to_non_nullable
              as AppointmentStatus,
    ));
  }

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorModelCopyWith<$Res> get doctor {
    return $DoctorModelCopyWith<$Res>(_self.doctor, (value) {
      return _then(_self.copyWith(doctor: value));
    });
  }

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PatientModelCopyWith<$Res> get patient {
    return $PatientModelCopyWith<$Res>(_self.patient, (value) {
      return _then(_self.copyWith(patient: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _AppointmentModel
    with DiagnosticableTreeMixin
    implements AppointmentModel {
  _AppointmentModel(
      {required this.service,
      required this.doctor,
      required this.department,
      required this.dateAndTime,
      required this.patient,
      required this.appointmentStatus});
  factory _AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);

  @override
  final String service;
  @override
  final DoctorModel doctor;
  @override
  final String department;
  @override
  final DateTime dateAndTime;
  @override
  final PatientModel patient;
  @override
  final AppointmentStatus appointmentStatus;

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppointmentModelCopyWith<_AppointmentModel> get copyWith =>
      __$AppointmentModelCopyWithImpl<_AppointmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppointmentModelToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AppointmentModel'))
      ..add(DiagnosticsProperty('service', service))
      ..add(DiagnosticsProperty('doctor', doctor))
      ..add(DiagnosticsProperty('department', department))
      ..add(DiagnosticsProperty('dateAndTime', dateAndTime))
      ..add(DiagnosticsProperty('patient', patient))
      ..add(DiagnosticsProperty('appointmentStatus', appointmentStatus));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentModel &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.dateAndTime, dateAndTime) ||
                other.dateAndTime == dateAndTime) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.appointmentStatus, appointmentStatus) ||
                other.appointmentStatus == appointmentStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, service, doctor, department,
      dateAndTime, patient, appointmentStatus);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppointmentModel(service: $service, doctor: $doctor, department: $department, dateAndTime: $dateAndTime, patient: $patient, appointmentStatus: $appointmentStatus)';
  }
}

/// @nodoc
abstract mixin class _$AppointmentModelCopyWith<$Res>
    implements $AppointmentModelCopyWith<$Res> {
  factory _$AppointmentModelCopyWith(
          _AppointmentModel value, $Res Function(_AppointmentModel) _then) =
      __$AppointmentModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String service,
      DoctorModel doctor,
      String department,
      DateTime dateAndTime,
      PatientModel patient,
      AppointmentStatus appointmentStatus});

  @override
  $DoctorModelCopyWith<$Res> get doctor;
  @override
  $PatientModelCopyWith<$Res> get patient;
}

/// @nodoc
class __$AppointmentModelCopyWithImpl<$Res>
    implements _$AppointmentModelCopyWith<$Res> {
  __$AppointmentModelCopyWithImpl(this._self, this._then);

  final _AppointmentModel _self;
  final $Res Function(_AppointmentModel) _then;

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? service = null,
    Object? doctor = null,
    Object? department = null,
    Object? dateAndTime = null,
    Object? patient = null,
    Object? appointmentStatus = null,
  }) {
    return _then(_AppointmentModel(
      service: null == service
          ? _self.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      doctor: null == doctor
          ? _self.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as DoctorModel,
      department: null == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      dateAndTime: null == dateAndTime
          ? _self.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      patient: null == patient
          ? _self.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as PatientModel,
      appointmentStatus: null == appointmentStatus
          ? _self.appointmentStatus
          : appointmentStatus // ignore: cast_nullable_to_non_nullable
              as AppointmentStatus,
    ));
  }

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorModelCopyWith<$Res> get doctor {
    return $DoctorModelCopyWith<$Res>(_self.doctor, (value) {
      return _then(_self.copyWith(doctor: value));
    });
  }

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PatientModelCopyWith<$Res> get patient {
    return $PatientModelCopyWith<$Res>(_self.patient, (value) {
      return _then(_self.copyWith(patient: value));
    });
  }
}

// dart format on
