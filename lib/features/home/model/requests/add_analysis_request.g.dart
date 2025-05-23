// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_analysis_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddAnalysisRequest _$AddAnalysisRequestFromJson(Map<String, dynamic> json) =>
    _AddAnalysisRequest(
      name: json['name'] as String,
      description: json['description'] as String?,
      resultFilePath: json['resultFilePath'] as String?,
      resultImagePath: json['resultImagePath'] as String?,
    );

Map<String, dynamic> _$AddAnalysisRequestToJson(_AddAnalysisRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'resultFilePath': instance.resultFilePath,
      'resultImagePath': instance.resultImagePath,
    };
