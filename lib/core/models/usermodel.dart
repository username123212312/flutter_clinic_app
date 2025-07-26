// ignore_for_file: invalid_annotation_target

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../features/home/model/schedule.dart';
import '../../features/home/model/work_day.dart';

part 'usermodel.freezed.dart';
part 'usermodel.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  const UserModel._();

  factory UserModel({
    //? User
    int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? email,
    String? phone,
    @Default(Role.patient) Role? role,
    String? token,
    String? password,
    //? Patient
    @JsonKey(name: 'birth_date') DateTime? birthDate,
    String? gender,
    @JsonKey(name: 'blood_type') String? bloodType,
    @Default(false) @JsonKey(name: 'complete_profile') bool isCompleteProfile,
    String? address,
    //? Doctor
    String? photo,
    String? clinic,
    String? speciality,
    @JsonKey(name: 'professional_title') String? professionalTitle,
    double? finalRate,
    @JsonKey(name: 'average_visit_duration') String? averageVisitDuration,
    @JsonKey(name: 'visit_fee') double? visitFee,
    int? experience,
    int? treated,
    @JsonKey(name: 'booking_type') String? bookingType,
    String? status,
    String? sign,
    List<Schedule>? schedule,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  ChatUser get toChatUser {
    return ChatUser(id: id.toString(), firstName: firstName);
  }
}
