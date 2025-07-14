// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewModelImpl _$$ReviewModelImplFromJson(Map<String, dynamic> json) =>
    _$ReviewModelImpl(
      patientId: (json['patient_id'] as num?)?.toInt(),
      patientFirstName: json['patient_first_name'] as String?,
      patientLastName: json['patient_last_name'] as String?,
      rate: (json['rate'] as num?)?.toInt(),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$ReviewModelImplToJson(_$ReviewModelImpl instance) =>
    <String, dynamic>{
      'patient_id': instance.patientId,
      'patient_first_name': instance.patientFirstName,
      'patient_last_name': instance.patientLastName,
      'rate': instance.rate,
      'comment': instance.comment,
    };
