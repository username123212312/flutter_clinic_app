// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloaded_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DownloadedFile _$DownloadedFileFromJson(Map<String, dynamic> json) {
  return _DownloadedFile.fromJson(json);
}

/// @nodoc
mixin _$DownloadedFile {
  String? get originalUrl => throw _privateConstructorUsedError;
  String? get localPath => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  int? get fileSize => throw _privateConstructorUsedError;
  DateTime? get downloadDate => throw _privateConstructorUsedError;

  /// Serializes this DownloadedFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DownloadedFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadedFileCopyWith<DownloadedFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadedFileCopyWith<$Res> {
  factory $DownloadedFileCopyWith(
    DownloadedFile value,
    $Res Function(DownloadedFile) then,
  ) = _$DownloadedFileCopyWithImpl<$Res, DownloadedFile>;
  @useResult
  $Res call({
    String? originalUrl,
    String? localPath,
    String? fileName,
    int? fileSize,
    DateTime? downloadDate,
  });
}

/// @nodoc
class _$DownloadedFileCopyWithImpl<$Res, $Val extends DownloadedFile>
    implements $DownloadedFileCopyWith<$Res> {
  _$DownloadedFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(
      _value.copyWith(
            originalUrl:
                freezed == originalUrl
                    ? _value.originalUrl
                    : originalUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            localPath:
                freezed == localPath
                    ? _value.localPath
                    : localPath // ignore: cast_nullable_to_non_nullable
                        as String?,
            fileName:
                freezed == fileName
                    ? _value.fileName
                    : fileName // ignore: cast_nullable_to_non_nullable
                        as String?,
            fileSize:
                freezed == fileSize
                    ? _value.fileSize
                    : fileSize // ignore: cast_nullable_to_non_nullable
                        as int?,
            downloadDate:
                freezed == downloadDate
                    ? _value.downloadDate
                    : downloadDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DownloadedFileImplCopyWith<$Res>
    implements $DownloadedFileCopyWith<$Res> {
  factory _$$DownloadedFileImplCopyWith(
    _$DownloadedFileImpl value,
    $Res Function(_$DownloadedFileImpl) then,
  ) = __$$DownloadedFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? originalUrl,
    String? localPath,
    String? fileName,
    int? fileSize,
    DateTime? downloadDate,
  });
}

/// @nodoc
class __$$DownloadedFileImplCopyWithImpl<$Res>
    extends _$DownloadedFileCopyWithImpl<$Res, _$DownloadedFileImpl>
    implements _$$DownloadedFileImplCopyWith<$Res> {
  __$$DownloadedFileImplCopyWithImpl(
    _$DownloadedFileImpl _value,
    $Res Function(_$DownloadedFileImpl) _then,
  ) : super(_value, _then);

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
    return _then(
      _$DownloadedFileImpl(
        originalUrl:
            freezed == originalUrl
                ? _value.originalUrl
                : originalUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        localPath:
            freezed == localPath
                ? _value.localPath
                : localPath // ignore: cast_nullable_to_non_nullable
                    as String?,
        fileName:
            freezed == fileName
                ? _value.fileName
                : fileName // ignore: cast_nullable_to_non_nullable
                    as String?,
        fileSize:
            freezed == fileSize
                ? _value.fileSize
                : fileSize // ignore: cast_nullable_to_non_nullable
                    as int?,
        downloadDate:
            freezed == downloadDate
                ? _value.downloadDate
                : downloadDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadedFileImpl implements _DownloadedFile {
  _$DownloadedFileImpl({
    this.originalUrl,
    this.localPath,
    this.fileName,
    this.fileSize,
    this.downloadDate,
  });

  factory _$DownloadedFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadedFileImplFromJson(json);

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

  @override
  String toString() {
    return 'DownloadedFile(originalUrl: $originalUrl, localPath: $localPath, fileName: $fileName, fileSize: $fileSize, downloadDate: $downloadDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadedFileImpl &&
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
    runtimeType,
    originalUrl,
    localPath,
    fileName,
    fileSize,
    downloadDate,
  );

  /// Create a copy of DownloadedFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadedFileImplCopyWith<_$DownloadedFileImpl> get copyWith =>
      __$$DownloadedFileImplCopyWithImpl<_$DownloadedFileImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadedFileImplToJson(this);
  }
}

abstract class _DownloadedFile implements DownloadedFile {
  factory _DownloadedFile({
    final String? originalUrl,
    final String? localPath,
    final String? fileName,
    final int? fileSize,
    final DateTime? downloadDate,
  }) = _$DownloadedFileImpl;

  factory _DownloadedFile.fromJson(Map<String, dynamic> json) =
      _$DownloadedFileImpl.fromJson;

  @override
  String? get originalUrl;
  @override
  String? get localPath;
  @override
  String? get fileName;
  @override
  int? get fileSize;
  @override
  DateTime? get downloadDate;

  /// Create a copy of DownloadedFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadedFileImplCopyWith<_$DownloadedFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
