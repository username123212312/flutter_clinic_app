import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:flutter_clinic_app/features/home/model/appointment_model.dart';
import '../widgets/home_widgets.dart';

import '../../../../core/theme/app_pallete.dart';
import '../../../../core/utils/utils.dart';

class AppointmentDetailsScreen extends StatefulWidget {
  const AppointmentDetailsScreen({super.key, required this.appointment});

  @override
  State<AppointmentDetailsScreen> createState() =>
      _AppointmentDetailsScreenState();

  final AppointmentModel appointment;
}

class _AppointmentDetailsScreenState extends State<AppointmentDetailsScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);
    _animationController.forward();
  }

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
          if (widget.appointment.appointmentStatus.isFinished)
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: TwoSelectableWidget(
                    leftPadding: 12,
                    twoTitles: ['Information', 'Results'],
                    onToggleIndex: (index) {
                      _changeIndex(index);
                    },
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          if (_currentIndex == 0)
            FadeTransition(
              opacity: _fadeAnimation,
              child: _buildAppointmentDetails(),
            ),
          if (_currentIndex == 1)
            FadeTransition(
              opacity: _fadeAnimation,
              child: _buildAppointmentResults(),
            ),

          if (widget.appointment.appointmentStatus.isPending)
            _buildPendingFooter(),
        ],
      ),
    );
  }

  void _changeIndex(int index) {
    setState(() {
      _animationController.reset();
      _animationController.forward();
      _currentIndex = index;
    });
  }

  Widget _buildAppointmentDetails() {
    return Align(
      alignment: Alignment.center,
      child: AppointmentCard(appointment: widget.appointment),
    );
  }

  Widget _buildAppointmentResults() {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ResultCard(
              title: 'Diagnosis',
              iconImagePath: 'assets/icons/tabler_device-heart-monitor.png',
              listItems: [
                [
                  'The patient has symptoms of low-grade hypertension kidney disorder.',
                ],
              ],
            ),
            SizedBox(height: 20),
            ResultCard(
              title: 'Notes & Instructions',
              iconImagePath: 'assets/icons/ic_notes.png',
              listItems: [
                ['Use medication as prescribed'],
                ['Exercise regularly, balance between work and rest'],
                [
                  'Eat more vegetables, tubers & fruits; reduce fried, fatty foods...',
                ],
              ],
            ),
            SizedBox(height: 20),

            ResultCard(
              title: 'Notes & Instructions',
              iconImagePath: 'assets/icons/ic_medicine.png',
              listItems: [
                [
                  'Allopurinol 500mg',
                  '2 pills, once a day2 pills, once a day',
                  'After Eating',
                ],
                ['Diuretik 250mg', '2 pills, twice a day', 'After Eating'],
              ],
            ),
          ],
        ),
      ),
    );
  }

  Expanded _buildPendingFooter() {
    return Expanded(
      child: Column(
        children: [
          _buildPendingFooterText(context),
          Spacer(),
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

  Widget _buildPendingFooterText(BuildContext context) {
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

  late final AnimationController _animationController;
  late final Animation<double> _fadeAnimation;
  int _currentIndex = 0;
}

class ResultCard extends StatelessWidget {
  const ResultCard({
    super.key,
    required this.title,
    required this.iconImagePath,
    required this.listItems,
  });
  final String title;
  final String iconImagePath;
  final List<List<String>> listItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context) * 0.9,
      decoration: BoxDecoration(
        border: Border.all(color: Pallete.grayScaleColor400, width: 1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(iconImagePath),
              SizedBox(width: 10),
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.labelSmall!.copyWith(fontSize: 15),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0, left: 5.0, top: 10),
            child: Column(
              children:
                  listItems
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Row(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (listItems.length > 1)
                                    Icon(
                                      Icons.circle,
                                      size: 15,
                                      color: Pallete.grayScaleColor500,
                                    ),
                                  if (listItems.length > 1) SizedBox(width: 6),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: screenWidth(context) * 0.75,
                                        child: Text(
                                          e[0],

                                          style: Theme.of(
                                            context,
                                          ).textTheme.titleSmall!.copyWith(
                                            fontSize: 13,
                                            color: Pallete.grayScaleColor400,
                                          ),
                                        ),
                                      ),
                                      if (e.length > 1)
                                        SizedBox(
                                          width: screenWidth(context) * 0.75,
                                          child: Text(
                                            e[1],

                                            style: Theme.of(
                                              context,
                                            ).textTheme.titleSmall!.copyWith(
                                              fontSize: 13,
                                              color: Pallete.sliverSand,
                                            ),
                                          ),
                                        ),
                                      if (e.length > 2)
                                        SizedBox(
                                          width: screenWidth(context) * 0.75,
                                          child: Text(
                                            e[2],

                                            style: Theme.of(
                                              context,
                                            ).textTheme.titleSmall!.copyWith(
                                              fontSize: 13,
                                              color:
                                                  Theme.of(
                                                    context,
                                                  ).colorScheme.primary,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
