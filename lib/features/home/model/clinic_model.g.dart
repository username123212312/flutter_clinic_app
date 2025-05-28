// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClinicModel _$ClinicModelFromJson(Map<String, dynamic> json) => _ClinicModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      numOfDoctors: (json['numOfDoctors'] as num?)?.toInt(),
      location: json['location'] as String?,
    );

Map<String, dynamic> _$ClinicModelToJson(_ClinicModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'numOfDoctors': instance.numOfDoctors,
      'location': instance.location,
    };
