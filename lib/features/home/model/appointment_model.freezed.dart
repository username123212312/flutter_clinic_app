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
  @JsonKey(name: 'queue_number')
  int? get queueNumber => throw _privateConstructorUsedError;
  @AppointmentTypeConverter()
  AppointmentType? get type => throw _privateConstructorUsedError;
  int? get finalRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'referred by')
  String? get referredBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'clinic_id')
  int? get clinicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'clinic_name')
  String? get clinicName => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_gender')
  String? get patientGender => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_id')
  int? get doctorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_photo')
  String? get doctorPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_visit_duration')
  String? get averageVisitDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_name')
  String? get doctorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_first_name')
  String? get patientFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_last_name')
  String? get patientLastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointment_type')
  @DoctorAppointmentTypeConverter()
  DoctorAppointmentType? get appointmentType =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_fee')
  double? get visitFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_price')
  int? get expectedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'paid_price')
  int? get paidPrice => throw _privateConstructorUsedError;
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
    @JsonKey(name: 'queue_number') int? queueNumber,
    @AppointmentTypeConverter() AppointmentType? type,
    int? finalRate,
    @JsonKey(name: 'referred by') String? referredBy,
    @JsonKey(name: 'clinic_id') int? clinicId,
    @JsonKey(name: 'clinic_name') String? clinicName,
    @JsonKey(name: 'patient_gender') String? patientGender,
    @JsonKey(name: 'doctor_id') int? doctorId,
    @JsonKey(name: 'doctor_photo') String? doctorPhoto,
    @JsonKey(name: 'average_visit_duration') String? averageVisitDuration,
    @JsonKey(name: 'doctor_name') String? doctorName,
    @JsonKey(name: 'patient_first_name') String? patientFirstName,
    @JsonKey(name: 'patient_last_name') String? patientLastName,
    @JsonKey(name: 'appointment_type')
    @DoctorAppointmentTypeConverter()
    DoctorAppointmentType? appointmentType,
    @JsonKey(name: 'visit_fee') double? visitFee,
    @JsonKey(name: 'expected_price') int? expectedPrice,
    @JsonKey(name: 'paid_price') int? paidPrice,
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
    Object? queueNumber = freezed,
    Object? type = freezed,
    Object? finalRate = freezed,
    Object? referredBy = freezed,
    Object? clinicId = freezed,
    Object? clinicName = freezed,
    Object? patientGender = freezed,
    Object? doctorId = freezed,
    Object? doctorPhoto = freezed,
    Object? averageVisitDuration = freezed,
    Object? doctorName = freezed,
    Object? patientFirstName = freezed,
    Object? patientLastName = freezed,
    Object? appointmentType = freezed,
    Object? visitFee = freezed,
    Object? expectedPrice = freezed,
    Object? paidPrice = freezed,
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
            queueNumber:
                freezed == queueNumber
                    ? _value.queueNumber
                    : queueNumber // ignore: cast_nullable_to_non_nullable
                        as int?,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as AppointmentType?,
            finalRate:
                freezed == finalRate
                    ? _value.finalRate
                    : finalRate // ignore: cast_nullable_to_non_nullable
                        as int?,
            referredBy:
                freezed == referredBy
                    ? _value.referredBy
                    : referredBy // ignore: cast_nullable_to_non_nullable
                        as String?,
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
            patientGender:
                freezed == patientGender
                    ? _value.patientGender
                    : patientGender // ignore: cast_nullable_to_non_nullable
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
            averageVisitDuration:
                freezed == averageVisitDuration
                    ? _value.averageVisitDuration
                    : averageVisitDuration // ignore: cast_nullable_to_non_nullable
                        as String?,
            doctorName:
                freezed == doctorName
                    ? _value.doctorName
                    : doctorName // ignore: cast_nullable_to_non_nullable
                        as String?,
            patientFirstName:
                freezed == patientFirstName
                    ? _value.patientFirstName
                    : patientFirstName // ignore: cast_nullable_to_non_nullable
                        as String?,
            patientLastName:
                freezed == patientLastName
                    ? _value.patientLastName
                    : patientLastName // ignore: cast_nullable_to_non_nullable
                        as String?,
            appointmentType:
                freezed == appointmentType
                    ? _value.appointmentType
                    : appointmentType // ignore: cast_nullable_to_non_nullable
                        as DoctorAppointmentType?,
            visitFee:
                freezed == visitFee
                    ? _value.visitFee
                    : visitFee // ignore: cast_nullable_to_non_nullable
                        as double?,
            expectedPrice:
                freezed == expectedPrice
                    ? _value.expectedPrice
                    : expectedPrice // ignore: cast_nullable_to_non_nullable
                        as int?,
            paidPrice:
                freezed == paidPrice
                    ? _value.paidPrice
                    : paidPrice // ignore: cast_nullable_to_non_nullable
                        as int?,
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
    @JsonKey(name: 'queue_number') int? queueNumber,
    @AppointmentTypeConverter() AppointmentType? type,
    int? finalRate,
    @JsonKey(name: 'referred by') String? referredBy,
    @JsonKey(name: 'clinic_id') int? clinicId,
    @JsonKey(name: 'clinic_name') String? clinicName,
    @JsonKey(name: 'patient_gender') String? patientGender,
    @JsonKey(name: 'doctor_id') int? doctorId,
    @JsonKey(name: 'doctor_photo') String? doctorPhoto,
    @JsonKey(name: 'average_visit_duration') String? averageVisitDuration,
    @JsonKey(name: 'doctor_name') String? doctorName,
    @JsonKey(name: 'patient_first_name') String? patientFirstName,
    @JsonKey(name: 'patient_last_name') String? patientLastName,
    @JsonKey(name: 'appointment_type')
    @DoctorAppointmentTypeConverter()
    DoctorAppointmentType? appointmentType,
    @JsonKey(name: 'visit_fee') double? visitFee,
    @JsonKey(name: 'expected_price') int? expectedPrice,
    @JsonKey(name: 'paid_price') int? paidPrice,
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
    Object? queueNumber = freezed,
    Object? type = freezed,
    Object? finalRate = freezed,
    Object? referredBy = freezed,
    Object? clinicId = freezed,
    Object? clinicName = freezed,
    Object? patientGender = freezed,
    Object? doctorId = freezed,
    Object? doctorPhoto = freezed,
    Object? averageVisitDuration = freezed,
    Object? doctorName = freezed,
    Object? patientFirstName = freezed,
    Object? patientLastName = freezed,
    Object? appointmentType = freezed,
    Object? visitFee = freezed,
    Object? expectedPrice = freezed,
    Object? paidPrice = freezed,
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
        queueNumber:
            freezed == queueNumber
                ? _value.queueNumber
                : queueNumber // ignore: cast_nullable_to_non_nullable
                    as int?,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as AppointmentType?,
        finalRate:
            freezed == finalRate
                ? _value.finalRate
                : finalRate // ignore: cast_nullable_to_non_nullable
                    as int?,
        referredBy:
            freezed == referredBy
                ? _value.referredBy
                : referredBy // ignore: cast_nullable_to_non_nullable
                    as String?,
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
        patientGender:
            freezed == patientGender
                ? _value.patientGender
                : patientGender // ignore: cast_nullable_to_non_nullable
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
        averageVisitDuration:
            freezed == averageVisitDuration
                ? _value.averageVisitDuration
                : averageVisitDuration // ignore: cast_nullable_to_non_nullable
                    as String?,
        doctorName:
            freezed == doctorName
                ? _value.doctorName
                : doctorName // ignore: cast_nullable_to_non_nullable
                    as String?,
        patientFirstName:
            freezed == patientFirstName
                ? _value.patientFirstName
                : patientFirstName // ignore: cast_nullable_to_non_nullable
                    as String?,
        patientLastName:
            freezed == patientLastName
                ? _value.patientLastName
                : patientLastName // ignore: cast_nullable_to_non_nullable
                    as String?,
        appointmentType:
            freezed == appointmentType
                ? _value.appointmentType
                : appointmentType // ignore: cast_nullable_to_non_nullable
                    as DoctorAppointmentType?,
        visitFee:
            freezed == visitFee
                ? _value.visitFee
                : visitFee // ignore: cast_nullable_to_non_nullable
                    as double?,
        expectedPrice:
            freezed == expectedPrice
                ? _value.expectedPrice
                : expectedPrice // ignore: cast_nullable_to_non_nullable
                    as int?,
        paidPrice:
            freezed == paidPrice
                ? _value.paidPrice
                : paidPrice // ignore: cast_nullable_to_non_nullable
                    as int?,
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
    @JsonKey(name: 'queue_number') this.queueNumber,
    @AppointmentTypeConverter() this.type,
    this.finalRate,
    @JsonKey(name: 'referred by') this.referredBy,
    @JsonKey(name: 'clinic_id') this.clinicId,
    @JsonKey(name: 'clinic_name') this.clinicName,
    @JsonKey(name: 'patient_gender') this.patientGender,
    @JsonKey(name: 'doctor_id') this.doctorId,
    @JsonKey(name: 'doctor_photo') this.doctorPhoto,
    @JsonKey(name: 'average_visit_duration') this.averageVisitDuration,
    @JsonKey(name: 'doctor_name') this.doctorName,
    @JsonKey(name: 'patient_first_name') this.patientFirstName,
    @JsonKey(name: 'patient_last_name') this.patientLastName,
    @JsonKey(name: 'appointment_type')
    @DoctorAppointmentTypeConverter()
    this.appointmentType,
    @JsonKey(name: 'visit_fee') this.visitFee,
    @JsonKey(name: 'expected_price') this.expectedPrice,
    @JsonKey(name: 'paid_price') this.paidPrice,
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
  @JsonKey(name: 'queue_number')
  final int? queueNumber;
  @override
  @AppointmentTypeConverter()
  final AppointmentType? type;
  @override
  final int? finalRate;
  @override
  @JsonKey(name: 'referred by')
  final String? referredBy;
  @override
  @JsonKey(name: 'clinic_id')
  final int? clinicId;
  @override
  @JsonKey(name: 'clinic_name')
  final String? clinicName;
  @override
  @JsonKey(name: 'patient_gender')
  final String? patientGender;
  @override
  @JsonKey(name: 'doctor_id')
  final int? doctorId;
  @override
  @JsonKey(name: 'doctor_photo')
  final String? doctorPhoto;
  @override
  @JsonKey(name: 'average_visit_duration')
  final String? averageVisitDuration;
  @override
  @JsonKey(name: 'doctor_name')
  final String? doctorName;
  @override
  @JsonKey(name: 'patient_first_name')
  final String? patientFirstName;
  @override
  @JsonKey(name: 'patient_last_name')
  final String? patientLastName;
  @override
  @JsonKey(name: 'appointment_type')
  @DoctorAppointmentTypeConverter()
  final DoctorAppointmentType? appointmentType;
  @override
  @JsonKey(name: 'visit_fee')
  final double? visitFee;
  @override
  @JsonKey(name: 'expected_price')
  final int? expectedPrice;
  @override
  @JsonKey(name: 'paid_price')
  final int? paidPrice;
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
    return 'AppointmentModel(id: $id, queueNumber: $queueNumber, type: $type, finalRate: $finalRate, referredBy: $referredBy, clinicId: $clinicId, clinicName: $clinicName, patientGender: $patientGender, doctorId: $doctorId, doctorPhoto: $doctorPhoto, averageVisitDuration: $averageVisitDuration, doctorName: $doctorName, patientFirstName: $patientFirstName, patientLastName: $patientLastName, appointmentType: $appointmentType, visitFee: $visitFee, expectedPrice: $expectedPrice, paidPrice: $paidPrice, doctorSpeciality: $doctorSpeciality, reservationDate: $reservationDate, reservationHour: $reservationHour, status: $status, reminderOffset: $reminderOffset, paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.queueNumber, queueNumber) ||
                other.queueNumber == queueNumber) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.finalRate, finalRate) ||
                other.finalRate == finalRate) &&
            (identical(other.referredBy, referredBy) ||
                other.referredBy == referredBy) &&
            (identical(other.clinicId, clinicId) ||
                other.clinicId == clinicId) &&
            (identical(other.clinicName, clinicName) ||
                other.clinicName == clinicName) &&
            (identical(other.patientGender, patientGender) ||
                other.patientGender == patientGender) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.doctorPhoto, doctorPhoto) ||
                other.doctorPhoto == doctorPhoto) &&
            (identical(other.averageVisitDuration, averageVisitDuration) ||
                other.averageVisitDuration == averageVisitDuration) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.patientFirstName, patientFirstName) ||
                other.patientFirstName == patientFirstName) &&
            (identical(other.patientLastName, patientLastName) ||
                other.patientLastName == patientLastName) &&
            (identical(other.appointmentType, appointmentType) ||
                other.appointmentType == appointmentType) &&
            (identical(other.visitFee, visitFee) ||
                other.visitFee == visitFee) &&
            (identical(other.expectedPrice, expectedPrice) ||
                other.expectedPrice == expectedPrice) &&
            (identical(other.paidPrice, paidPrice) ||
                other.paidPrice == paidPrice) &&
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
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    queueNumber,
    type,
    finalRate,
    referredBy,
    clinicId,
    clinicName,
    patientGender,
    doctorId,
    doctorPhoto,
    averageVisitDuration,
    doctorName,
    patientFirstName,
    patientLastName,
    appointmentType,
    visitFee,
    expectedPrice,
    paidPrice,
    doctorSpeciality,
    reservationDate,
    reservationHour,
    status,
    reminderOffset,
    paymentStatus,
  ]);

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
    @JsonKey(name: 'queue_number') final int? queueNumber,
    @AppointmentTypeConverter() final AppointmentType? type,
    final int? finalRate,
    @JsonKey(name: 'referred by') final String? referredBy,
    @JsonKey(name: 'clinic_id') final int? clinicId,
    @JsonKey(name: 'clinic_name') final String? clinicName,
    @JsonKey(name: 'patient_gender') final String? patientGender,
    @JsonKey(name: 'doctor_id') final int? doctorId,
    @JsonKey(name: 'doctor_photo') final String? doctorPhoto,
    @JsonKey(name: 'average_visit_duration') final String? averageVisitDuration,
    @JsonKey(name: 'doctor_name') final String? doctorName,
    @JsonKey(name: 'patient_first_name') final String? patientFirstName,
    @JsonKey(name: 'patient_last_name') final String? patientLastName,
    @JsonKey(name: 'appointment_type')
    @DoctorAppointmentTypeConverter()
    final DoctorAppointmentType? appointmentType,
    @JsonKey(name: 'visit_fee') final double? visitFee,
    @JsonKey(name: 'expected_price') final int? expectedPrice,
    @JsonKey(name: 'paid_price') final int? paidPrice,
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
  @JsonKey(name: 'queue_number')
  int? get queueNumber;
  @override
  @AppointmentTypeConverter()
  AppointmentType? get type;
  @override
  int? get finalRate;
  @override
  @JsonKey(name: 'referred by')
  String? get referredBy;
  @override
  @JsonKey(name: 'clinic_id')
  int? get clinicId;
  @override
  @JsonKey(name: 'clinic_name')
  String? get clinicName;
  @override
  @JsonKey(name: 'patient_gender')
  String? get patientGender;
  @override
  @JsonKey(name: 'doctor_id')
  int? get doctorId;
  @override
  @JsonKey(name: 'doctor_photo')
  String? get doctorPhoto;
  @override
  @JsonKey(name: 'average_visit_duration')
  String? get averageVisitDuration;
  @override
  @JsonKey(name: 'doctor_name')
  String? get doctorName;
  @override
  @JsonKey(name: 'patient_first_name')
  String? get patientFirstName;
  @override
  @JsonKey(name: 'patient_last_name')
  String? get patientLastName;
  @override
  @JsonKey(name: 'appointment_type')
  @DoctorAppointmentTypeConverter()
  DoctorAppointmentType? get appointmentType;
  @override
  @JsonKey(name: 'visit_fee')
  double? get visitFee;
  @override
  @JsonKey(name: 'expected_price')
  int? get expectedPrice;
  @override
  @JsonKey(name: 'paid_price')
  int? get paidPrice;
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
