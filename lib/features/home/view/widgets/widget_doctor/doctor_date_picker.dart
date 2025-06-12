// import 'package:flutter/material.dart';

// import '../../../../../../../core/theme/app_pallete.dart';

// class DoctorDatePicker extends StatelessWidget {
//   final List<int> availableWeekdays;
//   final DateTime? selectedDate;
//   final Function(DateTime) onDateSelected;

//   const DoctorDatePicker({
//     super.key,
//     required this.availableWeekdays,
//     required this.selectedDate,
//     required this.onDateSelected,
//   });

//   bool _isDateSelectable(DateTime date) {
//     return availableWeekdays.contains(date.weekday);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return dp.DayPicker.single(
//       selectedDate: selectedDate ?? DateTime.now(),
//       onChanged: (date) {
//         if (_isDateSelectable(date)) {
//           onDateSelected(date);
//         }
//       },
//       firstDate: DateTime.now(),
//       lastDate: DateTime(2101),
//       datePickerStyles: dp.DatePickerRangeStyles(
//         selectedSingleDateDecoration: const BoxDecoration(
//           color: Pallete.primaryColor,
//           shape: BoxShape.circle,
//         ),
//       ),
//       selectableDayPredicate: _isDateSelectable,
//     );
//   }
// }
