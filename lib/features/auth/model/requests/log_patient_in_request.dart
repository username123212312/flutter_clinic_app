import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_patient_in_request.freezed.dart';
part 'log_patient_in_request.g.dart';

@freezed
sealed class LogPatientInRequest with _$LogPatientInRequest {
  factory LogPatientInRequest({
    required String? email,
    required String? phone,
    required String password,
  }) = _LogPatientInRequest;

  factory LogPatientInRequest.fromJson(Map<String, dynamic> json) =>
      _$LogPatientInRequestFromJson(json);
}
