import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/core/utils/time_range.dart';
import 'package:flutter_clinic_app/core/utils/general_utils.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/custom_elevated_button.dart';
import 'package:intl/intl.dart';

class AppointmentWidgetItem extends StatelessWidget {
  const AppointmentWidgetItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.timeRange,
    required this.imagePath,
  });
  final String title;
  final String subtitle;
  final DateTime date;
  final TimeRange timeRange;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 0.0),
              blurRadius: 16,
              spreadRadius: 0,
              color: Color.fromRGBO(67, 67, 67, 0.16),
            ),
          ],
          borderRadius: BorderRadius.circular(12),
          color: Pallete.grayScaleColor0,
        ),
        height: screenHeight(context) * 0.27,

        padding: EdgeInsets.all(7),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: screenHeight(context) * 0.08,
                  height: screenHeight(context) * 0.09,
                  decoration: BoxDecoration(
                    color: Pallete.grayScaleColor200,
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(
                        context,
                      ).textTheme.labelSmall!.copyWith(fontSize: 13),
                    ),
                    SizedBox(height: 5),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: 10,
                        color: Pallete.sliverSand,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 13),
            Row(
              children: [
                Image.asset(
                  'assets/icons/tabler_calendar-event.png',
                  width: 25,
                  height: 25,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10),
                Text(
                  DateFormat('EEEE, MMMM d, y').format(date),
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall!.copyWith(fontSize: 12),
                ),
              ],
            ),
            SizedBox(height: 13),
            Row(
              children: [
                Image.asset(
                  'assets/icons/ic_clock.png',
                  width: 25,
                  height: 25,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10),
                Text(
                  timeRange.toString(),
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall!.copyWith(fontSize: 12),
                ),
              ],
            ),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: screenHeight(context) * 0.045,
                    child: CustomElevatedButton(
                      borderRadius: 32,
                      fontSize: 13,
                      title: 'Cancel',
                      onTap: () {},
                      fillColor: Colors.transparent,
                      elevation: 0,
                      borderColor: Pallete.primaryColor,
                      textColor: Pallete.primaryColor,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: screenHeight(context) * 0.045,
                    child: CustomElevatedButton(
                      borderRadius: 32,
                      fontSize: 13,
                      title: 'Reschedule',
                      // fontSize: 12,
                      onTap: () {},
                      fillColor: Pallete.primaryColor,
                      elevation: 0,
                      borderColor: Pallete.primaryColor,
                      textColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
