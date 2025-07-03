import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_doctor_request.freezed.dart';

@freezed
sealed class RateDoctorRequest with _$RateDoctorRequest {
  factory RateDoctorRequest({
    required int doctorId,
    required String comment,
    required double rate,
  }) = _RateDoctorRequest;
}
