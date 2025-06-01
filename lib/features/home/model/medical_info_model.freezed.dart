// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MedicalInfoModel {
  int? get id;
  String? get diagnosis;
  String? get doctorNote;
  String? get patientNote;
  PrescriptionModel? get prescription;

  /// Create a copy of MedicalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MedicalInfoModelCopyWith<MedicalInfoModel> get copyWith =>
      _$MedicalInfoModelCopyWithImpl<MedicalInfoModel>(
          this as MedicalInfoModel, _$identity);

  /// Serializes this MedicalInfoModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MedicalInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.diagnosis, diagnosis) ||
                other.diagnosis == diagnosis) &&
            (identical(other.doctorNote, doctorNote) ||
                other.doctorNote == doctorNote) &&
            (identical(other.patientNote, patientNote) ||
                other.patientNote == patientNote) &&
            (identical(other.prescription, prescription) ||
                other.prescription == prescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, diagnosis, doctorNote, patientNote, prescription);

  @override
  String toString() {
    return 'MedicalInfoModel(id: $id, diagnosis: $diagnosis, doctorNote: $doctorNote, patientNote: $patientNote, prescription: $prescription)';
  }
}

/// @nodoc
abstract mixin class $MedicalInfoModelCopyWith<$Res> {
  factory $MedicalInfoModelCopyWith(
          MedicalInfoModel value, $Res Function(MedicalInfoModel) _then) =
      _$MedicalInfoModelCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String? diagnosis,
      String? doctorNote,
      String? patientNote,
      PrescriptionModel? prescription});

  $PrescriptionModelCopyWith<$Res>? get prescription;
}

/// @nodoc
class _$MedicalInfoModelCopyWithImpl<$Res>
    implements $MedicalInfoModelCopyWith<$Res> {
  _$MedicalInfoModelCopyWithImpl(this._self, this._then);

  final MedicalInfoModel _self;
  final $Res Function(MedicalInfoModel) _then;

  /// Create a copy of MedicalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? diagnosis = freezed,
    Object? doctorNote = freezed,
    Object? patientNote = freezed,
    Object? prescription = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      diagnosis: freezed == diagnosis
          ? _self.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorNote: freezed == doctorNote
          ? _self.doctorNote
          : doctorNote // ignore: cast_nullable_to_non_nullable
              as String?,
      patientNote: freezed == patientNote
          ? _self.patientNote
          : patientNote // ignore: cast_nullable_to_non_nullable
              as String?,
      prescription: freezed == prescription
          ? _self.prescription
          : prescription // ignore: cast_nullable_to_non_nullable
              as PrescriptionModel?,
    ));
  }

  /// Create a copy of MedicalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrescriptionModelCopyWith<$Res>? get prescription {
    if (_self.prescription == null) {
      return null;
    }

    return $PrescriptionModelCopyWith<$Res>(_self.prescription!, (value) {
      return _then(_self.copyWith(prescription: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _MedicalInfoModel implements MedicalInfoModel {
  _MedicalInfoModel(
      {this.id,
      this.diagnosis,
      this.doctorNote,
      this.patientNote,
      this.prescription});
  factory _MedicalInfoModel.fromJson(Map<String, dynamic> json) =>
      _$MedicalInfoModelFromJson(json);

  @override
  final int? id;
  @override
  final String? diagnosis;
  @override
  final String? doctorNote;
  @override
  final String? patientNote;
  @override
  final PrescriptionModel? prescription;

  /// Create a copy of MedicalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MedicalInfoModelCopyWith<_MedicalInfoModel> get copyWith =>
      __$MedicalInfoModelCopyWithImpl<_MedicalInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MedicalInfoModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MedicalInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.diagnosis, diagnosis) ||
                other.diagnosis == diagnosis) &&
            (identical(other.doctorNote, doctorNote) ||
                other.doctorNote == doctorNote) &&
            (identical(other.patientNote, patientNote) ||
                other.patientNote == patientNote) &&
            (identical(other.prescription, prescription) ||
                other.prescription == prescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, diagnosis, doctorNote, patientNote, prescription);

  @override
  String toString() {
    return 'MedicalInfoModel(id: $id, diagnosis: $diagnosis, doctorNote: $doctorNote, patientNote: $patientNote, prescription: $prescription)';
  }
}

/// @nodoc
abstract mixin class _$MedicalInfoModelCopyWith<$Res>
    implements $MedicalInfoModelCopyWith<$Res> {
  factory _$MedicalInfoModelCopyWith(
          _MedicalInfoModel value, $Res Function(_MedicalInfoModel) _then) =
      __$MedicalInfoModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String? diagnosis,
      String? doctorNote,
      String? patientNote,
      PrescriptionModel? prescription});

  @override
  $PrescriptionModelCopyWith<$Res>? get prescription;
}

/// @nodoc
class __$MedicalInfoModelCopyWithImpl<$Res>
    implements _$MedicalInfoModelCopyWith<$Res> {
  __$MedicalInfoModelCopyWithImpl(this._self, this._then);

  final _MedicalInfoModel _self;
  final $Res Function(_MedicalInfoModel) _then;

  /// Create a copy of MedicalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? diagnosis = freezed,
    Object? doctorNote = freezed,
    Object? patientNote = freezed,
    Object? prescription = freezed,
  }) {
    return _then(_MedicalInfoModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      diagnosis: freezed == diagnosis
          ? _self.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorNote: freezed == doctorNote
          ? _self.doctorNote
          : doctorNote // ignore: cast_nullable_to_non_nullable
              as String?,
      patientNote: freezed == patientNote
          ? _self.patientNote
          : patientNote // ignore: cast_nullable_to_non_nullable
              as String?,
      prescription: freezed == prescription
          ? _self.prescription
          : prescription // ignore: cast_nullable_to_non_nullable
              as PrescriptionModel?,
    ));
  }

  /// Create a copy of MedicalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrescriptionModelCopyWith<$Res>? get prescription {
    if (_self.prescription == null) {
      return null;
    }

    return $PrescriptionModelCopyWith<$Res>(_self.prescription!, (value) {
      return _then(_self.copyWith(prescription: value));
    });
  }
}

// dart format on
