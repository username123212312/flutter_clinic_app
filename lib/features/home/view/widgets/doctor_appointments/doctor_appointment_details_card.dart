import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/appointments/appointment_details_list_item.dart';
import 'package:intl/intl.dart';

import '../../../../../core/enums.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';

class DoctorAppointmentDetailsCard extends StatelessWidget {
  const DoctorAppointmentDetailsCard({super.key, required this.appointment});
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
                  color:
                      selectAppointmentStatusColor(
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
                      color:
                          selectAppointmentStatusColor(appointment.status!)[1],
                    ),
                    Text(
                      appointment.status!.isVisited
                          ? 'Finished'
                          : appointment.status!.name,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color:
                            selectAppointmentStatusColor(
                              appointment.status!,
                            )[1],
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
                title: 'Patient',
                subtitle:
                    '${appointment.patientFirstName ?? 'No'} '
                    '${appointment.patientLastName ?? 'User'}',
                // subtitle: appointment.patient.name,
                iconImagePath: 'assets/icons/ic_user_circle.png',
              ),
              AppointmentDetailsListItem(
                title: 'Service',
                subtitle:
                    (appointment.status == null
                        ? 'No service'
                        : appointment.status!.isVisited
                        ? 'Finished'
                        : appointment.status?.name) ??
                    'No service',
                iconImagePath: 'assets/icons/ic_service.png',
              ),
              AppointmentDetailsListItem(
                title: 'Appointment Type',
                subtitle: appointment.appointmentType?.name ?? 'No type',
                // thirdtitle: appointment.doctor.speciality,
                iconImagePath: 'assets/icons/ic_clinic.png',
              ),
              AppointmentDetailsListItem(
                title: 'Doctor Speciality',
                subtitle:
                    context.read<UserBloc>().state.user?.speciality ??
                    'No Department',
                iconImagePath: 'assets/icons/ic_doctor.png',
              ),
              AppointmentDetailsListItem(
                fontSize: 11,
                title: 'Date & Time',
                subtitle:
                    '${DateFormat('EEEE, MMMM, d, y').format(appointment.reservationDate ?? DateTime.now())} '
                    ', ${formatTime(appointment.reservationHour ?? TimeOfDay.now())}',
                iconImagePath: 'assets/icons/ic_time.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
