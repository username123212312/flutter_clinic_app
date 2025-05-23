// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnalysisModel _$AnalysisModelFromJson(Map<String, dynamic> json) =>
    _AnalysisModel(
      name: json['name'] as String,
      description: json['description'] as String,
      resultFile: json['result_file'] as String,
      resultPhoto: json['result_photo'] as String,
    );

Map<String, dynamic> _$AnalysisModelToJson(_AnalysisModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'result_file': instance.resultFile,
      'result_photo': instance.resultPhoto,
    };
