import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';

import '../../../../../core/enums.dart';

class DoctorAppointmentCard extends StatelessWidget {
  const DoctorAppointmentCard({
    super.key,
    required this.appointment,
    this.image,
  });
  final AppointmentModel appointment;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Pallete.grayScaleColor300,
      ),
      padding: EdgeInsets.all(15),
      child: Stack(
        children: [
          Column(
            spacing: 20,
            children: [
              Row(
                spacing: 10,
                children: [
                  Container(
                    width: screenWidth(context) * 0.2,
                    height: screenHeight(context) * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          image ?? 'assets/icons/patient_icon2.png',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '${appointment.patientFirstName ?? 'No'} ${appointment.patientLastName ?? 'Patient'}',
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium!.copyWith(fontSize: 13),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 10,
                    children: [
                      Icon(FontAwesomeIcons.calendar),
                      Text(
                        DateFormat.MMMMEEEEd().format(
                          appointment.reservationDate ?? DateTime.now(),
                        ),
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium!.copyWith(fontSize: 13),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      Icon(FontAwesomeIcons.clock),
                      Text(
                        formatTime(
                          appointment.reservationHour ?? TimeOfDay.now(),
                          true,
                        ),
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium!.copyWith(fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 80,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Pallete.grayScaleColor400,
              ),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      appointment.status?.name ?? 'no status',
                      style: Theme.of(
                        context,
                      ).textTheme.labelMedium!.copyWith(fontSize: 8),
                    ),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          (appointment.status ?? AppointmentStatus.pending)
                                  .isPending
                              ? Colors.amber
                              : (appointment.status ??
                                      AppointmentStatus.pending)
                                  .isVisited
                              ? Colors.green
                              : Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
