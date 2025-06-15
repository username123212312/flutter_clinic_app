// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AnalysisModel _$AnalysisModelFromJson(Map<String, dynamic> json) {
  return _AnalysisModel.fromJson(json);
}

/// @nodoc
mixin _$AnalysisModel {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  AnalysisStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'result_file')
  String? get resultFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'result_photo')
  String? get resultPhoto => throw _privateConstructorUsedError;
  String? get clinic => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_first_name')
  String? get patientFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_last_name')
  String? get patientLastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_id')
  int? get patientId => throw _privateConstructorUsedError;

  /// Serializes this AnalysisModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalysisModelCopyWith<AnalysisModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisModelCopyWith<$Res> {
  factory $AnalysisModelCopyWith(
    AnalysisModel value,
    $Res Function(AnalysisModel) then,
  ) = _$AnalysisModelCopyWithImpl<$Res, AnalysisModel>;
  @useResult
  $Res call({
    int? id,
    String name,
    String? description,
    AnalysisStatus? status,
    @JsonKey(name: 'result_file') String? resultFile,
    @JsonKey(name: 'result_photo') String? resultPhoto,
    String? clinic,
    @JsonKey(name: 'patient_first_name') String? patientFirstName,
    @JsonKey(name: 'patient_last_name') String? patientLastName,
    @JsonKey(name: 'patient_id') int? patientId,
  });
}

/// @nodoc
class _$AnalysisModelCopyWithImpl<$Res, $Val extends AnalysisModel>
    implements $AnalysisModelCopyWith<$Res> {
  _$AnalysisModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? status = freezed,
    Object? resultFile = freezed,
    Object? resultPhoto = freezed,
    Object? clinic = freezed,
    Object? patientFirstName = freezed,
    Object? patientLastName = freezed,
    Object? patientId = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as AnalysisStatus?,
            resultFile:
                freezed == resultFile
                    ? _value.resultFile
                    : resultFile // ignore: cast_nullable_to_non_nullable
                        as String?,
            resultPhoto:
                freezed == resultPhoto
                    ? _value.resultPhoto
                    : resultPhoto // ignore: cast_nullable_to_non_nullable
                        as String?,
            clinic:
                freezed == clinic
                    ? _value.clinic
                    : clinic // ignore: cast_nullable_to_non_nullable
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
            patientId:
                freezed == patientId
                    ? _value.patientId
                    : patientId // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AnalysisModelImplCopyWith<$Res>
    implements $AnalysisModelCopyWith<$Res> {
  factory _$$AnalysisModelImplCopyWith(
    _$AnalysisModelImpl value,
    $Res Function(_$AnalysisModelImpl) then,
  ) = __$$AnalysisModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String name,
    String? description,
    AnalysisStatus? status,
    @JsonKey(name: 'result_file') String? resultFile,
    @JsonKey(name: 'result_photo') String? resultPhoto,
    String? clinic,
    @JsonKey(name: 'patient_first_name') String? patientFirstName,
    @JsonKey(name: 'patient_last_name') String? patientLastName,
    @JsonKey(name: 'patient_id') int? patientId,
  });
}

/// @nodoc
class __$$AnalysisModelImplCopyWithImpl<$Res>
    extends _$AnalysisModelCopyWithImpl<$Res, _$AnalysisModelImpl>
    implements _$$AnalysisModelImplCopyWith<$Res> {
  __$$AnalysisModelImplCopyWithImpl(
    _$AnalysisModelImpl _value,
    $Res Function(_$AnalysisModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? status = freezed,
    Object? resultFile = freezed,
    Object? resultPhoto = freezed,
    Object? clinic = freezed,
    Object? patientFirstName = freezed,
    Object? patientLastName = freezed,
    Object? patientId = freezed,
  }) {
    return _then(
      _$AnalysisModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as AnalysisStatus?,
        resultFile:
            freezed == resultFile
                ? _value.resultFile
                : resultFile // ignore: cast_nullable_to_non_nullable
                    as String?,
        resultPhoto:
            freezed == resultPhoto
                ? _value.resultPhoto
                : resultPhoto // ignore: cast_nullable_to_non_nullable
                    as String?,
        clinic:
            freezed == clinic
                ? _value.clinic
                : clinic // ignore: cast_nullable_to_non_nullable
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
        patientId:
            freezed == patientId
                ? _value.patientId
                : patientId // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalysisModelImpl implements _AnalysisModel {
  _$AnalysisModelImpl({
    this.id = 0,
    required this.name,
    this.description,
    this.status,
    @JsonKey(name: 'result_file') this.resultFile,
    @JsonKey(name: 'result_photo') this.resultPhoto,
    this.clinic,
    @JsonKey(name: 'patient_first_name') this.patientFirstName,
    @JsonKey(name: 'patient_last_name') this.patientLastName,
    @JsonKey(name: 'patient_id') this.patientId,
  });

  factory _$AnalysisModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalysisModelImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final AnalysisStatus? status;
  @override
  @JsonKey(name: 'result_file')
  final String? resultFile;
  @override
  @JsonKey(name: 'result_photo')
  final String? resultPhoto;
  @override
  final String? clinic;
  @override
  @JsonKey(name: 'patient_first_name')
  final String? patientFirstName;
  @override
  @JsonKey(name: 'patient_last_name')
  final String? patientLastName;
  @override
  @JsonKey(name: 'patient_id')
  final int? patientId;

  @override
  String toString() {
    return 'AnalysisModel(id: $id, name: $name, description: $description, status: $status, resultFile: $resultFile, resultPhoto: $resultPhoto, clinic: $clinic, patientFirstName: $patientFirstName, patientLastName: $patientLastName, patientId: $patientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.resultFile, resultFile) ||
                other.resultFile == resultFile) &&
            (identical(other.resultPhoto, resultPhoto) ||
                other.resultPhoto == resultPhoto) &&
            (identical(other.clinic, clinic) || other.clinic == clinic) &&
            (identical(other.patientFirstName, patientFirstName) ||
                other.patientFirstName == patientFirstName) &&
            (identical(other.patientLastName, patientLastName) ||
                other.patientLastName == patientLastName) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    status,
    resultFile,
    resultPhoto,
    clinic,
    patientFirstName,
    patientLastName,
    patientId,
  );

  /// Create a copy of AnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisModelImplCopyWith<_$AnalysisModelImpl> get copyWith =>
      __$$AnalysisModelImplCopyWithImpl<_$AnalysisModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalysisModelImplToJson(this);
  }
}

abstract class _AnalysisModel implements AnalysisModel {
  factory _AnalysisModel({
    final int? id,
    required final String name,
    final String? description,
    final AnalysisStatus? status,
    @JsonKey(name: 'result_file') final String? resultFile,
    @JsonKey(name: 'result_photo') final String? resultPhoto,
    final String? clinic,
    @JsonKey(name: 'patient_first_name') final String? patientFirstName,
    @JsonKey(name: 'patient_last_name') final String? patientLastName,
    @JsonKey(name: 'patient_id') final int? patientId,
  }) = _$AnalysisModelImpl;

  factory _AnalysisModel.fromJson(Map<String, dynamic> json) =
      _$AnalysisModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  AnalysisStatus? get status;
  @override
  @JsonKey(name: 'result_file')
  String? get resultFile;
  @override
  @JsonKey(name: 'result_photo')
  String? get resultPhoto;
  @override
  String? get clinic;
  @override
  @JsonKey(name: 'patient_first_name')
  String? get patientFirstName;
  @override
  @JsonKey(name: 'patient_last_name')
  String? get patientLastName;
  @override
  @JsonKey(name: 'patient_id')
  int? get patientId;

  /// Create a copy of AnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalysisModelImplCopyWith<_$AnalysisModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
