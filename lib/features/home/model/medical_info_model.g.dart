// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MedicalInfoModelImpl _$$MedicalInfoModelImplFromJson(
  Map<String, dynamic> json,
) => _$MedicalInfoModelImpl(
  id: (json['id'] as num?)?.toInt(),
  noteForTheDoctor: json['note for the doctor'],
  noteForThePatient: json['note for the patient'],
  symptoms: json['symptoms'] as String?,
  diagnosis: json['diagnosis'] as String?,
  doctorNote: json['doctorNote'] as String?,
  patientNote: json['patientNote'] as String?,
  prescription:
      json['prescription'] == null
          ? null
          : PrescriptionModel.fromJson(
            json['prescription'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$MedicalInfoModelImplToJson(
  _$MedicalInfoModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'note for the doctor': instance.noteForTheDoctor,
  'note for the patient': instance.noteForThePatient,
  'symptoms': instance.symptoms,
  'diagnosis': instance.diagnosis,
  'doctorNote': instance.doctorNote,
  'patientNote': instance.patientNote,
  'prescription': instance.prescription,
};
