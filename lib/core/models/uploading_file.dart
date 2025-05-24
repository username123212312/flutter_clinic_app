import 'package:freezed_annotation/freezed_annotation.dart';

part 'uploading_file.freezed.dart';
part 'uploading_file.g.dart';

@freezed
sealed class UploadingFile with _$UploadingFile {
  factory UploadingFile({
    String? filePath,
    String? fileName,
    int? fileSize,
    DateTime? uploadStart,
  }) = _UploadingFile;

  factory UploadingFile.fromJson(Map<String, dynamic> json) =>
      _$UploadingFileFromJson(json);
}
