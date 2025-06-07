// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnalysisModel _$AnalysisModelFromJson(Map<String, dynamic> json) =>
    _AnalysisModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String,
      description: json['description'] as String?,
      resultFile: json['result_file'] as String?,
      resultPhoto: json['result_photo'] as String?,
      clinic: json['clinic'] as String?,
      patientFirstName: json['patient_first_name'] as String?,
      patientLastName: json['patient_last_name'] as String?,
      patientId: (json['patient_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AnalysisModelToJson(_AnalysisModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'result_file': instance.resultFile,
      'result_photo': instance.resultPhoto,
      'clinic': instance.clinic,
      'patient_first_name': instance.patientFirstName,
      'patient_last_name': instance.patientLastName,
      'patient_id': instance.patientId,
    };
