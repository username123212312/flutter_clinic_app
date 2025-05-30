// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalysisModel {
  int? get id;
  String get name;
  String? get description;
  @JsonKey(name: 'result_file')
  String? get resultFile;
  @JsonKey(name: 'result_photo')
  String? get resultPhoto;

  /// Create a copy of AnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnalysisModelCopyWith<AnalysisModel> get copyWith =>
      _$AnalysisModelCopyWithImpl<AnalysisModel>(
          this as AnalysisModel, _$identity);

  /// Serializes this AnalysisModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnalysisModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.resultFile, resultFile) ||
                other.resultFile == resultFile) &&
            (identical(other.resultPhoto, resultPhoto) ||
                other.resultPhoto == resultPhoto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, resultFile, resultPhoto);

  @override
  String toString() {
    return 'AnalysisModel(id: $id, name: $name, description: $description, resultFile: $resultFile, resultPhoto: $resultPhoto)';
  }
}

/// @nodoc
abstract mixin class $AnalysisModelCopyWith<$Res> {
  factory $AnalysisModelCopyWith(
          AnalysisModel value, $Res Function(AnalysisModel) _then) =
      _$AnalysisModelCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String name,
      String? description,
      @JsonKey(name: 'result_file') String? resultFile,
      @JsonKey(name: 'result_photo') String? resultPhoto});
}

/// @nodoc
class _$AnalysisModelCopyWithImpl<$Res>
    implements $AnalysisModelCopyWith<$Res> {
  _$AnalysisModelCopyWithImpl(this._self, this._then);

  final AnalysisModel _self;
  final $Res Function(AnalysisModel) _then;

  /// Create a copy of AnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? resultFile = freezed,
    Object? resultPhoto = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      resultFile: freezed == resultFile
          ? _self.resultFile
          : resultFile // ignore: cast_nullable_to_non_nullable
              as String?,
      resultPhoto: freezed == resultPhoto
          ? _self.resultPhoto
          : resultPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AnalysisModel implements AnalysisModel {
  _AnalysisModel(
      {this.id = 0,
      required this.name,
      this.description,
      @JsonKey(name: 'result_file') this.resultFile,
      @JsonKey(name: 'result_photo') this.resultPhoto});
  factory _AnalysisModel.fromJson(Map<String, dynamic> json) =>
      _$AnalysisModelFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'result_file')
  final String? resultFile;
  @override
  @JsonKey(name: 'result_photo')
  final String? resultPhoto;

  /// Create a copy of AnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnalysisModelCopyWith<_AnalysisModel> get copyWith =>
      __$AnalysisModelCopyWithImpl<_AnalysisModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnalysisModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnalysisModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.resultFile, resultFile) ||
                other.resultFile == resultFile) &&
            (identical(other.resultPhoto, resultPhoto) ||
                other.resultPhoto == resultPhoto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, resultFile, resultPhoto);

  @override
  String toString() {
    return 'AnalysisModel(id: $id, name: $name, description: $description, resultFile: $resultFile, resultPhoto: $resultPhoto)';
  }
}

/// @nodoc
abstract mixin class _$AnalysisModelCopyWith<$Res>
    implements $AnalysisModelCopyWith<$Res> {
  factory _$AnalysisModelCopyWith(
          _AnalysisModel value, $Res Function(_AnalysisModel) _then) =
      __$AnalysisModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String name,
      String? description,
      @JsonKey(name: 'result_file') String? resultFile,
      @JsonKey(name: 'result_photo') String? resultPhoto});
}

/// @nodoc
class __$AnalysisModelCopyWithImpl<$Res>
    implements _$AnalysisModelCopyWith<$Res> {
  __$AnalysisModelCopyWithImpl(this._self, this._then);

  final _AnalysisModel _self;
  final $Res Function(_AnalysisModel) _then;

  /// Create a copy of AnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? resultFile = freezed,
    Object? resultPhoto = freezed,
  }) {
    return _then(_AnalysisModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      resultFile: freezed == resultFile
          ? _self.resultFile
          : resultFile // ignore: cast_nullable_to_non_nullable
              as String?,
      resultPhoto: freezed == resultPhoto
          ? _self.resultPhoto
          : resultPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
