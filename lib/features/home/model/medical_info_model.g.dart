// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MedicalInfoModel _$MedicalInfoModelFromJson(Map<String, dynamic> json) =>
    _MedicalInfoModel(
      id: (json['id'] as num?)?.toInt(),
      diagnosis: json['diagnosis'] as String?,
      doctorNote: json['doctorNote'] as String?,
      patientNote: json['patientNote'] as String?,
      prescription: json['prescription'] == null
          ? null
          : PrescriptionModel.fromJson(
              json['prescription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MedicalInfoModelToJson(_MedicalInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'diagnosis': instance.diagnosis,
      'doctorNote': instance.doctorNote,
      'patientNote': instance.patientNote,
      'prescription': instance.prescription,
    };
