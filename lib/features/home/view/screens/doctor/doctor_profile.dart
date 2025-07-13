import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../widgets/widget_doctor/day_widget.dart';
import '../../widgets/widget_doctor/doctor_card_profile.dart';
import '../../widgets/widget_doctor/shift_widget.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({super.key});

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  String? selectedDay;

  final Map<String, List<Map<String, String>>> shiftsByDay = {
    'SUN': [
      {'title': 'Morning', 'time': '8 AM - 12 PM'},
      {'title': 'Evening', 'time': '4 PM - 8 PM'},
    ],
    'MON': [
      {'title': 'Morning', 'time': '9 AM - 1 PM'},
    ],
    'TUE': [
      {'title': 'Evening', 'time': '5 PM - 9 PM'},
    ],
    'FRI': [
      {'title': 'Evening', 'time': '5 PM - 9 PM'},
    ],
  };

  void deleteDay(String day) {
    setState(() {
      shiftsByDay.remove(day);
      if (selectedDay == day) selectedDay = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        title: Text(
          'Doctor Profile',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 17,
            color: Pallete.black1,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Pallete.black1,
            size: 18,
          ),
        ),
        backgroundColor: Pallete.grayScaleColor0,
      ),
      backgroundColor: Pallete.backgroundColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Doctor Information',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 17,
                color: Pallete.black1,
              ),
            ),

            const SizedBox(height: 12),
            const DoctorCardProfile(),
            const SizedBox(height: 25),
            Text(
              'Available Days',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 16,
                color: Pallete.black1,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: screenHeight(context) * 0.06,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:
                    ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT'].map((
                      day,
                    ) {
                      final isAvailable = shiftsByDay.containsKey(day);
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: DayWidget(
                          day: day,
                          isSelected: selectedDay == day,
                          isAvailable: isAvailable,
                          onTap:
                              isAvailable
                                  ? () {
                                    setState(() {
                                      selectedDay = day;
                                    });
                                  }
                                  : null,
                        ),
                      );
                    }).toList(),
              ),
            ),
            const SizedBox(height: 20),
            if (selectedDay != null &&
                shiftsByDay.containsKey(selectedDay)) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                    shiftsByDay[selectedDay]!.map((shift) {
                      return ShiftWidget(
                        title: shift['title']!,
                        time: shift['time']!,
                      );
                    }).toList(),
              ),
              const SizedBox(height: 12),
              TextButton.icon(
                onPressed: () => deleteDay(selectedDay!),
                icon: const Icon(Icons.delete, color: Pallete.primaryColor),
                label: const Text(
                  "Delete This Day",
                  style: TextStyle(color: Pallete.black1),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
