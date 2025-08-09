import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_edit_vac_record_request.freezed.dart';

@freezed
class DoctorEditVacRecordRequest with _$DoctorEditVacRecordRequest {
  factory DoctorEditVacRecordRequest({
    int? doseNumber,
    String? notes,
    required bool isTaken,
    required int recordId,
    DateTime? nextVaccineDate,
  }) = _DoctorEditVacRecordRequest;
}
