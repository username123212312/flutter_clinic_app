// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrescriptionModelImpl _$$PrescriptionModelImplFromJson(
  Map<String, dynamic> json,
) => _$PrescriptionModelImpl(
  id: (json['id'] as num?)?.toInt(),
  note: json['note'] as String?,
  medicines:
      (json['medicines'] as List<dynamic>?)
          ?.map((e) => MedicineModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$PrescriptionModelImplToJson(
  _$PrescriptionModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'note': instance.note,
  'medicines': instance.medicines,
};
