// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_analysis_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddAnalysisRequest {
  String get name;
  String? get description;
  @JsonKey(name: 'patient_number')
  int? get patientNumber;
  int? get clinicId;
  String? get resultFilePath;
  String? get resultImagePath;

  /// Create a copy of AddAnalysisRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddAnalysisRequestCopyWith<AddAnalysisRequest> get copyWith =>
      _$AddAnalysisRequestCopyWithImpl<AddAnalysisRequest>(
          this as AddAnalysisRequest, _$identity);

  /// Serializes this AddAnalysisRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddAnalysisRequest &&
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
  int get hashCode => Object.hash(runtimeType, name, description, patientNumber,
      clinicId, resultFilePath, resultImagePath);

  @override
  String toString() {
    return 'AddAnalysisRequest(name: $name, description: $description, patientNumber: $patientNumber, clinicId: $clinicId, resultFilePath: $resultFilePath, resultImagePath: $resultImagePath)';
  }
}

/// @nodoc
abstract mixin class $AddAnalysisRequestCopyWith<$Res> {
  factory $AddAnalysisRequestCopyWith(
          AddAnalysisRequest value, $Res Function(AddAnalysisRequest) _then) =
      _$AddAnalysisRequestCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String? description,
      @JsonKey(name: 'patient_number') int? patientNumber,
      int? clinicId,
      String? resultFilePath,
      String? resultImagePath});
}

/// @nodoc
class _$AddAnalysisRequestCopyWithImpl<$Res>
    implements $AddAnalysisRequestCopyWith<$Res> {
  _$AddAnalysisRequestCopyWithImpl(this._self, this._then);

  final AddAnalysisRequest _self;
  final $Res Function(AddAnalysisRequest) _then;

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
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      patientNumber: freezed == patientNumber
          ? _self.patientNumber
          : patientNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      clinicId: freezed == clinicId
          ? _self.clinicId
          : clinicId // ignore: cast_nullable_to_non_nullable
              as int?,
      resultFilePath: freezed == resultFilePath
          ? _self.resultFilePath
          : resultFilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      resultImagePath: freezed == resultImagePath
          ? _self.resultImagePath
          : resultImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AddAnalysisRequest implements AddAnalysisRequest {
  _AddAnalysisRequest(
      {required this.name,
      this.description,
      @JsonKey(name: 'patient_number') this.patientNumber,
      this.clinicId,
      this.resultFilePath,
      this.resultImagePath});
  factory _AddAnalysisRequest.fromJson(Map<String, dynamic> json) =>
      _$AddAnalysisRequestFromJson(json);

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

  /// Create a copy of AddAnalysisRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddAnalysisRequestCopyWith<_AddAnalysisRequest> get copyWith =>
      __$AddAnalysisRequestCopyWithImpl<_AddAnalysisRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddAnalysisRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddAnalysisRequest &&
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
  int get hashCode => Object.hash(runtimeType, name, description, patientNumber,
      clinicId, resultFilePath, resultImagePath);

  @override
  String toString() {
    return 'AddAnalysisRequest(name: $name, description: $description, patientNumber: $patientNumber, clinicId: $clinicId, resultFilePath: $resultFilePath, resultImagePath: $resultImagePath)';
  }
}

/// @nodoc
abstract mixin class _$AddAnalysisRequestCopyWith<$Res>
    implements $AddAnalysisRequestCopyWith<$Res> {
  factory _$AddAnalysisRequestCopyWith(
          _AddAnalysisRequest value, $Res Function(_AddAnalysisRequest) _then) =
      __$AddAnalysisRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      @JsonKey(name: 'patient_number') int? patientNumber,
      int? clinicId,
      String? resultFilePath,
      String? resultImagePath});
}

/// @nodoc
class __$AddAnalysisRequestCopyWithImpl<$Res>
    implements _$AddAnalysisRequestCopyWith<$Res> {
  __$AddAnalysisRequestCopyWithImpl(this._self, this._then);

  final _AddAnalysisRequest _self;
  final $Res Function(_AddAnalysisRequest) _then;

  /// Create a copy of AddAnalysisRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? patientNumber = freezed,
    Object? clinicId = freezed,
    Object? resultFilePath = freezed,
    Object? resultImagePath = freezed,
  }) {
    return _then(_AddAnalysisRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      patientNumber: freezed == patientNumber
          ? _self.patientNumber
          : patientNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      clinicId: freezed == clinicId
          ? _self.clinicId
          : clinicId // ignore: cast_nullable_to_non_nullable
              as int?,
      resultFilePath: freezed == resultFilePath
          ? _self.resultFilePath
          : resultFilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      resultImagePath: freezed == resultImagePath
          ? _self.resultImagePath
          : resultImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
