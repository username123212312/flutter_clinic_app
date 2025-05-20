// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_patient_request.freezed.dart';
part 'register_patient_request.g.dart';

@freezed
sealed class RegisterPatientRequest with _$RegisterPatientRequest {
  factory RegisterPatientRequest({
    String? email,
    String? phone,
    required String password,
    @JsonKey(name: 'password_confirmation')
    required String passwordConfirmation,
  }) = _RegisterPatientRequest;

  factory RegisterPatientRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterPatientRequestFromJson(json);
}
