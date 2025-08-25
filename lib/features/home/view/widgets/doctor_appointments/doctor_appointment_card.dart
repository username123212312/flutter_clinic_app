import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';

import '../../../../../core/enums.dart';

class DoctorAppointmentCard extends StatelessWidget {
  DoctorAppointmentCard({
    super.key,
    required this.appointment,
    this.image,
    this.onCancel,
  });

  final AppointmentModel appointment;
  final String? image;
  final void Function()? onCancel;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 180, // ارتفاع موحد للكرت
      ),
      decoration: BoxDecoration(
        boxShadow: const [
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
      padding: const EdgeInsets.all(17),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: screenWidth(context) * 0.12,
                    height: screenWidth(context) * 0.12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Pallete.grayScaleColor300,
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          image ?? 'assets/icons/patient_icon2.png',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      '${appointment.patientFirstName ?? 'No'} ${appointment.patientLastName ?? 'Patient'}',
                      style: Theme.of(
                        context,
                      ).textTheme.labelMedium!.copyWith(fontSize: 13),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(FontAwesomeIcons.calendar, size: 16),
                      const SizedBox(width: 10),
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
                    children: [
                      const Icon(FontAwesomeIcons.clock, size: 16),
                      const SizedBox(width: 10),
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

              const SizedBox(height: 25),
              SizedBox(
                height: screenHeight(context) * 0.04,
                width: screenWidth(context),
                child:
                    onCancel != null
                        ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(
                              screenWidth(context),
                              screenHeight(context) * 0.04,
                            ),
                          ),
                          onPressed: onCancel,
                          child: Text(
                            'Cancel',
                            style: Theme.of(context).textTheme.labelMedium!
                                .copyWith(fontSize: 13, color: Colors.white),
                          ),
                        )
                        : const SizedBox(),
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
                color:
                    selectAppointmentStatusColor(
                      appointment.status ?? AppointmentStatus.cancelled,
                    )[0],
              ),
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      appointment.status?.name ?? 'no status',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontSize: 8,
                        color:
                            selectAppointmentStatusColor(
                              appointment.status ?? AppointmentStatus.cancelled,
                            )[1],
                      ),
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
