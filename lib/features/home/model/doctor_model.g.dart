// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) => _DoctorModel(
      name: json['name'] as String,
      specality: json['specality'] as String,
      rate: (json['rate'] as num?)?.toDouble(),
      availabilityTime: json['availabilityTime'] as String?,
    );

Map<String, dynamic> _$DoctorModelToJson(_DoctorModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'specality': instance.specality,
      'rate': instance.rate,
      'availabilityTime': instance.availabilityTime,
    };
