import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../../core/theme/app_pallete.dart';
import '../../../../../../../core/utils/utils.dart';
import '../../../../widgets/custom_button.dart';
import '../widget_doctor/appointment_details_card.dart';
import '../widget_doctor/info_box.dart';

class AppointmentDetailsScreen extends StatelessWidget {
  const AppointmentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Appointment Details',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 16,
            color: Pallete.black1,
          ),
        ),
        backgroundColor: Pallete.grayScaleColor0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Pallete.black1,
            size: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppointmentDetailsCard(
              doctorName: 'David H. Brown',
              specialty: 'Psychologist',
              imagePath: 'im/profile.png',
              hourlyRate: "Hourly Rate:\$25.00",
              rating: 4.8,
              backgroundColor: Pallete.graysGray5,
            ),
            const SizedBox(height: 20),
            Text(
              "Schedule",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 18,
                color: Pallete.black1,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: InfoBox(
                      title: "8 October, Sun",
                      subtitle: "Date",
                      backgroundColor: Pallete.graysGray5,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: InfoBox(
                      title: "2:30am - 3:30pm",
                      subtitle: "Time",
                      backgroundColor: Pallete.graysGray5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            Center(
              child: CustomButton(
                text: "Checkout",
                onPressed: () {},
                color: Pallete.primaryColor,

                width: screenWidth(context) * 0.75,
                height: screenHeight(context) * 0.065,
                padding: const EdgeInsets.all(16),
                borderRadius: 32,
                fontSize: 16,
                textColor: Pallete.grayScaleColor0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
