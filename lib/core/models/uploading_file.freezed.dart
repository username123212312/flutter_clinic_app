// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uploading_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadingFile {
  String? get filePath;
  String? get fileName;
  int? get fileSize;
  DateTime? get uploadStart;

  /// Create a copy of UploadingFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UploadingFileCopyWith<UploadingFile> get copyWith =>
      _$UploadingFileCopyWithImpl<UploadingFile>(
          this as UploadingFile, _$identity);

  /// Serializes this UploadingFile to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadingFile &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.uploadStart, uploadStart) ||
                other.uploadStart == uploadStart));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, filePath, fileName, fileSize, uploadStart);

  @override
  String toString() {
    return 'UploadingFile(filePath: $filePath, fileName: $fileName, fileSize: $fileSize, uploadStart: $uploadStart)';
  }
}

/// @nodoc
abstract mixin class $UploadingFileCopyWith<$Res> {
  factory $UploadingFileCopyWith(
          UploadingFile value, $Res Function(UploadingFile) _then) =
      _$UploadingFileCopyWithImpl;
  @useResult
  $Res call(
      {String? filePath,
      String? fileName,
      int? fileSize,
      DateTime? uploadStart});
}

/// @nodoc
class _$UploadingFileCopyWithImpl<$Res>
    implements $UploadingFileCopyWith<$Res> {
  _$UploadingFileCopyWithImpl(this._self, this._then);

  final UploadingFile _self;
  final $Res Function(UploadingFile) _then;

  /// Create a copy of UploadingFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = freezed,
    Object? fileName = freezed,
    Object? fileSize = freezed,
    Object? uploadStart = freezed,
  }) {
    return _then(_self.copyWith(
      filePath: freezed == filePath
          ? _self.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadStart: freezed == uploadStart
          ? _self.uploadStart
          : uploadStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UploadingFile implements UploadingFile {
  _UploadingFile(
      {this.filePath, this.fileName, this.fileSize, this.uploadStart});
  factory _UploadingFile.fromJson(Map<String, dynamic> json) =>
      _$UploadingFileFromJson(json);

  @override
  final String? filePath;
  @override
  final String? fileName;
  @override
  final int? fileSize;
  @override
  final DateTime? uploadStart;

  /// Create a copy of UploadingFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UploadingFileCopyWith<_UploadingFile> get copyWith =>
      __$UploadingFileCopyWithImpl<_UploadingFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UploadingFileToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UploadingFile &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.uploadStart, uploadStart) ||
                other.uploadStart == uploadStart));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, filePath, fileName, fileSize, uploadStart);

  @override
  String toString() {
    return 'UploadingFile(filePath: $filePath, fileName: $fileName, fileSize: $fileSize, uploadStart: $uploadStart)';
  }
}

/// @nodoc
abstract mixin class _$UploadingFileCopyWith<$Res>
    implements $UploadingFileCopyWith<$Res> {
  factory _$UploadingFileCopyWith(
          _UploadingFile value, $Res Function(_UploadingFile) _then) =
      __$UploadingFileCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? filePath,
      String? fileName,
      int? fileSize,
      DateTime? uploadStart});
}

/// @nodoc
class __$UploadingFileCopyWithImpl<$Res>
    implements _$UploadingFileCopyWith<$Res> {
  __$UploadingFileCopyWithImpl(this._self, this._then);

  final _UploadingFile _self;
  final $Res Function(_UploadingFile) _then;

  /// Create a copy of UploadingFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? filePath = freezed,
    Object? fileName = freezed,
    Object? fileSize = freezed,
    Object? uploadStart = freezed,
  }) {
    return _then(_UploadingFile(
      filePath: freezed == filePath
          ? _self.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadStart: freezed == uploadStart
          ? _self.uploadStart
          : uploadStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
