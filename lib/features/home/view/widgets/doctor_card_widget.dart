import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:our_flutter_clinic_app/features/home/model/doctor_model.dart';

class DoctorCardWidget extends StatelessWidget {
  const DoctorCardWidget({
    super.key,
    required this.doctor,
    this.isButton = true,
    required this.onTap,
  });

  final DoctorModel doctor;
  final bool isButton;
  final void Function(DoctorModel doctor) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => onTap(doctor),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Pallete.graysGray4,
        ),
        width: screenWidth(context) * 0.7,
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Pallete.grayScaleColor300,
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/Doctor Image (2).png',
                      width: 32,
                      height: 32,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${(doctor.firstName ?? 'No')} ${doctor.lastName ?? 'Doctor'}',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontSize: 14,
                        color: Pallete.black1,
                      ),
                    ),
                    Text(
                      doctor.speciality ?? 'No speciality',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: 13,
                        color: Pallete.gray2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: isButton ? 15 : 25),
            Row(
              children: [
                Text(
                  doctor.finalRate.toString(),
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 14,
                    color: Pallete.black1,
                  ),
                ),
                const SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: const Icon(Icons.star, color: Pallete.star, size: 16),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3.0, right: 5),
                  child: Icon(
                    Icons.access_time,
                    size: 16,
                    color: Pallete.gray1,
                  ),
                ),
                Text(
                  doctor.averageVisitDuration.toString(),
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 14,
                    color: Pallete.black1,
                  ),
                ),
              ],
            ),
            if (isButton) ...[
              const SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                height: screenHeight(context) * 0.05,
                child: CustomElevatedButton(
                  borderRadius: 32,
                  fontSize: 12,
                  title: 'Book Appointment',
                  onTap: () {},
                  fillColor: Pallete.buttonBG,
                  textColor: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
