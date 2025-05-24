// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uploading_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UploadingFile _$UploadingFileFromJson(Map<String, dynamic> json) =>
    _UploadingFile(
      filePath: json['filePath'] as String?,
      fileName: json['fileName'] as String?,
      fileSize: (json['fileSize'] as num?)?.toInt(),
      uploadStart: json['uploadStart'] == null
          ? null
          : DateTime.parse(json['uploadStart'] as String),
    );

Map<String, dynamic> _$UploadingFileToJson(_UploadingFile instance) =>
    <String, dynamic>{
      'filePath': instance.filePath,
      'fileName': instance.fileName,
      'fileSize': instance.fileSize,
      'uploadStart': instance.uploadStart?.toIso8601String(),
    };
