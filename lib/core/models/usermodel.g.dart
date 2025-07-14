// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']) ?? Role.patient,
      token: json['token'] as String?,
      password: json['password'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      bloodType: json['blood_type'] as String?,
      isCompleteProfile: json['complete_profile'] as bool? ?? false,
      address: json['address'] as String?,
      photo: json['photo'] as String?,
      clinic: json['clinic'] as String?,
      speciality: json['speciality'] as String?,
      professionalTitle: json['professional_title'] as String?,
      finalRate: (json['finalRate'] as num?)?.toDouble(),
      averageVisitDuration: json['average_visit_duration'] as String?,
      visitFee: (json['visit_fee'] as num?)?.toDouble(),
      experience: (json['experience'] as num?)?.toInt(),
      treated: (json['treated'] as num?)?.toInt(),
      bookingType: json['booking_type'] as String?,
      status: json['status'] as String?,
      sign: json['sign'] as String?,
      schedule:
          (json['schedule'] as List<dynamic>?)
              ?.map((e) => Schedule.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'role': _$RoleEnumMap[instance.role],
      'token': instance.token,
      'password': instance.password,
      'age': instance.age,
      'gender': instance.gender,
      'blood_type': instance.bloodType,
      'complete_profile': instance.isCompleteProfile,
      'address': instance.address,
      'photo': instance.photo,
      'clinic': instance.clinic,
      'speciality': instance.speciality,
      'professional_title': instance.professionalTitle,
      'finalRate': instance.finalRate,
      'average_visit_duration': instance.averageVisitDuration,
      'visit_fee': instance.visitFee,
      'experience': instance.experience,
      'treated': instance.treated,
      'booking_type': instance.bookingType,
      'status': instance.status,
      'sign': instance.sign,
      'schedule': instance.schedule,
    };

const _$RoleEnumMap = {
  Role.doctor: 'doctor',
  Role.labtech: 'labtech',
  Role.patient: 'patient',
  Role.admin: 'admin',
};
