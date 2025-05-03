import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/enums.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/custom_elevated_button.dart';
import 'package:flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/app_pallete.dart';
import '../../../../core/utils/utils.dart';

class AppointmentDetailsScreen extends StatelessWidget {
  const AppointmentDetailsScreen({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Appointment Details',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
            fontSize: 20,
            color: Pallete.grayScaleColor700,
          ),
        ),
        toolbarHeight: screenHeight(context) * 0.1,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: screenWidth(context) * 0.9,
              height: screenHeight(context) * 0.603,
              decoration: BoxDecoration(
                border: Border.all(color: Pallete.grayScaleColor400, width: 1),
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.all(13),
              child: Column(
                children: [
                  _buildHeader(context),
                  Divider(color: Pallete.sliverSand),
                  SizedBox(height: 5),
                  _buildBodyList(),
                ],
              ),
            ),
          ),

          if (appointment.appointmentStatus.isPending)
            _buildPendingFooter(context),
          Spacer(),
          if (appointment.appointmentStatus.isPending)
            _buildTwoButtons(context),
        ],
      ),
    );
  }

  Widget _buildTwoButtons(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomElevatedButton(
                fontSize: 16,
                elevation: 0,
                borderRadius: 32,
                title: 'Cancel',
                onTap: () {},
                fillColor: Colors.transparent,
                textColor: Theme.of(context).colorScheme.primary,
              ),
              CustomElevatedButton(
                fontSize: 15,
                elevation: 0,
                borderRadius: 32,
                title: 'Reschedule',
                onTap: () {},
                fillColor: Theme.of(context).colorScheme.primary,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
        SizedBox(height: screenHeight(context) * 0.06),
      ],
    );
  }

  Widget _buildPendingFooter(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            children: [
              Icon(Icons.circle, color: Pallete.alertWarningColor, size: 12),
              Text(
                ' Payment after consultation is complete',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Pallete.alertWarningColor,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column _buildBodyList() {
    return Column(
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
    );
  }

  Row _buildHeader(BuildContext context) {
    return Row(
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

  final AppointmentModel appointment;
}

class AppointmentDetailsListItem extends StatelessWidget {
  const AppointmentDetailsListItem({
    super.key,
    required this.title,
    required this.subtitle,
    this.thirdtitle,
    required this.iconImagePath,
  });
  final String title;
  final String subtitle;
  final String? thirdtitle;
  final String iconImagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: screenWidth(context) * 0.15,
          height: screenHeight(context) * 0.068,
          decoration: BoxDecoration(
            color: Pallete.graysGray6,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(0),
          child: Image.asset(iconImagePath, width: 24, height: 24, scale: 0.7),
        ),
        SizedBox(width: 10),
        SizedBox(
          height: screenHeight(context) * 0.1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (thirdtitle == null) SizedBox(height: 10),
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Pallete.sliverSand,
                  fontSize: 15,
                ),
              ),

              Text(
                subtitle,
                style: Theme.of(
                  context,
                ).textTheme.labelSmall!.copyWith(fontSize: 15),
              ),
              if (thirdtitle == null) SizedBox(height: 10),
              if (thirdtitle != null)
                Text(
                  thirdtitle!,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 10,
                    color: Pallete.sliverSand,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
