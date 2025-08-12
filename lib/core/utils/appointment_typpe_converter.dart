import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';

class AppointmentTypeConverter
    extends JsonConverter<AppointmentType?, String?> {
  const AppointmentTypeConverter();
  @override
  AppointmentType? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    if (json == 'first time') {
      return AppointmentType.firstTime;
    } else {
      return AppointmentType.values.firstWhere((type) {
        return type.name == json;
      });
    }
  }

  @override
  String? toJson(AppointmentType? object) {
    if ((object ?? AppointmentType.firstTime).isFirstTime) {
      return 'first time';
    } else {
      return object?.name;
    }
  }
}
