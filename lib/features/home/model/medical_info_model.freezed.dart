// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MedicalInfoModel _$MedicalInfoModelFromJson(Map<String, dynamic> json) {
  return _MedicalInfoModel.fromJson(json);
}

/// @nodoc
mixin _$MedicalInfoModel {
  int? get id => throw _privateConstructorUsedError;
  String? get diagnosis => throw _privateConstructorUsedError;
  String? get doctorNote => throw _privateConstructorUsedError;
  String? get patientNote => throw _privateConstructorUsedError;
  PrescriptionModel? get prescription => throw _privateConstructorUsedError;

  /// Serializes this MedicalInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicalInfoModelCopyWith<MedicalInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalInfoModelCopyWith<$Res> {
  factory $MedicalInfoModelCopyWith(
    MedicalInfoModel value,
    $Res Function(MedicalInfoModel) then,
  ) = _$MedicalInfoModelCopyWithImpl<$Res, MedicalInfoModel>;
  @useResult
  $Res call({
    int? id,
    String? diagnosis,
    String? doctorNote,
    String? patientNote,
    PrescriptionModel? prescription,
  });

  $PrescriptionModelCopyWith<$Res>? get prescription;
}

/// @nodoc
class _$MedicalInfoModelCopyWithImpl<$Res, $Val extends MedicalInfoModel>
    implements $MedicalInfoModelCopyWith<$Res> {
  _$MedicalInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            diagnosis:
                freezed == diagnosis
                    ? _value.diagnosis
                    : diagnosis // ignore: cast_nullable_to_non_nullable
                        as String?,
            doctorNote:
                freezed == doctorNote
                    ? _value.doctorNote
                    : doctorNote // ignore: cast_nullable_to_non_nullable
                        as String?,
            patientNote:
                freezed == patientNote
                    ? _value.patientNote
                    : patientNote // ignore: cast_nullable_to_non_nullable
                        as String?,
            prescription:
                freezed == prescription
                    ? _value.prescription
                    : prescription // ignore: cast_nullable_to_non_nullable
                        as PrescriptionModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of MedicalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrescriptionModelCopyWith<$Res>? get prescription {
    if (_value.prescription == null) {
      return null;
    }

    return $PrescriptionModelCopyWith<$Res>(_value.prescription!, (value) {
      return _then(_value.copyWith(prescription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MedicalInfoModelImplCopyWith<$Res>
    implements $MedicalInfoModelCopyWith<$Res> {
  factory _$$MedicalInfoModelImplCopyWith(
    _$MedicalInfoModelImpl value,
    $Res Function(_$MedicalInfoModelImpl) then,
  ) = __$$MedicalInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? diagnosis,
    String? doctorNote,
    String? patientNote,
    PrescriptionModel? prescription,
  });

  @override
  $PrescriptionModelCopyWith<$Res>? get prescription;
}

/// @nodoc
class __$$MedicalInfoModelImplCopyWithImpl<$Res>
    extends _$MedicalInfoModelCopyWithImpl<$Res, _$MedicalInfoModelImpl>
    implements _$$MedicalInfoModelImplCopyWith<$Res> {
  __$$MedicalInfoModelImplCopyWithImpl(
    _$MedicalInfoModelImpl _value,
    $Res Function(_$MedicalInfoModelImpl) _then,
  ) : super(_value, _then);

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
    return _then(
      _$MedicalInfoModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        diagnosis:
            freezed == diagnosis
                ? _value.diagnosis
                : diagnosis // ignore: cast_nullable_to_non_nullable
                    as String?,
        doctorNote:
            freezed == doctorNote
                ? _value.doctorNote
                : doctorNote // ignore: cast_nullable_to_non_nullable
                    as String?,
        patientNote:
            freezed == patientNote
                ? _value.patientNote
                : patientNote // ignore: cast_nullable_to_non_nullable
                    as String?,
        prescription:
            freezed == prescription
                ? _value.prescription
                : prescription // ignore: cast_nullable_to_non_nullable
                    as PrescriptionModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicalInfoModelImpl implements _MedicalInfoModel {
  _$MedicalInfoModelImpl({
    this.id,
    this.diagnosis,
    this.doctorNote,
    this.patientNote,
    this.prescription,
  });

  factory _$MedicalInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicalInfoModelImplFromJson(json);

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

  @override
  String toString() {
    return 'MedicalInfoModel(id: $id, diagnosis: $diagnosis, doctorNote: $doctorNote, patientNote: $patientNote, prescription: $prescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicalInfoModelImpl &&
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
    runtimeType,
    id,
    diagnosis,
    doctorNote,
    patientNote,
    prescription,
  );

  /// Create a copy of MedicalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicalInfoModelImplCopyWith<_$MedicalInfoModelImpl> get copyWith =>
      __$$MedicalInfoModelImplCopyWithImpl<_$MedicalInfoModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicalInfoModelImplToJson(this);
  }
}

abstract class _MedicalInfoModel implements MedicalInfoModel {
  factory _MedicalInfoModel({
    final int? id,
    final String? diagnosis,
    final String? doctorNote,
    final String? patientNote,
    final PrescriptionModel? prescription,
  }) = _$MedicalInfoModelImpl;

  factory _MedicalInfoModel.fromJson(Map<String, dynamic> json) =
      _$MedicalInfoModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get diagnosis;
  @override
  String? get doctorNote;
  @override
  String? get patientNote;
  @override
  PrescriptionModel? get prescription;

  /// Create a copy of MedicalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicalInfoModelImplCopyWith<_$MedicalInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
