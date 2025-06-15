// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_analysis_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AddAnalysisRequest _$AddAnalysisRequestFromJson(Map<String, dynamic> json) {
  return _AddAnalysisRequest.fromJson(json);
}

/// @nodoc
mixin _$AddAnalysisRequest {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_number')
  int? get patientNumber => throw _privateConstructorUsedError;
  int? get clinicId => throw _privateConstructorUsedError;
  String? get resultFilePath => throw _privateConstructorUsedError;
  String? get resultImagePath => throw _privateConstructorUsedError;

  /// Serializes this AddAnalysisRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddAnalysisRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddAnalysisRequestCopyWith<AddAnalysisRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAnalysisRequestCopyWith<$Res> {
  factory $AddAnalysisRequestCopyWith(
    AddAnalysisRequest value,
    $Res Function(AddAnalysisRequest) then,
  ) = _$AddAnalysisRequestCopyWithImpl<$Res, AddAnalysisRequest>;
  @useResult
  $Res call({
    String name,
    String? description,
    @JsonKey(name: 'patient_number') int? patientNumber,
    int? clinicId,
    String? resultFilePath,
    String? resultImagePath,
  });
}

/// @nodoc
class _$AddAnalysisRequestCopyWithImpl<$Res, $Val extends AddAnalysisRequest>
    implements $AddAnalysisRequestCopyWith<$Res> {
  _$AddAnalysisRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddAnalysisRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? patientNumber = freezed,
    Object? clinicId = freezed,
    Object? resultFilePath = freezed,
    Object? resultImagePath = freezed,
  }) {
    return _then(
      _value.copyWith(
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
            patientNumber:
                freezed == patientNumber
                    ? _value.patientNumber
                    : patientNumber // ignore: cast_nullable_to_non_nullable
                        as int?,
            clinicId:
                freezed == clinicId
                    ? _value.clinicId
                    : clinicId // ignore: cast_nullable_to_non_nullable
                        as int?,
            resultFilePath:
                freezed == resultFilePath
                    ? _value.resultFilePath
                    : resultFilePath // ignore: cast_nullable_to_non_nullable
                        as String?,
            resultImagePath:
                freezed == resultImagePath
                    ? _value.resultImagePath
                    : resultImagePath // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddAnalysisRequestImplCopyWith<$Res>
    implements $AddAnalysisRequestCopyWith<$Res> {
  factory _$$AddAnalysisRequestImplCopyWith(
    _$AddAnalysisRequestImpl value,
    $Res Function(_$AddAnalysisRequestImpl) then,
  ) = __$$AddAnalysisRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String? description,
    @JsonKey(name: 'patient_number') int? patientNumber,
    int? clinicId,
    String? resultFilePath,
    String? resultImagePath,
  });
}

/// @nodoc
class __$$AddAnalysisRequestImplCopyWithImpl<$Res>
    extends _$AddAnalysisRequestCopyWithImpl<$Res, _$AddAnalysisRequestImpl>
    implements _$$AddAnalysisRequestImplCopyWith<$Res> {
  __$$AddAnalysisRequestImplCopyWithImpl(
    _$AddAnalysisRequestImpl _value,
    $Res Function(_$AddAnalysisRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddAnalysisRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? patientNumber = freezed,
    Object? clinicId = freezed,
    Object? resultFilePath = freezed,
    Object? resultImagePath = freezed,
  }) {
    return _then(
      _$AddAnalysisRequestImpl(
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
        patientNumber:
            freezed == patientNumber
                ? _value.patientNumber
                : patientNumber // ignore: cast_nullable_to_non_nullable
                    as int?,
        clinicId:
            freezed == clinicId
                ? _value.clinicId
                : clinicId // ignore: cast_nullable_to_non_nullable
                    as int?,
        resultFilePath:
            freezed == resultFilePath
                ? _value.resultFilePath
                : resultFilePath // ignore: cast_nullable_to_non_nullable
                    as String?,
        resultImagePath:
            freezed == resultImagePath
                ? _value.resultImagePath
                : resultImagePath // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddAnalysisRequestImpl implements _AddAnalysisRequest {
  _$AddAnalysisRequestImpl({
    required this.name,
    this.description,
    @JsonKey(name: 'patient_number') this.patientNumber,
    this.clinicId,
    this.resultFilePath,
    this.resultImagePath,
  });

  factory _$AddAnalysisRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddAnalysisRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'patient_number')
  final int? patientNumber;
  @override
  final int? clinicId;
  @override
  final String? resultFilePath;
  @override
  final String? resultImagePath;

  @override
  String toString() {
    return 'AddAnalysisRequest(name: $name, description: $description, patientNumber: $patientNumber, clinicId: $clinicId, resultFilePath: $resultFilePath, resultImagePath: $resultImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAnalysisRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.patientNumber, patientNumber) ||
                other.patientNumber == patientNumber) &&
            (identical(other.clinicId, clinicId) ||
                other.clinicId == clinicId) &&
            (identical(other.resultFilePath, resultFilePath) ||
                other.resultFilePath == resultFilePath) &&
            (identical(other.resultImagePath, resultImagePath) ||
                other.resultImagePath == resultImagePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    description,
    patientNumber,
    clinicId,
    resultFilePath,
    resultImagePath,
  );

  /// Create a copy of AddAnalysisRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAnalysisRequestImplCopyWith<_$AddAnalysisRequestImpl> get copyWith =>
      __$$AddAnalysisRequestImplCopyWithImpl<_$AddAnalysisRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AddAnalysisRequestImplToJson(this);
  }
}

abstract class _AddAnalysisRequest implements AddAnalysisRequest {
  factory _AddAnalysisRequest({
    required final String name,
    final String? description,
    @JsonKey(name: 'patient_number') final int? patientNumber,
    final int? clinicId,
    final String? resultFilePath,
    final String? resultImagePath,
  }) = _$AddAnalysisRequestImpl;

  factory _AddAnalysisRequest.fromJson(Map<String, dynamic> json) =
      _$AddAnalysisRequestImpl.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'patient_number')
  int? get patientNumber;
  @override
  int? get clinicId;
  @override
  String? get resultFilePath;
  @override
  String? get resultImagePath;

  /// Create a copy of AddAnalysisRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddAnalysisRequestImplCopyWith<_$AddAnalysisRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
