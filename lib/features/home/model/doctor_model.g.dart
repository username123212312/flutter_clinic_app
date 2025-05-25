// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) => _DoctorModel(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phone: json['phone'] as String?,
      clinic: json['clinic'] as String?,
      photoPath: json['photoPath'] as String?,
      treated: json['treated'] as bool?,
      speciality: json['speciality'] as String?,
      department: json['department'] as String?,
      finalRate: json['finalRate'] as String?,
      visitFee: (json['visitFee'] as num?)?.toDouble(),
      excperience: json['excperience'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$DoctorModelToJson(_DoctorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'clinic': instance.clinic,
      'photoPath': instance.photoPath,
      'treated': instance.treated,
      'speciality': instance.speciality,
      'department': instance.department,
      'finalRate': instance.finalRate,
      'visitFee': instance.visitFee,
      'excperience': instance.excperience,
      'status': instance.status,
    };
