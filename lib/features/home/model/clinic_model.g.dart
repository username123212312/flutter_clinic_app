// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClinicModelImpl _$$ClinicModelImplFromJson(Map<String, dynamic> json) =>
    _$ClinicModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      numOfDoctors: (json['numOfDoctors'] as num?)?.toInt(),
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$ClinicModelImplToJson(_$ClinicModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'numOfDoctors': instance.numOfDoctors,
      'location': instance.location,
    };
