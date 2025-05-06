import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/core/utils/utils.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:flutter_clinic_app/features/home/model/doctor_model.dart';

class DoctorCardWidget extends StatelessWidget {
  const DoctorCardWidget({super.key, required this.doctor});
  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Pallete.graysGray4,
      ),
      width: screenWidth(context) * 0.1,
      height: screenHeight(context) * 0.2,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                minRadius: 20,
                backgroundImage: AssetImage(
                  'assets/images/Jennifer Miller.jpg',
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    doctor.name,
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontSize: 14,
                      color: Pallete.black1,
                    ),
                  ),
                  Text(
                    doctor.specality,
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontSize: 14,
                      color: Pallete.graysGray2,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text(
                doctor.rate.toString(),
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 14,
                  color: Pallete.black1,
                ),
              ),
              SizedBox(width: 5),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Image.asset('assets/icons/Star.png'),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0, right: 5),
                child: Image.asset('assets/icons/Time.png'),
              ),

              Text(
                doctor.availabilityTime ?? '10:30am - 5:30pm',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 14,
                  color: Pallete.black1,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          SizedBox(
            width: screenWidth(context) * 0.7,
            height: screenHeight(context) * 0.05,
            child: CustomElevatedButton(
              borderRadius: 32,
              fontSize: 12,
              title: 'Book Appointment',
              onTap: () {},
              fillColor: Pallete.buttomBG,
              textColor: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
