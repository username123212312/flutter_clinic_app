// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_analysis_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddAnalysisRequestImpl _$$AddAnalysisRequestImplFromJson(
  Map<String, dynamic> json,
) => _$AddAnalysisRequestImpl(
  name: json['name'] as String,
  description: json['description'] as String?,
  patientNumber: (json['patient_number'] as num?)?.toInt(),
  clinicId: (json['clinicId'] as num?)?.toInt(),
  resultFilePath: json['resultFilePath'] as String?,
  resultImagePath: json['resultImagePath'] as String?,
  price: (json['price'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$AddAnalysisRequestImplToJson(
  _$AddAnalysisRequestImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'patient_number': instance.patientNumber,
  'clinicId': instance.clinicId,
  'resultFilePath': instance.resultFilePath,
  'resultImagePath': instance.resultImagePath,
  'price': instance.price,
};
