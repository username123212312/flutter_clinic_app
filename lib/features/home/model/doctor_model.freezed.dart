// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) {
  return _DoctorModel.fromJson(json);
}

/// @nodoc
mixin _$DoctorModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'clinic_id')
  int? get clinicId => throw _privateConstructorUsedError;
  String? get clinic => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_path')
  String? get photoPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'professional_title')
  String? get professionalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_visit_duration')
  String? get averageVisitDuration => throw _privateConstructorUsedError;
  int? get treated => throw _privateConstructorUsedError;
  String? get speciality => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_rate')
  String? get finalRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_fee')
  double? get visitFee => throw _privateConstructorUsedError;
  String? get excperience => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get sign => throw _privateConstructorUsedError;
  List<Schedule>? get schedule => throw _privateConstructorUsedError;

  /// Serializes this DoctorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DoctorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorModelCopyWith<DoctorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorModelCopyWith<$Res> {
  factory $DoctorModelCopyWith(
    DoctorModel value,
    $Res Function(DoctorModel) then,
  ) = _$DoctorModelCopyWithImpl<$Res, DoctorModel>;
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? phone,
    @JsonKey(name: 'clinic_id') int? clinicId,
    String? clinic,
    @JsonKey(name: 'photo_path') String? photoPath,
    @JsonKey(name: 'professional_title') String? professionalTitle,
    @JsonKey(name: 'average_visit_duration') String? averageVisitDuration,
    int? treated,
    String? speciality,
    String? department,
    @JsonKey(name: 'final_rate') String? finalRate,
    @JsonKey(name: 'visit_fee') double? visitFee,
    String? excperience,
    String? status,
    String? sign,
    List<Schedule>? schedule,
  });
}

/// @nodoc
class _$DoctorModelCopyWithImpl<$Res, $Val extends DoctorModel>
    implements $DoctorModelCopyWith<$Res> {
  _$DoctorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? clinicId = freezed,
    Object? clinic = freezed,
    Object? photoPath = freezed,
    Object? professionalTitle = freezed,
    Object? averageVisitDuration = freezed,
    Object? treated = freezed,
    Object? speciality = freezed,
    Object? department = freezed,
    Object? finalRate = freezed,
    Object? visitFee = freezed,
    Object? excperience = freezed,
    Object? status = freezed,
    Object? sign = freezed,
    Object? schedule = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            firstName:
                freezed == firstName
                    ? _value.firstName
                    : firstName // ignore: cast_nullable_to_non_nullable
                        as String?,
            lastName:
                freezed == lastName
                    ? _value.lastName
                    : lastName // ignore: cast_nullable_to_non_nullable
                        as String?,
            phone:
                freezed == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as String?,
            clinicId:
                freezed == clinicId
                    ? _value.clinicId
                    : clinicId // ignore: cast_nullable_to_non_nullable
                        as int?,
            clinic:
                freezed == clinic
                    ? _value.clinic
                    : clinic // ignore: cast_nullable_to_non_nullable
                        as String?,
            photoPath:
                freezed == photoPath
                    ? _value.photoPath
                    : photoPath // ignore: cast_nullable_to_non_nullable
                        as String?,
            professionalTitle:
                freezed == professionalTitle
                    ? _value.professionalTitle
                    : professionalTitle // ignore: cast_nullable_to_non_nullable
                        as String?,
            averageVisitDuration:
                freezed == averageVisitDuration
                    ? _value.averageVisitDuration
                    : averageVisitDuration // ignore: cast_nullable_to_non_nullable
                        as String?,
            treated:
                freezed == treated
                    ? _value.treated
                    : treated // ignore: cast_nullable_to_non_nullable
                        as int?,
            speciality:
                freezed == speciality
                    ? _value.speciality
                    : speciality // ignore: cast_nullable_to_non_nullable
                        as String?,
            department:
                freezed == department
                    ? _value.department
                    : department // ignore: cast_nullable_to_non_nullable
                        as String?,
            finalRate:
                freezed == finalRate
                    ? _value.finalRate
                    : finalRate // ignore: cast_nullable_to_non_nullable
                        as String?,
            visitFee:
                freezed == visitFee
                    ? _value.visitFee
                    : visitFee // ignore: cast_nullable_to_non_nullable
                        as double?,
            excperience:
                freezed == excperience
                    ? _value.excperience
                    : excperience // ignore: cast_nullable_to_non_nullable
                        as String?,
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String?,
            sign:
                freezed == sign
                    ? _value.sign
                    : sign // ignore: cast_nullable_to_non_nullable
                        as String?,
            schedule:
                freezed == schedule
                    ? _value.schedule
                    : schedule // ignore: cast_nullable_to_non_nullable
                        as List<Schedule>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DoctorModelImplCopyWith<$Res>
    implements $DoctorModelCopyWith<$Res> {
  factory _$$DoctorModelImplCopyWith(
    _$DoctorModelImpl value,
    $Res Function(_$DoctorModelImpl) then,
  ) = __$$DoctorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? phone,
    @JsonKey(name: 'clinic_id') int? clinicId,
    String? clinic,
    @JsonKey(name: 'photo_path') String? photoPath,
    @JsonKey(name: 'professional_title') String? professionalTitle,
    @JsonKey(name: 'average_visit_duration') String? averageVisitDuration,
    int? treated,
    String? speciality,
    String? department,
    @JsonKey(name: 'final_rate') String? finalRate,
    @JsonKey(name: 'visit_fee') double? visitFee,
    String? excperience,
    String? status,
    String? sign,
    List<Schedule>? schedule,
  });
}

/// @nodoc
class __$$DoctorModelImplCopyWithImpl<$Res>
    extends _$DoctorModelCopyWithImpl<$Res, _$DoctorModelImpl>
    implements _$$DoctorModelImplCopyWith<$Res> {
  __$$DoctorModelImplCopyWithImpl(
    _$DoctorModelImpl _value,
    $Res Function(_$DoctorModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? clinicId = freezed,
    Object? clinic = freezed,
    Object? photoPath = freezed,
    Object? professionalTitle = freezed,
    Object? averageVisitDuration = freezed,
    Object? treated = freezed,
    Object? speciality = freezed,
    Object? department = freezed,
    Object? finalRate = freezed,
    Object? visitFee = freezed,
    Object? excperience = freezed,
    Object? status = freezed,
    Object? sign = freezed,
    Object? schedule = freezed,
  }) {
    return _then(
      _$DoctorModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        firstName:
            freezed == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                    as String?,
        lastName:
            freezed == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                    as String?,
        phone:
            freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String?,
        clinicId:
            freezed == clinicId
                ? _value.clinicId
                : clinicId // ignore: cast_nullable_to_non_nullable
                    as int?,
        clinic:
            freezed == clinic
                ? _value.clinic
                : clinic // ignore: cast_nullable_to_non_nullable
                    as String?,
        photoPath:
            freezed == photoPath
                ? _value.photoPath
                : photoPath // ignore: cast_nullable_to_non_nullable
                    as String?,
        professionalTitle:
            freezed == professionalTitle
                ? _value.professionalTitle
                : professionalTitle // ignore: cast_nullable_to_non_nullable
                    as String?,
        averageVisitDuration:
            freezed == averageVisitDuration
                ? _value.averageVisitDuration
                : averageVisitDuration // ignore: cast_nullable_to_non_nullable
                    as String?,
        treated:
            freezed == treated
                ? _value.treated
                : treated // ignore: cast_nullable_to_non_nullable
                    as int?,
        speciality:
            freezed == speciality
                ? _value.speciality
                : speciality // ignore: cast_nullable_to_non_nullable
                    as String?,
        department:
            freezed == department
                ? _value.department
                : department // ignore: cast_nullable_to_non_nullable
                    as String?,
        finalRate:
            freezed == finalRate
                ? _value.finalRate
                : finalRate // ignore: cast_nullable_to_non_nullable
                    as String?,
        visitFee:
            freezed == visitFee
                ? _value.visitFee
                : visitFee // ignore: cast_nullable_to_non_nullable
                    as double?,
        excperience:
            freezed == excperience
                ? _value.excperience
                : excperience // ignore: cast_nullable_to_non_nullable
                    as String?,
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String?,
        sign:
            freezed == sign
                ? _value.sign
                : sign // ignore: cast_nullable_to_non_nullable
                    as String?,
        schedule:
            freezed == schedule
                ? _value._schedule
                : schedule // ignore: cast_nullable_to_non_nullable
                    as List<Schedule>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorModelImpl implements _DoctorModel {
  _$DoctorModelImpl({
    this.id,
    @JsonKey(name: 'first_name') this.firstName,
    @JsonKey(name: 'last_name') this.lastName,
    this.phone,
    @JsonKey(name: 'clinic_id') this.clinicId,
    this.clinic,
    @JsonKey(name: 'photo_path') this.photoPath,
    @JsonKey(name: 'professional_title') this.professionalTitle,
    @JsonKey(name: 'average_visit_duration') this.averageVisitDuration,
    this.treated,
    this.speciality,
    this.department,
    @JsonKey(name: 'final_rate') this.finalRate,
    @JsonKey(name: 'visit_fee') this.visitFee,
    this.excperience,
    this.status,
    this.sign,
    final List<Schedule>? schedule,
  }) : _schedule = schedule;

  factory _$DoctorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'clinic_id')
  final int? clinicId;
  @override
  final String? clinic;
  @override
  @JsonKey(name: 'photo_path')
  final String? photoPath;
  @override
  @JsonKey(name: 'professional_title')
  final String? professionalTitle;
  @override
  @JsonKey(name: 'average_visit_duration')
  final String? averageVisitDuration;
  @override
  final int? treated;
  @override
  final String? speciality;
  @override
  final String? department;
  @override
  @JsonKey(name: 'final_rate')
  final String? finalRate;
  @override
  @JsonKey(name: 'visit_fee')
  final double? visitFee;
  @override
  final String? excperience;
  @override
  final String? status;
  @override
  final String? sign;
  final List<Schedule>? _schedule;
  @override
  List<Schedule>? get schedule {
    final value = _schedule;
    if (value == null) return null;
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DoctorModel(id: $id, firstName: $firstName, lastName: $lastName, phone: $phone, clinicId: $clinicId, clinic: $clinic, photoPath: $photoPath, professionalTitle: $professionalTitle, averageVisitDuration: $averageVisitDuration, treated: $treated, speciality: $speciality, department: $department, finalRate: $finalRate, visitFee: $visitFee, excperience: $excperience, status: $status, sign: $sign, schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.clinicId, clinicId) ||
                other.clinicId == clinicId) &&
            (identical(other.clinic, clinic) || other.clinic == clinic) &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath) &&
            (identical(other.professionalTitle, professionalTitle) ||
                other.professionalTitle == professionalTitle) &&
            (identical(other.averageVisitDuration, averageVisitDuration) ||
                other.averageVisitDuration == averageVisitDuration) &&
            (identical(other.treated, treated) || other.treated == treated) &&
            (identical(other.speciality, speciality) ||
                other.speciality == speciality) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.finalRate, finalRate) ||
                other.finalRate == finalRate) &&
            (identical(other.visitFee, visitFee) ||
                other.visitFee == visitFee) &&
            (identical(other.excperience, excperience) ||
                other.excperience == excperience) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sign, sign) || other.sign == sign) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    firstName,
    lastName,
    phone,
    clinicId,
    clinic,
    photoPath,
    professionalTitle,
    averageVisitDuration,
    treated,
    speciality,
    department,
    finalRate,
    visitFee,
    excperience,
    status,
    sign,
    const DeepCollectionEquality().hash(_schedule),
  );

  /// Create a copy of DoctorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorModelImplCopyWith<_$DoctorModelImpl> get copyWith =>
      __$$DoctorModelImplCopyWithImpl<_$DoctorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorModelImplToJson(this);
  }
}

abstract class _DoctorModel implements DoctorModel {
  factory _DoctorModel({
    final int? id,
    @JsonKey(name: 'first_name') final String? firstName,
    @JsonKey(name: 'last_name') final String? lastName,
    final String? phone,
    @JsonKey(name: 'clinic_id') final int? clinicId,
    final String? clinic,
    @JsonKey(name: 'photo_path') final String? photoPath,
    @JsonKey(name: 'professional_title') final String? professionalTitle,
    @JsonKey(name: 'average_visit_duration') final String? averageVisitDuration,
    final int? treated,
    final String? speciality,
    final String? department,
    @JsonKey(name: 'final_rate') final String? finalRate,
    @JsonKey(name: 'visit_fee') final double? visitFee,
    final String? excperience,
    final String? status,
    final String? sign,
    final List<Schedule>? schedule,
  }) = _$DoctorModelImpl;

  factory _DoctorModel.fromJson(Map<String, dynamic> json) =
      _$DoctorModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'clinic_id')
  int? get clinicId;
  @override
  String? get clinic;
  @override
  @JsonKey(name: 'photo_path')
  String? get photoPath;
  @override
  @JsonKey(name: 'professional_title')
  String? get professionalTitle;
  @override
  @JsonKey(name: 'average_visit_duration')
  String? get averageVisitDuration;
  @override
  int? get treated;
  @override
  String? get speciality;
  @override
  String? get department;
  @override
  @JsonKey(name: 'final_rate')
  String? get finalRate;
  @override
  @JsonKey(name: 'visit_fee')
  double? get visitFee;
  @override
  String? get excperience;
  @override
  String? get status;
  @override
  String? get sign;
  @override
  List<Schedule>? get schedule;

  /// Create a copy of DoctorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorModelImplCopyWith<_$DoctorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
