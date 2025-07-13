import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';

part 'work_day.freezed.dart';
part 'work_day.g.dart';

@freezed
class WorkDay with _$WorkDay {
  factory WorkDay({
    String? day,
    @JsonKey(name: 'available_shifts') List<AvailableShift>? availableShifts,
  }) = _WorkDay;

  factory WorkDay.fromJson(Map<String, dynamic> json) => WorkDay(
    day: json['day'] as String,
    availableShifts:
        (json['available_shifts'] as List)
            .map((e) => AvailableShift.fromJson(e as String))
            .toList(),
  );
  @override
  Map<String, dynamic> toJson() {
    if ((availableShifts ?? []).isEmpty) {
      throw StateError('No available shifts for day $day');
    }

    return {'day': day, 'Shift': availableShifts?.first.toJson};
  }
}
