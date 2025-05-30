import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';

double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
int calculateAge(DateTime birthDate) {
  final now = DateTime.now();
  int age = now.year - birthDate.year;

  // Check if birthday hasn't happened yet this year
  if (now.month < birthDate.month ||
      (now.month == birthDate.month && now.day < birthDate.day)) {
    age--;
  }

  return age;
}

void clearAndShowSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context)
    ..clearSnackBars()
    ..showSnackBar(SnackBar(content: Text(message)));
}

String? checkEmptiness(String value) {
  return value.trim().isEmpty ? null : value;
}

Future<DateTime?> showRestrictedDatePicker({
  required BuildContext context,
  required List<DateTime> availableDates,
}) async {
  return await showDatePicker(
    context: context,
    initialDate: availableDates.first,
    firstDate: availableDates.first,
    lastDate: availableDates.last,
    selectableDayPredicate: (DateTime day) {
      // Only enable dates that exist in availableDates
      return availableDates.any(
        (availableDate) =>
            day.year == availableDate.year &&
            day.month == availableDate.month &&
            day.day == availableDate.day,
      );
    },
  );
}

TimeOfDay parseTimeWithDateFormat(String timeString) {
  final format = DateFormat('HH:mm');
  final dateTime = format.parse(timeString);
  return TimeOfDay.fromDateTime(dateTime);
}

String formatTime(TimeOfDay time, [bool isPeriodic = true]) {
  final hour = time.hourOfPeriod; // 12-hour format
  final minute = time.minute.toString().padLeft(2, '0');
  final period = time.period == DayPeriod.am ? 'AM' : 'PM';
  return '${hour < 10 ? '0$hour' : hour}:$minute ${isPeriodic ? period : ''}';
}
