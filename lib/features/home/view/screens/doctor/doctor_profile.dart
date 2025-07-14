import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';

import '../../../../../core/blocs/user_bloc/user_bloc.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../widgets/widget_doctor/day_widget.dart';
import '../../widgets/widget_doctor/doctor_card_profile.dart';
import '../../widgets/widget_doctor/shift_widget.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({super.key});

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  String? selectedDay;

  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(ProfileFetched());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                selectedDay = null;
              });
              context.read<UserBloc>().add(ProfileFetched());
            },
            icon: Icon(FontAwesomeIcons.arrowsRotate, size: 20),
          ),
        ],
        title: Text(
          'Doctor Profile',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 17,
            color: Pallete.black1,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Pallete.black1,
            size: 18,
          ),
        ),
        backgroundColor: Pallete.grayScaleColor0,
      ),
      backgroundColor: Pallete.backgroundColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Doctor Information',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 17,
                color: Pallete.black1,
              ),
            ),

            const SizedBox(height: 12),
            const DoctorCardProfile(),
            const SizedBox(height: 25),
            Text(
              'Available Days',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 16,
                color: Pallete.black1,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: screenHeight(context) * 0.06,
              child: BlocConsumer<UserBloc, UserState>(
                listener: (context, state) {
                  if (state.status.isLoading) {
                    LoadingOverlay().show(context);
                  } else {
                    LoadingOverlay().hideAll();
                  }
                },
                builder: (context, state) {
                  return ListView(
                    scrollDirection: Axis.horizontal,
                    children:
                        ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT'].map((
                          day,
                        ) {
                          final isAvailable = (state.user?.schedule ?? []).any((
                            schedule,
                          ) {
                            final firstThreeChars = schedule.day
                                ?.toLowerCase()
                                .substring(0, 3);
                            return firstThreeChars == day.toLowerCase();
                          });
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: DayWidget(
                              day: day,
                              isSelected: selectedDay == day,
                              isAvailable: isAvailable,
                              onTap:
                                  isAvailable
                                      ? () {
                                        setState(() {
                                          selectedDay = day;
                                        });
                                      }
                                      : null,
                            ),
                          );
                        }).toList(),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            if (selectedDay != null) ...[
              BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  final schedule = (state.user?.schedule ?? []).firstWhere((
                    sC,
                  ) {
                    return sC.day?.toLowerCase().substring(0, 3) ==
                        selectedDay!.toLowerCase();
                  });
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ShiftWidget(
                            title:
                                (schedule.shift?[0] ?? '') == 'm'
                                    ? 'Morning'
                                    : 'Evening',
                            time: (schedule.shift ?? '').split(':').last,
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton.icon(
                          onPressed: () {
                            setState(() {
                              selectedDay = null;
                            });
                            context.read<UserBloc>().add(
                              DeleteFromSchedule(scheduleId: schedule.id ?? -1),
                            );
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Pallete.primaryColor,
                          ),
                          label: const Text(
                            "Delete This Day",
                            style: TextStyle(color: Pallete.black1),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}
