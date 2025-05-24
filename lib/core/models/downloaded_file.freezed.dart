// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloaded_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DownloadedFile {
  String? get originalUrl;
  String? get localPath;
  String? get fileName;
  int? get fileSize;
  DateTime? get downloadDate;

  /// Create a copy of DownloadedFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DownloadedFileCopyWith<DownloadedFile> get copyWith =>
      _$DownloadedFileCopyWithImpl<DownloadedFile>(
          this as DownloadedFile, _$identity);

  /// Serializes this DownloadedFile to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DownloadedFile &&
            (identical(other.originalUrl, originalUrl) ||
                other.originalUrl == originalUrl) &&
            (identical(other.localPath, localPath) ||
                other.localPath == localPath) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.downloadDate, downloadDate) ||
                other.downloadDate == downloadDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, originalUrl, localPath, fileName, fileSize, downloadDate);

  @override
  String toString() {
    return 'DownloadedFile(originalUrl: $originalUrl, localPath: $localPath, fileName: $fileName, fileSize: $fileSize, downloadDate: $downloadDate)';
  }
}

/// @nodoc
abstract mixin class $DownloadedFileCopyWith<$Res> {
  factory $DownloadedFileCopyWith(
          DownloadedFile value, $Res Function(DownloadedFile) _then) =
      _$DownloadedFileCopyWithImpl;
  @useResult
  $Res call(
      {String? originalUrl,
      String? localPath,
      String? fileName,
      int? fileSize,
      DateTime? downloadDate});
}

/// @nodoc
class _$DownloadedFileCopyWithImpl<$Res>
    implements $DownloadedFileCopyWith<$Res> {
  _$DownloadedFileCopyWithImpl(this._self, this._then);

  final DownloadedFile _self;
  final $Res Function(DownloadedFile) _then;

  /// Create a copy of DownloadedFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalUrl = freezed,
    Object? localPath = freezed,
    Object? fileName = freezed,
    Object? fileSize = freezed,
    Object? downloadDate = freezed,
  }) {
    return _then(_self.copyWith(
      originalUrl: freezed == originalUrl
          ? _self.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      localPath: freezed == localPath
          ? _self.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      downloadDate: freezed == downloadDate
          ? _self.downloadDate
          : downloadDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DownloadedFile implements DownloadedFile {
  _DownloadedFile(
      {this.originalUrl,
      this.localPath,
      this.fileName,
      this.fileSize,
      this.downloadDate});
  factory _DownloadedFile.fromJson(Map<String, dynamic> json) =>
      _$DownloadedFileFromJson(json);

  @override
  final String? originalUrl;
  @override
  final String? localPath;
  @override
  final String? fileName;
  @override
  final int? fileSize;
  @override
  final DateTime? downloadDate;

  /// Create a copy of DownloadedFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DownloadedFileCopyWith<_DownloadedFile> get copyWith =>
      __$DownloadedFileCopyWithImpl<_DownloadedFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DownloadedFileToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DownloadedFile &&
            (identical(other.originalUrl, originalUrl) ||
                other.originalUrl == originalUrl) &&
            (identical(other.localPath, localPath) ||
                other.localPath == localPath) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.downloadDate, downloadDate) ||
                other.downloadDate == downloadDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, originalUrl, localPath, fileName, fileSize, downloadDate);

  @override
  String toString() {
    return 'DownloadedFile(originalUrl: $originalUrl, localPath: $localPath, fileName: $fileName, fileSize: $fileSize, downloadDate: $downloadDate)';
  }
}

/// @nodoc
abstract mixin class _$DownloadedFileCopyWith<$Res>
    implements $DownloadedFileCopyWith<$Res> {
  factory _$DownloadedFileCopyWith(
          _DownloadedFile value, $Res Function(_DownloadedFile) _then) =
      __$DownloadedFileCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? originalUrl,
      String? localPath,
      String? fileName,
      int? fileSize,
      DateTime? downloadDate});
}

/// @nodoc
class __$DownloadedFileCopyWithImpl<$Res>
    implements _$DownloadedFileCopyWith<$Res> {
  __$DownloadedFileCopyWithImpl(this._self, this._then);

  final _DownloadedFile _self;
  final $Res Function(_DownloadedFile) _then;

  /// Create a copy of DownloadedFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? originalUrl = freezed,
    Object? localPath = freezed,
    Object? fileName = freezed,
    Object? fileSize = freezed,
    Object? downloadDate = freezed,
  }) {
    return _then(_DownloadedFile(
      originalUrl: freezed == originalUrl
          ? _self.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      localPath: freezed == localPath
          ? _self.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      downloadDate: freezed == downloadDate
          ? _self.downloadDate
          : downloadDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
