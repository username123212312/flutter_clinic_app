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
  int? get id;
  @JsonKey(name: 'doctor_photo')
  String? get doctorPhoto;
  @JsonKey(name: 'doctor_name')
  String? get doctorName;
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
            (identical(other.doctorPhoto, doctorPhoto) ||
                other.doctorPhoto == doctorPhoto) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
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
  int get hashCode => Object.hash(runtimeType, id, doctorPhoto, doctorName,
      doctorSpeciality, reservationDate, reservationHour, status);

  @override
  String toString() {
    return 'AppointmentModel(id: $id, doctorPhoto: $doctorPhoto, doctorName: $doctorName, doctorSpeciality: $doctorSpeciality, reservationDate: $reservationDate, reservationHour: $reservationHour, status: $status)';
  }
}

/// @nodoc
abstract mixin class $AppointmentModelCopyWith<$Res> {
  factory $AppointmentModelCopyWith(
          AppointmentModel value, $Res Function(AppointmentModel) _then) =
      _$AppointmentModelCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'doctor_photo') String? doctorPhoto,
      @JsonKey(name: 'doctor_name') String? doctorName,
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
    Object? doctorPhoto = freezed,
    Object? doctorName = freezed,
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
      doctorPhoto: freezed == doctorPhoto
          ? _self.doctorPhoto
          : doctorPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _self.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {this.id,
      @JsonKey(name: 'doctor_photo') this.doctorPhoto,
      @JsonKey(name: 'doctor_name') this.doctorName,
      @JsonKey(name: 'doctor_speciality') this.doctorSpeciality,
      @JsonKey(name: 'reservation_date') this.reservationDate,
      @JsonKey(name: 'reservation_hour')
      @TimeOfDayConverter()
      this.reservationHour,
      this.status});
  factory _AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'doctor_photo')
  final String? doctorPhoto;
  @override
  @JsonKey(name: 'doctor_name')
  final String? doctorName;
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
            (identical(other.doctorPhoto, doctorPhoto) ||
                other.doctorPhoto == doctorPhoto) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
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
  int get hashCode => Object.hash(runtimeType, id, doctorPhoto, doctorName,
      doctorSpeciality, reservationDate, reservationHour, status);

  @override
  String toString() {
    return 'AppointmentModel(id: $id, doctorPhoto: $doctorPhoto, doctorName: $doctorName, doctorSpeciality: $doctorSpeciality, reservationDate: $reservationDate, reservationHour: $reservationHour, status: $status)';
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
      {int? id,
      @JsonKey(name: 'doctor_photo') String? doctorPhoto,
      @JsonKey(name: 'doctor_name') String? doctorName,
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
    Object? doctorPhoto = freezed,
    Object? doctorName = freezed,
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
      doctorPhoto: freezed == doctorPhoto
          ? _self.doctorPhoto
          : doctorPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _self.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
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
