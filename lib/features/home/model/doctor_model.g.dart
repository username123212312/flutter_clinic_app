// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorModelImpl _$$DoctorModelImplFromJson(Map<String, dynamic> json) =>
    _$DoctorModelImpl(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phone: json['phone'] as String?,
      clinicId: (json['clinic_id'] as num?)?.toInt(),
      clinic: json['clinic'] as String?,
      photoPath: json['photo_path'] as String?,
      photo: json['photo'] as String?,
      professionalTitle: json['professional_title'] as String?,
      averageVisitDuration: json['average_visit_duration'] as String?,
      treated: (json['treated'] as num?)?.toInt(),
      speciality: json['speciality'] as String?,
      department: json['department'] as String?,
      finalRate: (json['finalRate'] as num?)?.toInt(),
      visitFee: (json['visit_fee'] as num?)?.toDouble(),
      excperience: json['excperience'] as String?,
      status: json['status'] as String?,
      sign: json['sign'] as String?,
      schedule:
          (json['schedule'] as List<dynamic>?)
              ?.map((e) => Schedule.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$DoctorModelImplToJson(_$DoctorModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'clinic_id': instance.clinicId,
      'clinic': instance.clinic,
      'photo_path': instance.photoPath,
      'photo': instance.photo,
      'professional_title': instance.professionalTitle,
      'average_visit_duration': instance.averageVisitDuration,
      'treated': instance.treated,
      'speciality': instance.speciality,
      'department': instance.department,
      'finalRate': instance.finalRate,
      'visit_fee': instance.visitFee,
      'excperience': instance.excperience,
      'status': instance.status,
      'sign': instance.sign,
      'schedule': instance.schedule,
    };
