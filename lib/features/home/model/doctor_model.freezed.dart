// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DoctorModel {
  int? get id;
  @JsonKey(name: 'first_name')
  String? get firstName;
  @JsonKey(name: 'last_name')
  String? get lastName;
  String? get phone;
  String? get clinic;
  @JsonKey(name: 'photo_path')
  String? get photoPath;
  bool? get treated;
  String? get speciality;
  String? get department;
  @JsonKey(name: 'final_rate')
  String? get finalRate;
  double? get visitFee;
  String? get excperience;
  String? get status;

  /// Create a copy of DoctorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DoctorModelCopyWith<DoctorModel> get copyWith =>
      _$DoctorModelCopyWithImpl<DoctorModel>(this as DoctorModel, _$identity);

  /// Serializes this DoctorModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DoctorModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.clinic, clinic) || other.clinic == clinic) &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath) &&
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
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      phone,
      clinic,
      photoPath,
      treated,
      speciality,
      department,
      finalRate,
      visitFee,
      excperience,
      status);

  @override
  String toString() {
    return 'DoctorModel(id: $id, firstName: $firstName, lastName: $lastName, phone: $phone, clinic: $clinic, photoPath: $photoPath, treated: $treated, speciality: $speciality, department: $department, finalRate: $finalRate, visitFee: $visitFee, excperience: $excperience, status: $status)';
  }
}

/// @nodoc
abstract mixin class $DoctorModelCopyWith<$Res> {
  factory $DoctorModelCopyWith(
          DoctorModel value, $Res Function(DoctorModel) _then) =
      _$DoctorModelCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? phone,
      String? clinic,
      @JsonKey(name: 'photo_path') String? photoPath,
      bool? treated,
      String? speciality,
      String? department,
      @JsonKey(name: 'final_rate') String? finalRate,
      double? visitFee,
      String? excperience,
      String? status});
}

/// @nodoc
class _$DoctorModelCopyWithImpl<$Res> implements $DoctorModelCopyWith<$Res> {
  _$DoctorModelCopyWithImpl(this._self, this._then);

  final DoctorModel _self;
  final $Res Function(DoctorModel) _then;

  /// Create a copy of DoctorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? clinic = freezed,
    Object? photoPath = freezed,
    Object? treated = freezed,
    Object? speciality = freezed,
    Object? department = freezed,
    Object? finalRate = freezed,
    Object? visitFee = freezed,
    Object? excperience = freezed,
    Object? status = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      clinic: freezed == clinic
          ? _self.clinic
          : clinic // ignore: cast_nullable_to_non_nullable
              as String?,
      photoPath: freezed == photoPath
          ? _self.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      treated: freezed == treated
          ? _self.treated
          : treated // ignore: cast_nullable_to_non_nullable
              as bool?,
      speciality: freezed == speciality
          ? _self.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      finalRate: freezed == finalRate
          ? _self.finalRate
          : finalRate // ignore: cast_nullable_to_non_nullable
              as String?,
      visitFee: freezed == visitFee
          ? _self.visitFee
          : visitFee // ignore: cast_nullable_to_non_nullable
              as double?,
      excperience: freezed == excperience
          ? _self.excperience
          : excperience // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DoctorModel implements DoctorModel {
  _DoctorModel(
      {this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.phone,
      this.clinic,
      @JsonKey(name: 'photo_path') this.photoPath,
      this.treated,
      this.speciality,
      this.department,
      @JsonKey(name: 'final_rate') this.finalRate,
      this.visitFee,
      this.excperience,
      this.status});
  factory _DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);

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
  final String? clinic;
  @override
  @JsonKey(name: 'photo_path')
  final String? photoPath;
  @override
  final bool? treated;
  @override
  final String? speciality;
  @override
  final String? department;
  @override
  @JsonKey(name: 'final_rate')
  final String? finalRate;
  @override
  final double? visitFee;
  @override
  final String? excperience;
  @override
  final String? status;

  /// Create a copy of DoctorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DoctorModelCopyWith<_DoctorModel> get copyWith =>
      __$DoctorModelCopyWithImpl<_DoctorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DoctorModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DoctorModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.clinic, clinic) || other.clinic == clinic) &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath) &&
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
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      phone,
      clinic,
      photoPath,
      treated,
      speciality,
      department,
      finalRate,
      visitFee,
      excperience,
      status);

  @override
  String toString() {
    return 'DoctorModel(id: $id, firstName: $firstName, lastName: $lastName, phone: $phone, clinic: $clinic, photoPath: $photoPath, treated: $treated, speciality: $speciality, department: $department, finalRate: $finalRate, visitFee: $visitFee, excperience: $excperience, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$DoctorModelCopyWith<$Res>
    implements $DoctorModelCopyWith<$Res> {
  factory _$DoctorModelCopyWith(
          _DoctorModel value, $Res Function(_DoctorModel) _then) =
      __$DoctorModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? phone,
      String? clinic,
      @JsonKey(name: 'photo_path') String? photoPath,
      bool? treated,
      String? speciality,
      String? department,
      @JsonKey(name: 'final_rate') String? finalRate,
      double? visitFee,
      String? excperience,
      String? status});
}

/// @nodoc
class __$DoctorModelCopyWithImpl<$Res> implements _$DoctorModelCopyWith<$Res> {
  __$DoctorModelCopyWithImpl(this._self, this._then);

  final _DoctorModel _self;
  final $Res Function(_DoctorModel) _then;

  /// Create a copy of DoctorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? clinic = freezed,
    Object? photoPath = freezed,
    Object? treated = freezed,
    Object? speciality = freezed,
    Object? department = freezed,
    Object? finalRate = freezed,
    Object? visitFee = freezed,
    Object? excperience = freezed,
    Object? status = freezed,
  }) {
    return _then(_DoctorModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      clinic: freezed == clinic
          ? _self.clinic
          : clinic // ignore: cast_nullable_to_non_nullable
              as String?,
      photoPath: freezed == photoPath
          ? _self.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      treated: freezed == treated
          ? _self.treated
          : treated // ignore: cast_nullable_to_non_nullable
              as bool?,
      speciality: freezed == speciality
          ? _self.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      finalRate: freezed == finalRate
          ? _self.finalRate
          : finalRate // ignore: cast_nullable_to_non_nullable
              as String?,
      visitFee: freezed == visitFee
          ? _self.visitFee
          : visitFee // ignore: cast_nullable_to_non_nullable
              as double?,
      excperience: freezed == excperience
          ? _self.excperience
          : excperience // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
