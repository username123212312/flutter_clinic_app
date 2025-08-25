import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/appointments/appointment_details_list_item.dart';
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
      // height: screenHeight(context) * 0.502,
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
                'assets/icons/appointements _details.png',
                width: 25,
                height: 25,
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
                  color:
                      _selectColor(
                        appointment.status ?? AppointmentStatus.pending,
                      )[0],
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.circle,
                      size: 15,
                      color: _selectColor(appointment.status!)[1],
                    ),
                    Text(
                      appointment.status!.isVisited
                          ? 'Finished'
                          : appointment.status!.name,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: _selectColor(appointment.status!)[1],
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
                fontSize: 12,
                title: 'Queue',
                subtitle: (appointment.queueNumber ?? 0).toString(),
                iconImagePath: 'assets/icons/patient_appoi.png',
              ),
              AppointmentDetailsListItem(
                title: 'Appointment Type',
                subtitle: (appointment.type ?? AppointmentType.visit).name,
                iconImagePath: 'assets/icons/self-love.png',
              ),
              AppointmentDetailsListItem(
                title: appointment.doctorName ?? 'No Doctor',
                subtitle: appointment.doctorSpeciality ?? 'No speciality',
                // thirdtitle: appointment.doctor.speciality,
                iconImagePath: 'assets/icons/nurse-hat.png',
              ),
              AppointmentDetailsListItem(
                title: 'Department',
                subtitle: appointment.clinicName ?? 'No Department',
                iconImagePath: 'assets/icons/hospital (1).png',
              ),

              AppointmentDetailsListItem(
                fontSize: 11,
                title: 'Date & Time',
                subtitle:
                    '${DateFormat('EEEE, MMMM, d, y').format(appointment.reservationDate ?? DateTime.now())} '
                    ', ${formatTime(appointment.reservationHour ?? TimeOfDay.now())}',
                iconImagePath: 'assets/icons/data.png',
              ),
              AppointmentDetailsListItem(
                title: 'Patient',
                subtitle:
                    '${appointment.patientFirstName ?? 'No'} '
                    '${appointment.patientLastName ?? 'User'}',
                // subtitle: appointment.patient.name,
                iconImagePath: 'assets/icons/patient_appoi.png',
              ),
              AppointmentDetailsListItem(
                fontSize: 12,
                title: 'Payment',
                subtitle:
                    'Expected: \$ ${appointment.expectedPrice}'
                    ' || Paid: \$ ${appointment.paidPrice}',
                iconImagePath: 'assets/icons/patient_appoi.png',
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
      AppointmentStatus.visited => [
        Pallete.statusColorFinished,
        Pallete.alertSuccessColor,
      ],
      AppointmentStatus.cancelled => [
        Pallete.statusColorCanceled,
        Pallete.alertDangerColor,
      ],
    };
  }
}
