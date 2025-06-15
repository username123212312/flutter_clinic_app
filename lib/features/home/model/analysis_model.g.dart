// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalysisModelImpl _$$AnalysisModelImplFromJson(Map<String, dynamic> json) =>
    _$AnalysisModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String,
      description: json['description'] as String?,
      status: $enumDecodeNullable(_$AnalysisStatusEnumMap, json['status']),
      resultFile: json['result_file'] as String?,
      resultPhoto: json['result_photo'] as String?,
      clinic: json['clinic'] as String?,
      patientFirstName: json['patient_first_name'] as String?,
      patientLastName: json['patient_last_name'] as String?,
      patientId: (json['patient_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AnalysisModelImplToJson(_$AnalysisModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'status': _$AnalysisStatusEnumMap[instance.status],
      'result_file': instance.resultFile,
      'result_photo': instance.resultPhoto,
      'clinic': instance.clinic,
      'patient_first_name': instance.patientFirstName,
      'patient_last_name': instance.patientLastName,
      'patient_id': instance.patientId,
    };

const _$AnalysisStatusEnumMap = {
  AnalysisStatus.all: 'all',
  AnalysisStatus.pending: 'pending',
  AnalysisStatus.finished: 'finished',
  AnalysisStatus.canceled: 'canceled',
};
