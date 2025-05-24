import 'package:freezed_annotation/freezed_annotation.dart';

part 'downloaded_file.freezed.dart';
part 'downloaded_file.g.dart';

@freezed
sealed class DownloadedFile with _$DownloadedFile {
  factory DownloadedFile({
    String? originalUrl,
    String? localPath,
    String? fileName,
    int? fileSize,
    DateTime? downloadDate,
  }) = _DownloadedFile;

  factory DownloadedFile.fromJson(Map<String, dynamic> json) =>
      _$DownloadedFileFromJson(json);
}
