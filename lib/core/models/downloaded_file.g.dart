// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloaded_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DownloadedFileImpl _$$DownloadedFileImplFromJson(Map<String, dynamic> json) =>
    _$DownloadedFileImpl(
      originalUrl: json['originalUrl'] as String?,
      localPath: json['localPath'] as String?,
      fileName: json['fileName'] as String?,
      fileSize: (json['fileSize'] as num?)?.toInt(),
      downloadDate:
          json['downloadDate'] == null
              ? null
              : DateTime.parse(json['downloadDate'] as String),
    );

Map<String, dynamic> _$$DownloadedFileImplToJson(
  _$DownloadedFileImpl instance,
) => <String, dynamic>{
  'originalUrl': instance.originalUrl,
  'localPath': instance.localPath,
  'fileName': instance.fileName,
  'fileSize': instance.fileSize,
  'downloadDate': instance.downloadDate?.toIso8601String(),
};
