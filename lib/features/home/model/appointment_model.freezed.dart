// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) {
  return _AppointmentModel.fromJson(json);
}

/// @nodoc
mixin _$AppointmentModel {
  @JsonKey(name: 'appointment_id')
  int? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get finalRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'clinic_id')
  int? get clinicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'clinic_name')
  String? get clinicName => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_id')
  int? get doctorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_photo')
  String? get doctorPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_name')
  String? get doctorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_fee')
  double? get visitFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_speciality')
  String? get doctorSpeciality => throw _privateConstructorUsedError;
  @JsonKey(name: 'reservation_date')
  DateTime? get reservationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'reservation_hour')
  @TimeOfDayConverter()
  TimeOfDay? get reservationHour => throw _privateConstructorUsedError;
  AppointmentStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'reminder_offset')
  int? get reminderOffset => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  PaymentStatus? get paymentStatus => throw _privateConstructorUsedError;

  /// Serializes this AppointmentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentModelCopyWith<AppointmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentModelCopyWith<$Res> {
  factory $AppointmentModelCopyWith(
    AppointmentModel value,
    $Res Function(AppointmentModel) then,
  ) = _$AppointmentModelCopyWithImpl<$Res, AppointmentModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'appointment_id') int? id,
    String? type,
    int? finalRate,
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
    AppointmentStatus? status,
    @JsonKey(name: 'reminder_offset') int? reminderOffset,
    @JsonKey(name: 'payment_status') PaymentStatus? paymentStatus,
  });
}

/// @nodoc
class _$AppointmentModelCopyWithImpl<$Res, $Val extends AppointmentModel>
    implements $AppointmentModelCopyWith<$Res> {
  _$AppointmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    Object? reminderOffset = freezed,
    Object? paymentStatus = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String?,
            finalRate:
                freezed == finalRate
                    ? _value.finalRate
                    : finalRate // ignore: cast_nullable_to_non_nullable
                        as int?,
            clinicId:
                freezed == clinicId
                    ? _value.clinicId
                    : clinicId // ignore: cast_nullable_to_non_nullable
                        as int?,
            clinicName:
                freezed == clinicName
                    ? _value.clinicName
                    : clinicName // ignore: cast_nullable_to_non_nullable
                        as String?,
            doctorId:
                freezed == doctorId
                    ? _value.doctorId
                    : doctorId // ignore: cast_nullable_to_non_nullable
                        as int?,
            doctorPhoto:
                freezed == doctorPhoto
                    ? _value.doctorPhoto
                    : doctorPhoto // ignore: cast_nullable_to_non_nullable
                        as String?,
            doctorName:
                freezed == doctorName
                    ? _value.doctorName
                    : doctorName // ignore: cast_nullable_to_non_nullable
                        as String?,
            visitFee:
                freezed == visitFee
                    ? _value.visitFee
                    : visitFee // ignore: cast_nullable_to_non_nullable
                        as double?,
            doctorSpeciality:
                freezed == doctorSpeciality
                    ? _value.doctorSpeciality
                    : doctorSpeciality // ignore: cast_nullable_to_non_nullable
                        as String?,
            reservationDate:
                freezed == reservationDate
                    ? _value.reservationDate
                    : reservationDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            reservationHour:
                freezed == reservationHour
                    ? _value.reservationHour
                    : reservationHour // ignore: cast_nullable_to_non_nullable
                        as TimeOfDay?,
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as AppointmentStatus?,
            reminderOffset:
                freezed == reminderOffset
                    ? _value.reminderOffset
                    : reminderOffset // ignore: cast_nullable_to_non_nullable
                        as int?,
            paymentStatus:
                freezed == paymentStatus
                    ? _value.paymentStatus
                    : paymentStatus // ignore: cast_nullable_to_non_nullable
                        as PaymentStatus?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppointmentModelImplCopyWith<$Res>
    implements $AppointmentModelCopyWith<$Res> {
  factory _$$AppointmentModelImplCopyWith(
    _$AppointmentModelImpl value,
    $Res Function(_$AppointmentModelImpl) then,
  ) = __$$AppointmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'appointment_id') int? id,
    String? type,
    int? finalRate,
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
    AppointmentStatus? status,
    @JsonKey(name: 'reminder_offset') int? reminderOffset,
    @JsonKey(name: 'payment_status') PaymentStatus? paymentStatus,
  });
}

/// @nodoc
class __$$AppointmentModelImplCopyWithImpl<$Res>
    extends _$AppointmentModelCopyWithImpl<$Res, _$AppointmentModelImpl>
    implements _$$AppointmentModelImplCopyWith<$Res> {
  __$$AppointmentModelImplCopyWithImpl(
    _$AppointmentModelImpl _value,
    $Res Function(_$AppointmentModelImpl) _then,
  ) : super(_value, _then);

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
    Object? reminderOffset = freezed,
    Object? paymentStatus = freezed,
  }) {
    return _then(
      _$AppointmentModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String?,
        finalRate:
            freezed == finalRate
                ? _value.finalRate
                : finalRate // ignore: cast_nullable_to_non_nullable
                    as int?,
        clinicId:
            freezed == clinicId
                ? _value.clinicId
                : clinicId // ignore: cast_nullable_to_non_nullable
                    as int?,
        clinicName:
            freezed == clinicName
                ? _value.clinicName
                : clinicName // ignore: cast_nullable_to_non_nullable
                    as String?,
        doctorId:
            freezed == doctorId
                ? _value.doctorId
                : doctorId // ignore: cast_nullable_to_non_nullable
                    as int?,
        doctorPhoto:
            freezed == doctorPhoto
                ? _value.doctorPhoto
                : doctorPhoto // ignore: cast_nullable_to_non_nullable
                    as String?,
        doctorName:
            freezed == doctorName
                ? _value.doctorName
                : doctorName // ignore: cast_nullable_to_non_nullable
                    as String?,
        visitFee:
            freezed == visitFee
                ? _value.visitFee
                : visitFee // ignore: cast_nullable_to_non_nullable
                    as double?,
        doctorSpeciality:
            freezed == doctorSpeciality
                ? _value.doctorSpeciality
                : doctorSpeciality // ignore: cast_nullable_to_non_nullable
                    as String?,
        reservationDate:
            freezed == reservationDate
                ? _value.reservationDate
                : reservationDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        reservationHour:
            freezed == reservationHour
                ? _value.reservationHour
                : reservationHour // ignore: cast_nullable_to_non_nullable
                    as TimeOfDay?,
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as AppointmentStatus?,
        reminderOffset:
            freezed == reminderOffset
                ? _value.reminderOffset
                : reminderOffset // ignore: cast_nullable_to_non_nullable
                    as int?,
        paymentStatus:
            freezed == paymentStatus
                ? _value.paymentStatus
                : paymentStatus // ignore: cast_nullable_to_non_nullable
                    as PaymentStatus?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentModelImpl implements _AppointmentModel {
  _$AppointmentModelImpl({
    @JsonKey(name: 'appointment_id') this.id,
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
    this.status,
    @JsonKey(name: 'reminder_offset') this.reminderOffset,
    @JsonKey(name: 'payment_status') this.paymentStatus,
  });

  factory _$AppointmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentModelImplFromJson(json);

  @override
  @JsonKey(name: 'appointment_id')
  final int? id;
  @override
  final String? type;
  @override
  final int? finalRate;
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
  @override
  @JsonKey(name: 'reminder_offset')
  final int? reminderOffset;
  @override
  @JsonKey(name: 'payment_status')
  final PaymentStatus? paymentStatus;

  @override
  String toString() {
    return 'AppointmentModel(id: $id, type: $type, finalRate: $finalRate, clinicId: $clinicId, clinicName: $clinicName, doctorId: $doctorId, doctorPhoto: $doctorPhoto, doctorName: $doctorName, visitFee: $visitFee, doctorSpeciality: $doctorSpeciality, reservationDate: $reservationDate, reservationHour: $reservationHour, status: $status, reminderOffset: $reminderOffset, paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentModelImpl &&
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
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reminderOffset, reminderOffset) ||
                other.reminderOffset == reminderOffset) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus));
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
    status,
    reminderOffset,
    paymentStatus,
  );

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentModelImplCopyWith<_$AppointmentModelImpl> get copyWith =>
      __$$AppointmentModelImplCopyWithImpl<_$AppointmentModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentModelImplToJson(this);
  }
}

abstract class _AppointmentModel implements AppointmentModel {
  factory _AppointmentModel({
    @JsonKey(name: 'appointment_id') final int? id,
    final String? type,
    final int? finalRate,
    @JsonKey(name: 'clinic_id') final int? clinicId,
    @JsonKey(name: 'clinic_name') final String? clinicName,
    @JsonKey(name: 'doctor_id') final int? doctorId,
    @JsonKey(name: 'doctor_photo') final String? doctorPhoto,
    @JsonKey(name: 'doctor_name') final String? doctorName,
    @JsonKey(name: 'visit_fee') final double? visitFee,
    @JsonKey(name: 'doctor_speciality') final String? doctorSpeciality,
    @JsonKey(name: 'reservation_date') final DateTime? reservationDate,
    @JsonKey(name: 'reservation_hour')
    @TimeOfDayConverter()
    final TimeOfDay? reservationHour,
    final AppointmentStatus? status,
    @JsonKey(name: 'reminder_offset') final int? reminderOffset,
    @JsonKey(name: 'payment_status') final PaymentStatus? paymentStatus,
  }) = _$AppointmentModelImpl;

  factory _AppointmentModel.fromJson(Map<String, dynamic> json) =
      _$AppointmentModelImpl.fromJson;

  @override
  @JsonKey(name: 'appointment_id')
  int? get id;
  @override
  String? get type;
  @override
  int? get finalRate;
  @override
  @JsonKey(name: 'clinic_id')
  int? get clinicId;
  @override
  @JsonKey(name: 'clinic_name')
  String? get clinicName;
  @override
  @JsonKey(name: 'doctor_id')
  int? get doctorId;
  @override
  @JsonKey(name: 'doctor_photo')
  String? get doctorPhoto;
  @override
  @JsonKey(name: 'doctor_name')
  String? get doctorName;
  @override
  @JsonKey(name: 'visit_fee')
  double? get visitFee;
  @override
  @JsonKey(name: 'doctor_speciality')
  String? get doctorSpeciality;
  @override
  @JsonKey(name: 'reservation_date')
  DateTime? get reservationDate;
  @override
  @JsonKey(name: 'reservation_hour')
  @TimeOfDayConverter()
  TimeOfDay? get reservationHour;
  @override
  AppointmentStatus? get status;
  @override
  @JsonKey(name: 'reminder_offset')
  int? get reminderOffset;
  @override
  @JsonKey(name: 'payment_status')
  PaymentStatus? get paymentStatus;

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentModelImplCopyWith<_$AppointmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
