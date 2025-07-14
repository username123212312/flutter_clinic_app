import 'package:json_annotation/json_annotation.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';

class DoctorAppointmentTypeConverter
    implements JsonConverter<DoctorAppointmentType?, String?> {
  const DoctorAppointmentTypeConverter();
  @override
  DoctorAppointmentType? fromJson(String? json) {
    switch (json) {
      case 'first time':
        return DoctorAppointmentType.firstTime;
      case 'checkup':
        return DoctorAppointmentType.checkup;
      default:
        return DoctorAppointmentType.firstTime;
    }
  }

  @override
  String? toJson(DoctorAppointmentType? object) {
    switch (object) {
      case DoctorAppointmentType.firstTime:
        return 'first time';
      case DoctorAppointmentType.checkup:
        return 'checkup';
      default:
        return 'first time';
    }
  }
}
