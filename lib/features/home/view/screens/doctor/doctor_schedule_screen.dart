import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/core/widgets/widgets.dart';
import 'package:our_flutter_clinic_app/features/home/controller/doctor_schedule_cubit/doctor_schedule_cubit.dart';
import 'package:our_flutter_clinic_app/features/home/repository/doctor_schedule_repository.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/navigation/app_route_constants.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../../auth/view/widgets/custom_button.dart';
import '../../../model/work_day.dart';
import '../../widgets/widget_doctor/day_doctor.dart';
import '../../widgets/widget_doctor/shift_doctor.dart';

class DoctorScheduleScreen extends StatefulWidget {
  const DoctorScheduleScreen({super.key});

  @override
  State<DoctorScheduleScreen> createState() => _DoctorScheduleScreenState();
}

class _DoctorScheduleScreenState extends State<DoctorScheduleScreen> {
  @override
  void initState() {
    super.initState();
    _doctorScheduleCubit = DoctorScheduleCubit(
      doctorScheduleRepository: DoctorScheduleRepository(),
    );
    _doctorScheduleCubit.fetchDoctorWorkDays();
  }

  final allDays = [
    {'Sunday': 'SUN'},
    {'Monday': 'MON'},
    {'Tuesday': 'TUE'},
    {'Wednesday': 'WED'},
    {'Thursday': 'THU'},
    {'Friday': 'FRI'},
    {'Saturday': 'SAT'},
  ];

  List<WorkDay> selectedShifts = [];

  void toggleDay(WorkDay? day) {
    if (day != null) {
      if (selectedShifts.any((wDay) {
        return wDay.day == day.day;
      })) {
        selectedShifts.removeWhere((wDay) {
          return day.day == wDay.day;
        });
      } else {
        selectedShifts.add(day);
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              _doctorScheduleCubit.fetchDoctorWorkDays();
            },
            icon: Icon(FontAwesomeIcons.arrowsRotate),
          ),
        ],
        toolbarHeight: screenHeight(context) * 0.06,
        centerTitle: false,
        scrolledUnderElevation: 0,
        title: Text(
          'Set Your Schedule',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 16,
            color: Pallete.black1,
          ),
        ),
        iconTheme: IconThemeData(size: 20),
        backgroundColor: Pallete.grayScaleColor0,
      ),
      body: BackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            spacing: screenHeight(context) * 0.18,
            children: [
              SizedBox(
                height: screenHeight(context) * 0.52,
                child: BlocConsumer<DoctorScheduleCubit, DoctorScheduleState>(
                  bloc: _doctorScheduleCubit,
                  listener: (context, state) {
                    if (state.status.isLoading) {
                      LoadingOverlay().show(context);
                    }
                    LoadingOverlay().hideAll();
                  },
                  builder: (context, state) {
                    return Skeletonizer(
                      enabled: state.status.isLoading,
                      child: ListView.builder(
                        itemCount: allDays.length,
                        itemBuilder: (context, index) {
                          if (state.workDays.isEmpty) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  DayDoctor(
                                    day: allDays[index].values.first,
                                    isDisabled: true,
                                    isSelected: false,
                                    onTap: () {},
                                  ),
                                  ShiftDoctor(
                                    title: 'Morning',
                                    time: '9AM-3PM',
                                    isDisabled: true,
                                    isSelected: false,
                                    onTap: () {},
                                  ),
                                  ShiftDoctor(
                                    title: 'Evening',
                                    time: '3PM-9PM',
                                    isDisabled: true,
                                    isSelected: false,
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            );
                          }
                          final day = allDays[index];
                          WorkDay? workDay;
                          workDay = state.workDays.firstWhere((wDay) {
                            return wDay.day == day.keys.first;
                          }, orElse: () => WorkDay(day: 'NO'));

                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DayDoctor(
                                  day: day.values.first,
                                  isDisabled:
                                      !state.workDays.any((workDay) {
                                        return workDay.day == day.keys.first;
                                      }),
                                  isSelected: selectedShifts.any((wDay) {
                                    return workDay?.day == wDay.day;
                                  }),
                                  onTap:
                                      () => toggleDay(
                                        workDay?.copyWith(availableShifts: []),
                                      ),
                                ),
                                ShiftDoctor(
                                  title: 'Morning',
                                  time: '9AM-3PM',
                                  isDisabled: workDay.day == 'NO',
                                  isSelected: _isShiftSelected(
                                    workDay,
                                    AvailableShift.morning,
                                  ),
                                  onTap:
                                      () => _toggleShift(
                                        workDay,
                                        AvailableShift.morning,
                                      ),
                                ),
                                ShiftDoctor(
                                  title: 'Evening',
                                  time: '3PM-9PM',
                                  isDisabled: workDay.day == 'NO',
                                  isSelected: _isShiftSelected(
                                    workDay,
                                    AvailableShift.evening,
                                  ),
                                  onTap:
                                      () => _toggleShift(
                                        workDay,
                                        AvailableShift.evening,
                                      ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),

              Center(
                child: BlocConsumer<DoctorScheduleCubit, DoctorScheduleState>(
                  bloc: _doctorScheduleCubit,
                  listener: (context, state) {
                    if (state.status.isLoading) {
                      LoadingOverlay().show(context);
                    } else {
                      LoadingOverlay().hideAll();
                      if (state.status.isDone) {
                        Fluttertoast.showToast(msg: state.message);
                        context.goNamed(AppRouteConstants.doctorHomeRouteName);
                      }
                      if (state.status.isError) {
                        Fluttertoast.showToast(msg: state.message);
                      }
                    }
                  },
                  builder: (context, state) {
                    return CustomButton(
                      text: "Save The Schedule",
                      onPressed:
                          selectedShifts.isEmpty
                              ? null
                              : () {
                                if (_validateList()) {
                                  _doctorScheduleCubit.setSchedule(
                                    workDays: selectedShifts,
                                  );
                                } else {
                                  Fluttertoast.showToast(
                                    msg: 'You must select Shifts',
                                  );
                                }
                              },
                      color: Pallete.primaryColor,
                      width: screenWidth(context) * 0.5,
                      height: screenHeight(context) * 0.065,
                      padding: const EdgeInsets.all(16),
                      borderRadius: 32,
                      fontSize: 16,
                      textColor: Pallete.grayScaleColor0,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _validateList() {
    return selectedShifts.isNotEmpty &&
        selectedShifts.every((wDay) {
          return wDay.availableShifts?.isNotEmpty ?? false;
        });
  }

  void _toggleShift(WorkDay? workDay, AvailableShift availableShift) {
    if (selectedShifts.any((wDay) {
      return workDay?.day == wDay.day;
    })) {
      final temp = List.of(
        selectedShifts.firstWhere((wDay) {
          return workDay?.day == wDay.day;
        }).availableShifts!,
      );
      if (temp.contains(availableShift)) {
        temp.remove(availableShift);
      } else {
        temp.clear();
        temp.add(availableShift);
      }
      selectedShifts.removeWhere((wDay) {
        return wDay.day == workDay?.day;
      });
      toggleDay(workDay?.copyWith(availableShifts: temp));
    }
  }

  bool _isShiftSelected(WorkDay? workDay, AvailableShift availableShift) {
    return selectedShifts.any((wDay) {
          return workDay?.day == wDay.day;
        })
        ? selectedShifts[selectedShifts.indexWhere((wDay) {
                  return wDay.day == workDay?.day;
                })]
                .availableShifts
                ?.contains(availableShift) ??
            false
        : false;
  }

  late final DoctorScheduleCubit _doctorScheduleCubit;
}
