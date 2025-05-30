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
mixin _$AppointmentModel {
  @JsonKey(name: 'appointment_id')
  int? get id;
  String? get type;
  String? get finalRate;
  @JsonKey(name: 'clinic_id')
  int? get clinicId;
  @JsonKey(name: 'clinic_name')
  String? get clinicName;
  @JsonKey(name: 'doctor_id')
  int? get doctorId;
  @JsonKey(name: 'doctor_photo')
  String? get doctorPhoto;
  @JsonKey(name: 'doctor_name')
  String? get doctorName;
  @JsonKey(name: 'visit_fee')
  double? get visitFee;
  @JsonKey(name: 'doctor_speciality')
  String? get doctorSpeciality;
  @JsonKey(name: 'reservation_date')
  DateTime? get reservationDate;
  @JsonKey(name: 'reservation_hour')
  @TimeOfDayConverter()
  TimeOfDay? get reservationHour;
  AppointmentStatus? get status;

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppointmentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.finalRate, finalRate) ||
                other.finalRate == finalRate) &&
            (identical(other.clinicId, clinicId) ||
                other.clinicId == clinicId) &&
            (identical(other.clinicName, clinicName) ||
                other.clinicName == clinicName) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.doctorPhoto, doctorPhoto) ||
                other.doctorPhoto == doctorPhoto) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.visitFee, visitFee) ||
                other.visitFee == visitFee) &&
            (identical(other.doctorSpeciality, doctorSpeciality) ||
                other.doctorSpeciality == doctorSpeciality) &&
            (identical(other.reservationDate, reservationDate) ||
                other.reservationDate == reservationDate) &&
            (identical(other.reservationHour, reservationHour) ||
                other.reservationHour == reservationHour) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      finalRate,
      clinicId,
      clinicName,
      doctorId,
      doctorPhoto,
      doctorName,
      visitFee,
      doctorSpeciality,
      reservationDate,
      reservationHour,
      status);

  @override
  String toString() {
    return 'AppointmentModel(id: $id, type: $type, finalRate: $finalRate, clinicId: $clinicId, clinicName: $clinicName, doctorId: $doctorId, doctorPhoto: $doctorPhoto, doctorName: $doctorName, visitFee: $visitFee, doctorSpeciality: $doctorSpeciality, reservationDate: $reservationDate, reservationHour: $reservationHour, status: $status)';
  }
}

/// @nodoc
abstract mixin class $AppointmentModelCopyWith<$Res> {
  factory $AppointmentModelCopyWith(
          AppointmentModel value, $Res Function(AppointmentModel) _then) =
      _$AppointmentModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'appointment_id') int? id,
      String? type,
      String? finalRate,
      @JsonKey(name: 'clinic_id') int? clinicId,
      @JsonKey(name: 'clinic_name') String? clinicName,
      @JsonKey(name: 'doctor_id') int? doctorId,
      @JsonKey(name: 'doctor_photo') String? doctorPhoto,
      @JsonKey(name: 'doctor_name') String? doctorName,
      @JsonKey(name: 'visit_fee') double? visitFee,
      @JsonKey(name: 'doctor_speciality') String? doctorSpeciality,
      @JsonKey(name: 'reservation_date') DateTime? reservationDate,
      @JsonKey(name: 'reservation_hour')
      @TimeOfDayConverter()
      TimeOfDay? reservationHour,
      AppointmentStatus? status});
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
    Object? id = freezed,
    Object? type = freezed,
    Object? finalRate = freezed,
    Object? clinicId = freezed,
    Object? clinicName = freezed,
    Object? doctorId = freezed,
    Object? doctorPhoto = freezed,
    Object? doctorName = freezed,
    Object? visitFee = freezed,
    Object? doctorSpeciality = freezed,
    Object? reservationDate = freezed,
    Object? reservationHour = freezed,
    Object? status = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      finalRate: freezed == finalRate
          ? _self.finalRate
          : finalRate // ignore: cast_nullable_to_non_nullable
              as String?,
      clinicId: freezed == clinicId
          ? _self.clinicId
          : clinicId // ignore: cast_nullable_to_non_nullable
              as int?,
      clinicName: freezed == clinicName
          ? _self.clinicName
          : clinicName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: freezed == doctorId
          ? _self.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int?,
      doctorPhoto: freezed == doctorPhoto
          ? _self.doctorPhoto
          : doctorPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _self.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      visitFee: freezed == visitFee
          ? _self.visitFee
          : visitFee // ignore: cast_nullable_to_non_nullable
              as double?,
      doctorSpeciality: freezed == doctorSpeciality
          ? _self.doctorSpeciality
          : doctorSpeciality // ignore: cast_nullable_to_non_nullable
              as String?,
      reservationDate: freezed == reservationDate
          ? _self.reservationDate
          : reservationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reservationHour: freezed == reservationHour
          ? _self.reservationHour
          : reservationHour // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppointmentStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AppointmentModel implements AppointmentModel {
  _AppointmentModel(
      {@JsonKey(name: 'appointment_id') this.id,
      this.type,
      this.finalRate,
      @JsonKey(name: 'clinic_id') this.clinicId,
      @JsonKey(name: 'clinic_name') this.clinicName,
      @JsonKey(name: 'doctor_id') this.doctorId,
      @JsonKey(name: 'doctor_photo') this.doctorPhoto,
      @JsonKey(name: 'doctor_name') this.doctorName,
      @JsonKey(name: 'visit_fee') this.visitFee,
      @JsonKey(name: 'doctor_speciality') this.doctorSpeciality,
      @JsonKey(name: 'reservation_date') this.reservationDate,
      @JsonKey(name: 'reservation_hour')
      @TimeOfDayConverter()
      this.reservationHour,
      this.status});
  factory _AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);

  @override
  @JsonKey(name: 'appointment_id')
  final int? id;
  @override
  final String? type;
  @override
  final String? finalRate;
  @override
  @JsonKey(name: 'clinic_id')
  final int? clinicId;
  @override
  @JsonKey(name: 'clinic_name')
  final String? clinicName;
  @override
  @JsonKey(name: 'doctor_id')
  final int? doctorId;
  @override
  @JsonKey(name: 'doctor_photo')
  final String? doctorPhoto;
  @override
  @JsonKey(name: 'doctor_name')
  final String? doctorName;
  @override
  @JsonKey(name: 'visit_fee')
  final double? visitFee;
  @override
  @JsonKey(name: 'doctor_speciality')
  final String? doctorSpeciality;
  @override
  @JsonKey(name: 'reservation_date')
  final DateTime? reservationDate;
  @override
  @JsonKey(name: 'reservation_hour')
  @TimeOfDayConverter()
  final TimeOfDay? reservationHour;
  @override
  final AppointmentStatus? status;

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.finalRate, finalRate) ||
                other.finalRate == finalRate) &&
            (identical(other.clinicId, clinicId) ||
                other.clinicId == clinicId) &&
            (identical(other.clinicName, clinicName) ||
                other.clinicName == clinicName) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.doctorPhoto, doctorPhoto) ||
                other.doctorPhoto == doctorPhoto) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.visitFee, visitFee) ||
                other.visitFee == visitFee) &&
            (identical(other.doctorSpeciality, doctorSpeciality) ||
                other.doctorSpeciality == doctorSpeciality) &&
            (identical(other.reservationDate, reservationDate) ||
                other.reservationDate == reservationDate) &&
            (identical(other.reservationHour, reservationHour) ||
                other.reservationHour == reservationHour) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      finalRate,
      clinicId,
      clinicName,
      doctorId,
      doctorPhoto,
      doctorName,
      visitFee,
      doctorSpeciality,
      reservationDate,
      reservationHour,
      status);

  @override
  String toString() {
    return 'AppointmentModel(id: $id, type: $type, finalRate: $finalRate, clinicId: $clinicId, clinicName: $clinicName, doctorId: $doctorId, doctorPhoto: $doctorPhoto, doctorName: $doctorName, visitFee: $visitFee, doctorSpeciality: $doctorSpeciality, reservationDate: $reservationDate, reservationHour: $reservationHour, status: $status)';
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
      {@JsonKey(name: 'appointment_id') int? id,
      String? type,
      String? finalRate,
      @JsonKey(name: 'clinic_id') int? clinicId,
      @JsonKey(name: 'clinic_name') String? clinicName,
      @JsonKey(name: 'doctor_id') int? doctorId,
      @JsonKey(name: 'doctor_photo') String? doctorPhoto,
      @JsonKey(name: 'doctor_name') String? doctorName,
      @JsonKey(name: 'visit_fee') double? visitFee,
      @JsonKey(name: 'doctor_speciality') String? doctorSpeciality,
      @JsonKey(name: 'reservation_date') DateTime? reservationDate,
      @JsonKey(name: 'reservation_hour')
      @TimeOfDayConverter()
      TimeOfDay? reservationHour,
      AppointmentStatus? status});
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
    Object? id = freezed,
    Object? type = freezed,
    Object? finalRate = freezed,
    Object? clinicId = freezed,
    Object? clinicName = freezed,
    Object? doctorId = freezed,
    Object? doctorPhoto = freezed,
    Object? doctorName = freezed,
    Object? visitFee = freezed,
    Object? doctorSpeciality = freezed,
    Object? reservationDate = freezed,
    Object? reservationHour = freezed,
    Object? status = freezed,
  }) {
    return _then(_AppointmentModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      finalRate: freezed == finalRate
          ? _self.finalRate
          : finalRate // ignore: cast_nullable_to_non_nullable
              as String?,
      clinicId: freezed == clinicId
          ? _self.clinicId
          : clinicId // ignore: cast_nullable_to_non_nullable
              as int?,
      clinicName: freezed == clinicName
          ? _self.clinicName
          : clinicName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: freezed == doctorId
          ? _self.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int?,
      doctorPhoto: freezed == doctorPhoto
          ? _self.doctorPhoto
          : doctorPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _self.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      visitFee: freezed == visitFee
          ? _self.visitFee
          : visitFee // ignore: cast_nullable_to_non_nullable
              as double?,
      doctorSpeciality: freezed == doctorSpeciality
          ? _self.doctorSpeciality
          : doctorSpeciality // ignore: cast_nullable_to_non_nullable
              as String?,
      reservationDate: freezed == reservationDate
          ? _self.reservationDate
          : reservationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reservationHour: freezed == reservationHour
          ? _self.reservationHour
          : reservationHour // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppointmentStatus?,
    ));
  }
}

// dart format on
