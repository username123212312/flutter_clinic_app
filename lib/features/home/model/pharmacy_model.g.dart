// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PharmacyModelImpl _$$PharmacyModelImplFromJson(Map<String, dynamic> json) =>
    _$PharmacyModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      startTime: json['start_time'] as String?,
      finishTime: json['finish_time'] as String?,
      phone: json['phone'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$PharmacyModelImplToJson(_$PharmacyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'start_time': instance.startTime,
      'finish_time': instance.finishTime,
      'phone': instance.phone,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'location': instance.location,
    };
