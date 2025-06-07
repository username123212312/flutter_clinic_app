// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_analysis_result_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddAnalysisResultRequest {
  int get id;
  String? get filePath;
  String? get photoPath;

  /// Create a copy of AddAnalysisResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddAnalysisResultRequestCopyWith<AddAnalysisResultRequest> get copyWith =>
      _$AddAnalysisResultRequestCopyWithImpl<AddAnalysisResultRequest>(
          this as AddAnalysisResultRequest, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddAnalysisResultRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, filePath, photoPath);

  @override
  String toString() {
    return 'AddAnalysisResultRequest(id: $id, filePath: $filePath, photoPath: $photoPath)';
  }
}

/// @nodoc
abstract mixin class $AddAnalysisResultRequestCopyWith<$Res> {
  factory $AddAnalysisResultRequestCopyWith(AddAnalysisResultRequest value,
          $Res Function(AddAnalysisResultRequest) _then) =
      _$AddAnalysisResultRequestCopyWithImpl;
  @useResult
  $Res call({int id, String? filePath, String? photoPath});
}

/// @nodoc
class _$AddAnalysisResultRequestCopyWithImpl<$Res>
    implements $AddAnalysisResultRequestCopyWith<$Res> {
  _$AddAnalysisResultRequestCopyWithImpl(this._self, this._then);

  final AddAnalysisResultRequest _self;
  final $Res Function(AddAnalysisResultRequest) _then;

  /// Create a copy of AddAnalysisResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filePath = freezed,
    Object? photoPath = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      filePath: freezed == filePath
          ? _self.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      photoPath: freezed == photoPath
          ? _self.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _AddAnalysisResultRequest implements AddAnalysisResultRequest {
  _AddAnalysisResultRequest({required this.id, this.filePath, this.photoPath});

  @override
  final int id;
  @override
  final String? filePath;
  @override
  final String? photoPath;

  /// Create a copy of AddAnalysisResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddAnalysisResultRequestCopyWith<_AddAnalysisResultRequest> get copyWith =>
      __$AddAnalysisResultRequestCopyWithImpl<_AddAnalysisResultRequest>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddAnalysisResultRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, filePath, photoPath);

  @override
  String toString() {
    return 'AddAnalysisResultRequest(id: $id, filePath: $filePath, photoPath: $photoPath)';
  }
}

/// @nodoc
abstract mixin class _$AddAnalysisResultRequestCopyWith<$Res>
    implements $AddAnalysisResultRequestCopyWith<$Res> {
  factory _$AddAnalysisResultRequestCopyWith(_AddAnalysisResultRequest value,
          $Res Function(_AddAnalysisResultRequest) _then) =
      __$AddAnalysisResultRequestCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String? filePath, String? photoPath});
}

/// @nodoc
class __$AddAnalysisResultRequestCopyWithImpl<$Res>
    implements _$AddAnalysisResultRequestCopyWith<$Res> {
  __$AddAnalysisResultRequestCopyWithImpl(this._self, this._then);

  final _AddAnalysisResultRequest _self;
  final $Res Function(_AddAnalysisResultRequest) _then;

  /// Create a copy of AddAnalysisResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? filePath = freezed,
    Object? photoPath = freezed,
  }) {
    return _then(_AddAnalysisResultRequest(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      filePath: freezed == filePath
          ? _self.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      photoPath: freezed == photoPath
          ? _self.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
