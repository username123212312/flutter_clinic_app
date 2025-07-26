// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vaccinationrecord.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VaccinationRecord _$VaccinationRecordFromJson(Map<String, dynamic> json) {
  return _VaccinationRecord.fromJson(json);
}

/// @nodoc
mixin _$VaccinationRecord {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'vaccine_id')
  int? get vaccineId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vaccine_name')
  String? get vaccineName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vaccine_description')
  String? get vaccineDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'vaccine_age_group')
  String? get vaccineAgeGroup => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_first_name')
  String? get doctorFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_last_name')
  String? get doctorLastName => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointment_payment_status')
  PaymentStatus? get appointmentPaymentStatus =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'next_vaccine_date')
  DateTime? get nextVaccineDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointment_reservation_date')
  DateTime? get appointmentReservationDate =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'dose_number')
  int? get doseNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_id')
  int? get doctorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointment_id')
  int? get appointmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointment_price')
  int? get appointmentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'vaccine_recommended_doses')
  int? get vaccineRecommendedDoses => throw _privateConstructorUsedError;
  String? get dose => throw _privateConstructorUsedError;
  int? get isTaken => throw _privateConstructorUsedError;
  @JsonKey(name: 'when_to_take')
  String? get whenToTake => throw _privateConstructorUsedError;
  VaccintaionType? get recommended => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;

  /// Serializes this VaccinationRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VaccinationRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VaccinationRecordCopyWith<VaccinationRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccinationRecordCopyWith<$Res> {
  factory $VaccinationRecordCopyWith(
    VaccinationRecord value,
    $Res Function(VaccinationRecord) then,
  ) = _$VaccinationRecordCopyWithImpl<$Res, VaccinationRecord>;
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'vaccine_id') int? vaccineId,
    @JsonKey(name: 'vaccine_name') String? vaccineName,
    @JsonKey(name: 'vaccine_description') String? vaccineDescription,
    @JsonKey(name: 'vaccine_age_group') String? vaccineAgeGroup,
    @JsonKey(name: 'doctor_first_name') String? doctorFirstName,
    @JsonKey(name: 'doctor_last_name') String? doctorLastName,
    String? notes,
    @JsonKey(name: 'appointment_payment_status')
    PaymentStatus? appointmentPaymentStatus,
    @JsonKey(name: 'next_vaccine_date') DateTime? nextVaccineDate,
    @JsonKey(name: 'appointment_reservation_date')
    DateTime? appointmentReservationDate,
    @JsonKey(name: 'dose_number') int? doseNumber,
    @JsonKey(name: 'doctor_id') int? doctorId,
    @JsonKey(name: 'appointment_id') int? appointmentId,
    @JsonKey(name: 'appointment_price') int? appointmentPrice,
    @JsonKey(name: 'vaccine_recommended_doses') int? vaccineRecommendedDoses,
    String? dose,
    int? isTaken,
    @JsonKey(name: 'when_to_take') String? whenToTake,
    VaccintaionType? recommended,
    String? price,
  });
}

/// @nodoc
class _$VaccinationRecordCopyWithImpl<$Res, $Val extends VaccinationRecord>
    implements $VaccinationRecordCopyWith<$Res> {
  _$VaccinationRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VaccinationRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vaccineId = freezed,
    Object? vaccineName = freezed,
    Object? vaccineDescription = freezed,
    Object? vaccineAgeGroup = freezed,
    Object? doctorFirstName = freezed,
    Object? doctorLastName = freezed,
    Object? notes = freezed,
    Object? appointmentPaymentStatus = freezed,
    Object? nextVaccineDate = freezed,
    Object? appointmentReservationDate = freezed,
    Object? doseNumber = freezed,
    Object? doctorId = freezed,
    Object? appointmentId = freezed,
    Object? appointmentPrice = freezed,
    Object? vaccineRecommendedDoses = freezed,
    Object? dose = freezed,
    Object? isTaken = freezed,
    Object? whenToTake = freezed,
    Object? recommended = freezed,
    Object? price = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            vaccineId:
                freezed == vaccineId
                    ? _value.vaccineId
                    : vaccineId // ignore: cast_nullable_to_non_nullable
                        as int?,
            vaccineName:
                freezed == vaccineName
                    ? _value.vaccineName
                    : vaccineName // ignore: cast_nullable_to_non_nullable
                        as String?,
            vaccineDescription:
                freezed == vaccineDescription
                    ? _value.vaccineDescription
                    : vaccineDescription // ignore: cast_nullable_to_non_nullable
                        as String?,
            vaccineAgeGroup:
                freezed == vaccineAgeGroup
                    ? _value.vaccineAgeGroup
                    : vaccineAgeGroup // ignore: cast_nullable_to_non_nullable
                        as String?,
            doctorFirstName:
                freezed == doctorFirstName
                    ? _value.doctorFirstName
                    : doctorFirstName // ignore: cast_nullable_to_non_nullable
                        as String?,
            doctorLastName:
                freezed == doctorLastName
                    ? _value.doctorLastName
                    : doctorLastName // ignore: cast_nullable_to_non_nullable
                        as String?,
            notes:
                freezed == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as String?,
            appointmentPaymentStatus:
                freezed == appointmentPaymentStatus
                    ? _value.appointmentPaymentStatus
                    : appointmentPaymentStatus // ignore: cast_nullable_to_non_nullable
                        as PaymentStatus?,
            nextVaccineDate:
                freezed == nextVaccineDate
                    ? _value.nextVaccineDate
                    : nextVaccineDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            appointmentReservationDate:
                freezed == appointmentReservationDate
                    ? _value.appointmentReservationDate
                    : appointmentReservationDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            doseNumber:
                freezed == doseNumber
                    ? _value.doseNumber
                    : doseNumber // ignore: cast_nullable_to_non_nullable
                        as int?,
            doctorId:
                freezed == doctorId
                    ? _value.doctorId
                    : doctorId // ignore: cast_nullable_to_non_nullable
                        as int?,
            appointmentId:
                freezed == appointmentId
                    ? _value.appointmentId
                    : appointmentId // ignore: cast_nullable_to_non_nullable
                        as int?,
            appointmentPrice:
                freezed == appointmentPrice
                    ? _value.appointmentPrice
                    : appointmentPrice // ignore: cast_nullable_to_non_nullable
                        as int?,
            vaccineRecommendedDoses:
                freezed == vaccineRecommendedDoses
                    ? _value.vaccineRecommendedDoses
                    : vaccineRecommendedDoses // ignore: cast_nullable_to_non_nullable
                        as int?,
            dose:
                freezed == dose
                    ? _value.dose
                    : dose // ignore: cast_nullable_to_non_nullable
                        as String?,
            isTaken:
                freezed == isTaken
                    ? _value.isTaken
                    : isTaken // ignore: cast_nullable_to_non_nullable
                        as int?,
            whenToTake:
                freezed == whenToTake
                    ? _value.whenToTake
                    : whenToTake // ignore: cast_nullable_to_non_nullable
                        as String?,
            recommended:
                freezed == recommended
                    ? _value.recommended
                    : recommended // ignore: cast_nullable_to_non_nullable
                        as VaccintaionType?,
            price:
                freezed == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VaccinationRecordImplCopyWith<$Res>
    implements $VaccinationRecordCopyWith<$Res> {
  factory _$$VaccinationRecordImplCopyWith(
    _$VaccinationRecordImpl value,
    $Res Function(_$VaccinationRecordImpl) then,
  ) = __$$VaccinationRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'vaccine_id') int? vaccineId,
    @JsonKey(name: 'vaccine_name') String? vaccineName,
    @JsonKey(name: 'vaccine_description') String? vaccineDescription,
    @JsonKey(name: 'vaccine_age_group') String? vaccineAgeGroup,
    @JsonKey(name: 'doctor_first_name') String? doctorFirstName,
    @JsonKey(name: 'doctor_last_name') String? doctorLastName,
    String? notes,
    @JsonKey(name: 'appointment_payment_status')
    PaymentStatus? appointmentPaymentStatus,
    @JsonKey(name: 'next_vaccine_date') DateTime? nextVaccineDate,
    @JsonKey(name: 'appointment_reservation_date')
    DateTime? appointmentReservationDate,
    @JsonKey(name: 'dose_number') int? doseNumber,
    @JsonKey(name: 'doctor_id') int? doctorId,
    @JsonKey(name: 'appointment_id') int? appointmentId,
    @JsonKey(name: 'appointment_price') int? appointmentPrice,
    @JsonKey(name: 'vaccine_recommended_doses') int? vaccineRecommendedDoses,
    String? dose,
    int? isTaken,
    @JsonKey(name: 'when_to_take') String? whenToTake,
    VaccintaionType? recommended,
    String? price,
  });
}

/// @nodoc
class __$$VaccinationRecordImplCopyWithImpl<$Res>
    extends _$VaccinationRecordCopyWithImpl<$Res, _$VaccinationRecordImpl>
    implements _$$VaccinationRecordImplCopyWith<$Res> {
  __$$VaccinationRecordImplCopyWithImpl(
    _$VaccinationRecordImpl _value,
    $Res Function(_$VaccinationRecordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VaccinationRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vaccineId = freezed,
    Object? vaccineName = freezed,
    Object? vaccineDescription = freezed,
    Object? vaccineAgeGroup = freezed,
    Object? doctorFirstName = freezed,
    Object? doctorLastName = freezed,
    Object? notes = freezed,
    Object? appointmentPaymentStatus = freezed,
    Object? nextVaccineDate = freezed,
    Object? appointmentReservationDate = freezed,
    Object? doseNumber = freezed,
    Object? doctorId = freezed,
    Object? appointmentId = freezed,
    Object? appointmentPrice = freezed,
    Object? vaccineRecommendedDoses = freezed,
    Object? dose = freezed,
    Object? isTaken = freezed,
    Object? whenToTake = freezed,
    Object? recommended = freezed,
    Object? price = freezed,
  }) {
    return _then(
      _$VaccinationRecordImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        vaccineId:
            freezed == vaccineId
                ? _value.vaccineId
                : vaccineId // ignore: cast_nullable_to_non_nullable
                    as int?,
        vaccineName:
            freezed == vaccineName
                ? _value.vaccineName
                : vaccineName // ignore: cast_nullable_to_non_nullable
                    as String?,
        vaccineDescription:
            freezed == vaccineDescription
                ? _value.vaccineDescription
                : vaccineDescription // ignore: cast_nullable_to_non_nullable
                    as String?,
        vaccineAgeGroup:
            freezed == vaccineAgeGroup
                ? _value.vaccineAgeGroup
                : vaccineAgeGroup // ignore: cast_nullable_to_non_nullable
                    as String?,
        doctorFirstName:
            freezed == doctorFirstName
                ? _value.doctorFirstName
                : doctorFirstName // ignore: cast_nullable_to_non_nullable
                    as String?,
        doctorLastName:
            freezed == doctorLastName
                ? _value.doctorLastName
                : doctorLastName // ignore: cast_nullable_to_non_nullable
                    as String?,
        notes:
            freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as String?,
        appointmentPaymentStatus:
            freezed == appointmentPaymentStatus
                ? _value.appointmentPaymentStatus
                : appointmentPaymentStatus // ignore: cast_nullable_to_non_nullable
                    as PaymentStatus?,
        nextVaccineDate:
            freezed == nextVaccineDate
                ? _value.nextVaccineDate
                : nextVaccineDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        appointmentReservationDate:
            freezed == appointmentReservationDate
                ? _value.appointmentReservationDate
                : appointmentReservationDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        doseNumber:
            freezed == doseNumber
                ? _value.doseNumber
                : doseNumber // ignore: cast_nullable_to_non_nullable
                    as int?,
        doctorId:
            freezed == doctorId
                ? _value.doctorId
                : doctorId // ignore: cast_nullable_to_non_nullable
                    as int?,
        appointmentId:
            freezed == appointmentId
                ? _value.appointmentId
                : appointmentId // ignore: cast_nullable_to_non_nullable
                    as int?,
        appointmentPrice:
            freezed == appointmentPrice
                ? _value.appointmentPrice
                : appointmentPrice // ignore: cast_nullable_to_non_nullable
                    as int?,
        vaccineRecommendedDoses:
            freezed == vaccineRecommendedDoses
                ? _value.vaccineRecommendedDoses
                : vaccineRecommendedDoses // ignore: cast_nullable_to_non_nullable
                    as int?,
        dose:
            freezed == dose
                ? _value.dose
                : dose // ignore: cast_nullable_to_non_nullable
                    as String?,
        isTaken:
            freezed == isTaken
                ? _value.isTaken
                : isTaken // ignore: cast_nullable_to_non_nullable
                    as int?,
        whenToTake:
            freezed == whenToTake
                ? _value.whenToTake
                : whenToTake // ignore: cast_nullable_to_non_nullable
                    as String?,
        recommended:
            freezed == recommended
                ? _value.recommended
                : recommended // ignore: cast_nullable_to_non_nullable
                    as VaccintaionType?,
        price:
            freezed == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VaccinationRecordImpl implements _VaccinationRecord {
  _$VaccinationRecordImpl({
    this.id,
    @JsonKey(name: 'vaccine_id') this.vaccineId,
    @JsonKey(name: 'vaccine_name') this.vaccineName,
    @JsonKey(name: 'vaccine_description') this.vaccineDescription,
    @JsonKey(name: 'vaccine_age_group') this.vaccineAgeGroup,
    @JsonKey(name: 'doctor_first_name') this.doctorFirstName,
    @JsonKey(name: 'doctor_last_name') this.doctorLastName,
    this.notes,
    @JsonKey(name: 'appointment_payment_status') this.appointmentPaymentStatus,
    @JsonKey(name: 'next_vaccine_date') this.nextVaccineDate,
    @JsonKey(name: 'appointment_reservation_date')
    this.appointmentReservationDate,
    @JsonKey(name: 'dose_number') this.doseNumber,
    @JsonKey(name: 'doctor_id') this.doctorId,
    @JsonKey(name: 'appointment_id') this.appointmentId,
    @JsonKey(name: 'appointment_price') this.appointmentPrice,
    @JsonKey(name: 'vaccine_recommended_doses') this.vaccineRecommendedDoses,
    this.dose,
    this.isTaken,
    @JsonKey(name: 'when_to_take') this.whenToTake,
    this.recommended,
    this.price,
  });

  factory _$VaccinationRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$VaccinationRecordImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'vaccine_id')
  final int? vaccineId;
  @override
  @JsonKey(name: 'vaccine_name')
  final String? vaccineName;
  @override
  @JsonKey(name: 'vaccine_description')
  final String? vaccineDescription;
  @override
  @JsonKey(name: 'vaccine_age_group')
  final String? vaccineAgeGroup;
  @override
  @JsonKey(name: 'doctor_first_name')
  final String? doctorFirstName;
  @override
  @JsonKey(name: 'doctor_last_name')
  final String? doctorLastName;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'appointment_payment_status')
  final PaymentStatus? appointmentPaymentStatus;
  @override
  @JsonKey(name: 'next_vaccine_date')
  final DateTime? nextVaccineDate;
  @override
  @JsonKey(name: 'appointment_reservation_date')
  final DateTime? appointmentReservationDate;
  @override
  @JsonKey(name: 'dose_number')
  final int? doseNumber;
  @override
  @JsonKey(name: 'doctor_id')
  final int? doctorId;
  @override
  @JsonKey(name: 'appointment_id')
  final int? appointmentId;
  @override
  @JsonKey(name: 'appointment_price')
  final int? appointmentPrice;
  @override
  @JsonKey(name: 'vaccine_recommended_doses')
  final int? vaccineRecommendedDoses;
  @override
  final String? dose;
  @override
  final int? isTaken;
  @override
  @JsonKey(name: 'when_to_take')
  final String? whenToTake;
  @override
  final VaccintaionType? recommended;
  @override
  final String? price;

  @override
  String toString() {
    return 'VaccinationRecord(id: $id, vaccineId: $vaccineId, vaccineName: $vaccineName, vaccineDescription: $vaccineDescription, vaccineAgeGroup: $vaccineAgeGroup, doctorFirstName: $doctorFirstName, doctorLastName: $doctorLastName, notes: $notes, appointmentPaymentStatus: $appointmentPaymentStatus, nextVaccineDate: $nextVaccineDate, appointmentReservationDate: $appointmentReservationDate, doseNumber: $doseNumber, doctorId: $doctorId, appointmentId: $appointmentId, appointmentPrice: $appointmentPrice, vaccineRecommendedDoses: $vaccineRecommendedDoses, dose: $dose, isTaken: $isTaken, whenToTake: $whenToTake, recommended: $recommended, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaccinationRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vaccineId, vaccineId) ||
                other.vaccineId == vaccineId) &&
            (identical(other.vaccineName, vaccineName) ||
                other.vaccineName == vaccineName) &&
            (identical(other.vaccineDescription, vaccineDescription) ||
                other.vaccineDescription == vaccineDescription) &&
            (identical(other.vaccineAgeGroup, vaccineAgeGroup) ||
                other.vaccineAgeGroup == vaccineAgeGroup) &&
            (identical(other.doctorFirstName, doctorFirstName) ||
                other.doctorFirstName == doctorFirstName) &&
            (identical(other.doctorLastName, doctorLastName) ||
                other.doctorLastName == doctorLastName) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(
                  other.appointmentPaymentStatus,
                  appointmentPaymentStatus,
                ) ||
                other.appointmentPaymentStatus == appointmentPaymentStatus) &&
            (identical(other.nextVaccineDate, nextVaccineDate) ||
                other.nextVaccineDate == nextVaccineDate) &&
            (identical(
                  other.appointmentReservationDate,
                  appointmentReservationDate,
                ) ||
                other.appointmentReservationDate ==
                    appointmentReservationDate) &&
            (identical(other.doseNumber, doseNumber) ||
                other.doseNumber == doseNumber) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.appointmentPrice, appointmentPrice) ||
                other.appointmentPrice == appointmentPrice) &&
            (identical(
                  other.vaccineRecommendedDoses,
                  vaccineRecommendedDoses,
                ) ||
                other.vaccineRecommendedDoses == vaccineRecommendedDoses) &&
            (identical(other.dose, dose) || other.dose == dose) &&
            (identical(other.isTaken, isTaken) || other.isTaken == isTaken) &&
            (identical(other.whenToTake, whenToTake) ||
                other.whenToTake == whenToTake) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    vaccineId,
    vaccineName,
    vaccineDescription,
    vaccineAgeGroup,
    doctorFirstName,
    doctorLastName,
    notes,
    appointmentPaymentStatus,
    nextVaccineDate,
    appointmentReservationDate,
    doseNumber,
    doctorId,
    appointmentId,
    appointmentPrice,
    vaccineRecommendedDoses,
    dose,
    isTaken,
    whenToTake,
    recommended,
    price,
  ]);

  /// Create a copy of VaccinationRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VaccinationRecordImplCopyWith<_$VaccinationRecordImpl> get copyWith =>
      __$$VaccinationRecordImplCopyWithImpl<_$VaccinationRecordImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$VaccinationRecordImplToJson(this);
  }
}

abstract class _VaccinationRecord implements VaccinationRecord {
  factory _VaccinationRecord({
    final int? id,
    @JsonKey(name: 'vaccine_id') final int? vaccineId,
    @JsonKey(name: 'vaccine_name') final String? vaccineName,
    @JsonKey(name: 'vaccine_description') final String? vaccineDescription,
    @JsonKey(name: 'vaccine_age_group') final String? vaccineAgeGroup,
    @JsonKey(name: 'doctor_first_name') final String? doctorFirstName,
    @JsonKey(name: 'doctor_last_name') final String? doctorLastName,
    final String? notes,
    @JsonKey(name: 'appointment_payment_status')
    final PaymentStatus? appointmentPaymentStatus,
    @JsonKey(name: 'next_vaccine_date') final DateTime? nextVaccineDate,
    @JsonKey(name: 'appointment_reservation_date')
    final DateTime? appointmentReservationDate,
    @JsonKey(name: 'dose_number') final int? doseNumber,
    @JsonKey(name: 'doctor_id') final int? doctorId,
    @JsonKey(name: 'appointment_id') final int? appointmentId,
    @JsonKey(name: 'appointment_price') final int? appointmentPrice,
    @JsonKey(name: 'vaccine_recommended_doses')
    final int? vaccineRecommendedDoses,
    final String? dose,
    final int? isTaken,
    @JsonKey(name: 'when_to_take') final String? whenToTake,
    final VaccintaionType? recommended,
    final String? price,
  }) = _$VaccinationRecordImpl;

  factory _VaccinationRecord.fromJson(Map<String, dynamic> json) =
      _$VaccinationRecordImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'vaccine_id')
  int? get vaccineId;
  @override
  @JsonKey(name: 'vaccine_name')
  String? get vaccineName;
  @override
  @JsonKey(name: 'vaccine_description')
  String? get vaccineDescription;
  @override
  @JsonKey(name: 'vaccine_age_group')
  String? get vaccineAgeGroup;
  @override
  @JsonKey(name: 'doctor_first_name')
  String? get doctorFirstName;
  @override
  @JsonKey(name: 'doctor_last_name')
  String? get doctorLastName;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'appointment_payment_status')
  PaymentStatus? get appointmentPaymentStatus;
  @override
  @JsonKey(name: 'next_vaccine_date')
  DateTime? get nextVaccineDate;
  @override
  @JsonKey(name: 'appointment_reservation_date')
  DateTime? get appointmentReservationDate;
  @override
  @JsonKey(name: 'dose_number')
  int? get doseNumber;
  @override
  @JsonKey(name: 'doctor_id')
  int? get doctorId;
  @override
  @JsonKey(name: 'appointment_id')
  int? get appointmentId;
  @override
  @JsonKey(name: 'appointment_price')
  int? get appointmentPrice;
  @override
  @JsonKey(name: 'vaccine_recommended_doses')
  int? get vaccineRecommendedDoses;
  @override
  String? get dose;
  @override
  int? get isTaken;
  @override
  @JsonKey(name: 'when_to_take')
  String? get whenToTake;
  @override
  VaccintaionType? get recommended;
  @override
  String? get price;

  /// Create a copy of VaccinationRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VaccinationRecordImplCopyWith<_$VaccinationRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
