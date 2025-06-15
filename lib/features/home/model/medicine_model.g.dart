// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MedicineModelImpl _$$MedicineModelImplFromJson(Map<String, dynamic> json) =>
    _$MedicineModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      dose: json['dose'] as String?,
      frequency: json['frequency'] as String?,
      strength: json['strength'] as String?,
      until: json['until'] as String?,
      whenToTake: json['whenToTake'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$MedicineModelImplToJson(_$MedicineModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dose': instance.dose,
      'frequency': instance.frequency,
      'strength': instance.strength,
      'until': instance.until,
      'whenToTake': instance.whenToTake,
      'note': instance.note,
    };
