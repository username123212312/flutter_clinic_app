// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkDayImpl _$$WorkDayImplFromJson(Map<String, dynamic> json) =>
    _$WorkDayImpl(
      day: json['day'] as String?,
      availableShifts:
          (json['available_shifts'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$AvailableShiftEnumMap, e))
              .toList(),
    );

Map<String, dynamic> _$$WorkDayImplToJson(_$WorkDayImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'available_shifts':
          instance.availableShifts
              ?.map((e) => _$AvailableShiftEnumMap[e]!)
              .toList(),
    };

const _$AvailableShiftEnumMap = {
  AvailableShift.morning: 'morning',
  AvailableShift.evening: 'evening',
};
