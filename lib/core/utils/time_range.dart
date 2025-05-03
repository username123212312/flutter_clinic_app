import 'package:flutter/material.dart';

class TimeRange {
  final TimeOfDay start;
  final TimeOfDay end;

  TimeRange(this.start, this.end);

  @override
  String toString() {
    final startStr = _formatTime(start);
    final endStr = _formatTime(end);
    return '$startStr - $endStr';
  }

  String _formatTime(TimeOfDay time) {
    final hour = time.hourOfPeriod; // 12-hour format
    final minute = time.minute.toString().padLeft(2, '0');
    final period = time.period == DayPeriod.am ? 'AM' : 'PM';
    return '$hour:$minute $period';
  }

  // Parse from string like "11:00 AM - 12:00 PM"
  factory TimeRange.fromString(String timeRange) {
    final parts = timeRange.split(' - ');
    return TimeRange(_parseTime(parts[0]), _parseTime(parts[1]));
  }

  static TimeOfDay _parseTime(String timeStr) {
    final timePeriod = timeStr.split(' ');
    final timeParts = timePeriod[0].split(':');
    final period = timePeriod[1];

    return TimeOfDay(
      hour:
          period == 'AM'
              ? int.parse(timeParts[0])
              : int.parse(timeParts[0]) + 12,
      minute: int.parse(timeParts[1]),
    );
  }
}
