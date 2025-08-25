import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/utils/logger.dart';
import 'package:toastification/toastification.dart';

import '../../service_locator.dart';
import '../blocs/user_bloc/user_bloc.dart';
import '../enums.dart';
import '../theme/app_pallete.dart';

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
  if (availableDates.isNotEmpty) {
    return await showDatePicker(
      initialEntryMode: DatePickerEntryMode.calendarOnly,
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
  } else {
    return null;
  }
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

String formatTime24(TimeOfDay time) {
  final hours = time.hour < 10 ? '0${time.hour}' : '${time.hour}';
  final minutes = time.minute < 10 ? '0${time.minute}' : '${time.minute}';
  return '$hours:$minutes'.trim();
}

String parseStringList(dynamic strings) {
  if (strings is List) {
    var finishedString = '';
    for (var i = 0; i < strings.length; i++) {
      if (i == 0) {
        finishedString += strings[i];
      } else {
        finishedString += '\n ${strings[i]}';
      }
    }
    return finishedString;
  } else {
    return strings;
  }
}

void navigateByRole(
  BuildContext context, {
  required Role role,
  bool isCompleteProfile = false,
}) {
  switch (role) {
    case Role.patient:
      context.goNamed(AppRouteConstants.homeRouteName);
      return;
    case Role.doctor:
      isCompleteProfile
          ? context.pushNamed(AppRouteConstants.doctorScheduleRouteName)
          : context.goNamed(AppRouteConstants.doctorHomeRouteName);
      return;
    case Role.labtech:
      context.goNamed(AppRouteConstants.labtechHomeRouteName);
      return;
    default:
      context.goNamed(AppRouteConstants.homeRouteName);
      return;
  }
}

Future<File?> pickFile() async {
  final result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png'],
  );
  if (result != null && result.files.single.path != null) {
    return File(result.files.single.path!);
  } else {
    return null;
  }
}

Future<File?> pickPhoto() async {
  final result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['jpg', 'jpeg', 'png'],
  );
  if (result != null && result.files.single.path != null) {
    return File(result.files.single.path!);
  } else {
    return null;
  }
}

Future<bool> handlePayment(String clientSecret, [String? paymentName]) async {
  try {
    // 1. Initialize the payment sheet
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: clientSecret,
        merchantDisplayName: paymentName ?? 'Mediverse',
        // customerId and ephemeralKeySecret only needed for returning customers
        // style: ThemeMode.dark, // Optional
        // testEnv: true // Stripe handles this automatically for test keys
      ),
    );

    // 2. Present the payment sheet
    await Stripe.instance.presentPaymentSheet();

    eLog('✅ Payment completed!');

    return true;
  } on StripeException catch (e) {
    eLog('❌ Stripe error: ${e.error.localizedMessage}');

    return false;
  } catch (e) {
    eLog('❌ General error: $e');
    return false;
  }
}

int? getChildId() {
  return ServiceLocator.instance<UserBloc>().state.currentChildId;
}

List<Color> selectAppointmentStatusColor(AppointmentStatus appointmentStatus) {
  return switch (appointmentStatus) {
    AppointmentStatus.pending => [
      Pallete.statusColorPending,
      Pallete.alertWarningColor,
    ],
    AppointmentStatus.visited => [
      Pallete.statusColorFinished,
      Pallete.alertSuccessColor,
    ],
    AppointmentStatus.cancelled => [
      Pallete.statusColorCanceled,
      Pallete.alertDangerColor,
    ],
  };
}

void showToast({
  bool bypassLengthCheck = false,
  required BuildContext context,
  required String msg,
  ToastificationType type = ToastificationType.info,
}) {
  toastification.show(
    style: ToastificationStyle.flatColored,
    type: type,
    animationBuilder: (context, animation, alignment, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0.0, -1.0),
          end: Offset(0.0, 0.0),
        ).animate(animation),
        child: child,
      );
    },

    context: context,
    title: Text(
      // textAlign: TextAlign.center,
      bypassLengthCheck
          ? msg
          : msg.length > 70
          ? 'Some Error occurred'
          : msg,
      style: Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 14.0),
    ),
    autoCloseDuration: Duration(seconds: 5),
  );
}

bool doesListHaveMore(Map<String, dynamic> meta) {
  return (meta['current_page'] ?? -1) < (meta['last_page'] ?? 0);
}
