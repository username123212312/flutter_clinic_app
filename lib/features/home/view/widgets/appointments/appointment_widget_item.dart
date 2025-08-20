import 'dart:math';

import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/time_range.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/custom_elevated_button.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';

import '../payment_status_widget.dart';

class AppointmentWidgetItem extends StatelessWidget {
  const AppointmentWidgetItem({
    super.key,

    this.onTap,
    required this.appointment,
    this.onCancel,
    this.onReschedule,
  });
  final AppointmentModel appointment;
  final void Function()? onTap;
  final void Function()? onCancel;
  final void Function()? onReschedule;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            Container(
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

              height: screenHeight(context) * (onCancel != null ? 0.27 : 0.22),
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
                            image:
                                appointment.doctorPhoto == null
                                    ? AssetImage('assets/images/logo.webp')
                                    : NetworkImage(
                                      '${AppConstants.serverUrl}${appointment.doctorPhoto!}',
                                    ),
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
                            appointment.doctorName ?? 'No doctor',
                            style: Theme.of(
                              context,
                            ).textTheme.labelSmall!.copyWith(fontSize: 13),
                          ),
                          SizedBox(height: 5),
                          Text(
                            appointment.doctorSpeciality ?? 'No speciality',
                            style: Theme.of(
                              context,
                            ).textTheme.titleSmall!.copyWith(
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
                        'assets/icons/calendar.png',
                        width: 20,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10),
                      Text(
                        DateFormat(
                          'EEEE, MMMM d, y',
                        ).format(appointment.reservationDate ?? DateTime.now()),
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
                        'assets/icons/time_appoint.png',
                        width: 20,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10),
                      Text(
                        formatTime(
                          appointment.reservationHour ?? TimeOfDay.now(),
                        ),
                        style: Theme.of(
                          context,
                        ).textTheme.titleSmall!.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  if (onCancel != null) SizedBox(height: 15),
                  if (onCancel != null)
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
                              onTap: onCancel,
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
                              onTap: onReschedule,
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
            if (appointment.status?.isPending ?? false)
              Positioned(
                right: 20,
                top: 20,
                child: Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Pallete.grayScaleColor300,

                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: EdgeInsets.all(7),
                  child: FittedBox(
                    child: Row(
                      spacing: 5,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (appointment.paymentStatus?.isPaid ?? false)
                                    ? Colors.green
                                    : Colors.red,
                          ),
                        ),
                        Text(
                          appointment.paymentStatus?.name ?? 'Unpaid',
                          style: Theme.of(context).textTheme.labelMedium!
                              .copyWith(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
