import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:flutter_clinic_app/features/home/view/widgets/appointments/appointment_details_list_item.dart';
import 'package:intl/intl.dart';

import '../../../../../core/enums.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key, required this.appointment});
  final AppointmentModel appointment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context) * 0.9,
      height: screenHeight(context) * 0.502,
      decoration: BoxDecoration(
        border: Border.all(color: Pallete.grayScaleColor400, width: 1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(13),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icons/tabler_clipboard-list.png',
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 10),
              Text(
                'Appointment',
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 15),
              ),
              Spacer(),
              Container(
                width: screenWidth(context) * 0.23,
                height: screenHeight(context) * 0.043,
                decoration: BoxDecoration(
                  color: _selectColor(appointment.appointmentStatus)[0],
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.circle,
                      size: 15,
                      color: _selectColor(appointment.appointmentStatus)[1],
                    ),
                    Text(
                      appointment.appointmentStatus.name,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: _selectColor(appointment.appointmentStatus)[1],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(color: Pallete.sliverSand),
          SizedBox(height: 5),
          Column(
            children: [
              AppointmentDetailsListItem(
                title: 'Service',
                subtitle: appointment.service,
                iconImagePath: 'assets/icons/ic_service.png',
              ),
              AppointmentDetailsListItem(
                title: 'Doctor',
                subtitle: appointment.doctor.name,
                thirdtitle: appointment.doctor.specality,
                iconImagePath: 'assets/icons/ic_doctor.png',
              ),
              AppointmentDetailsListItem(
                title: 'Department',
                subtitle: appointment.department,
                iconImagePath: 'assets/icons/ic_clinic.png',
              ),
              AppointmentDetailsListItem(
                title: 'Date & Time',
                subtitle: DateFormat(
                  'EEEE, MMMM d, y - HH:MM',
                ).format(appointment.dateAndTime),
                iconImagePath: 'assets/icons/ic_time.png',
              ),
              AppointmentDetailsListItem(
                title: 'Patient',
                subtitle: appointment.patient.name,
                iconImagePath: 'assets/icons/ic_user_circle.png',
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Color> _selectColor(AppointmentStatus appointmentStatus) {
    return switch (appointmentStatus) {
      AppointmentStatus.pending => [
        Pallete.statusColorPending,
        Pallete.alertWarningColor,
      ],
      AppointmentStatus.finished => [
        Pallete.statusColorFinished,
        Pallete.alertSuccessColor,
      ],
      AppointmentStatus.canceled => [
        Pallete.statusColorCanceled,
        Pallete.alertDangerColor,
      ],
    };
  }
}
