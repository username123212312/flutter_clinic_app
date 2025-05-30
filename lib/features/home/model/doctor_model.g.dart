// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) => _DoctorModel(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phone: json['phone'] as String?,
      clinicId: (json['clinic_id'] as num?)?.toInt(),
      photoPath: json['photo_path'] as String?,
      treated: json['treated'] as bool?,
      speciality: json['speciality'] as String?,
      department: json['department'] as String?,
      finalRate: json['final_rate'] as String?,
      visitFee: (json['visitFee'] as num?)?.toDouble(),
      excperience: json['excperience'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$DoctorModelToJson(_DoctorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'clinic_id': instance.clinicId,
      'photo_path': instance.photoPath,
      'treated': instance.treated,
      'speciality': instance.speciality,
      'department': instance.department,
      'final_rate': instance.finalRate,
      'visitFee': instance.visitFee,
      'excperience': instance.excperience,
      'status': instance.status,
    };
