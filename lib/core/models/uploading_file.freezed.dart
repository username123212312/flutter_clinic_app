// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uploading_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UploadingFile _$UploadingFileFromJson(Map<String, dynamic> json) {
  return _UploadingFile.fromJson(json);
}

/// @nodoc
mixin _$UploadingFile {
  String? get filePath => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  int? get fileSize => throw _privateConstructorUsedError;
  DateTime? get uploadStart => throw _privateConstructorUsedError;

  /// Serializes this UploadingFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadingFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadingFileCopyWith<UploadingFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadingFileCopyWith<$Res> {
  factory $UploadingFileCopyWith(
    UploadingFile value,
    $Res Function(UploadingFile) then,
  ) = _$UploadingFileCopyWithImpl<$Res, UploadingFile>;
  @useResult
  $Res call({
    String? filePath,
    String? fileName,
    int? fileSize,
    DateTime? uploadStart,
  });
}

/// @nodoc
class _$UploadingFileCopyWithImpl<$Res, $Val extends UploadingFile>
    implements $UploadingFileCopyWith<$Res> {
  _$UploadingFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(
      _value.copyWith(
            filePath:
                freezed == filePath
                    ? _value.filePath
                    : filePath // ignore: cast_nullable_to_non_nullable
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
            uploadStart:
                freezed == uploadStart
                    ? _value.uploadStart
                    : uploadStart // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UploadingFileImplCopyWith<$Res>
    implements $UploadingFileCopyWith<$Res> {
  factory _$$UploadingFileImplCopyWith(
    _$UploadingFileImpl value,
    $Res Function(_$UploadingFileImpl) then,
  ) = __$$UploadingFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? filePath,
    String? fileName,
    int? fileSize,
    DateTime? uploadStart,
  });
}

/// @nodoc
class __$$UploadingFileImplCopyWithImpl<$Res>
    extends _$UploadingFileCopyWithImpl<$Res, _$UploadingFileImpl>
    implements _$$UploadingFileImplCopyWith<$Res> {
  __$$UploadingFileImplCopyWithImpl(
    _$UploadingFileImpl _value,
    $Res Function(_$UploadingFileImpl) _then,
  ) : super(_value, _then);

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
    return _then(
      _$UploadingFileImpl(
        filePath:
            freezed == filePath
                ? _value.filePath
                : filePath // ignore: cast_nullable_to_non_nullable
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
        uploadStart:
            freezed == uploadStart
                ? _value.uploadStart
                : uploadStart // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadingFileImpl implements _UploadingFile {
  _$UploadingFileImpl({
    this.filePath,
    this.fileName,
    this.fileSize,
    this.uploadStart,
  });

  factory _$UploadingFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadingFileImplFromJson(json);

  @override
  final String? filePath;
  @override
  final String? fileName;
  @override
  final int? fileSize;
  @override
  final DateTime? uploadStart;

  @override
  String toString() {
    return 'UploadingFile(filePath: $filePath, fileName: $fileName, fileSize: $fileSize, uploadStart: $uploadStart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadingFileImpl &&
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

  /// Create a copy of UploadingFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadingFileImplCopyWith<_$UploadingFileImpl> get copyWith =>
      __$$UploadingFileImplCopyWithImpl<_$UploadingFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadingFileImplToJson(this);
  }
}

abstract class _UploadingFile implements UploadingFile {
  factory _UploadingFile({
    final String? filePath,
    final String? fileName,
    final int? fileSize,
    final DateTime? uploadStart,
  }) = _$UploadingFileImpl;

  factory _UploadingFile.fromJson(Map<String, dynamic> json) =
      _$UploadingFileImpl.fromJson;

  @override
  String? get filePath;
  @override
  String? get fileName;
  @override
  int? get fileSize;
  @override
  DateTime? get uploadStart;

  /// Create a copy of UploadingFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadingFileImplCopyWith<_$UploadingFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
