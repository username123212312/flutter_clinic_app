import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../features/home/model/schedule.dart';

part 'modify_doctor_info_request.freezed.dart';

@freezed
class ModifyDoctorInfoRequest with _$ModifyDoctorInfoRequest {
  factory ModifyDoctorInfoRequest({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? email,
    String? phone,
    File? photo,
    String? speciality,
    @JsonKey(name: 'professional_title') String? professionalTitle,
    double? finalRate,
    @JsonKey(name: 'average_visit_duration') String? averageVisitDuration,
    @JsonKey(name: 'visit_fee') double? visitFee,
    String? experience,
    @JsonKey(name: 'booking_type') String? bookingType,
    String? status,
    File? sign,
  }) = _ModifyDoctorInfoRequest;
}
