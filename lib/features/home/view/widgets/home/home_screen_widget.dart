import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:our_flutter_clinic_app/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/home/upcoming_%20appointment_cards.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../controller/home_bloc/home_bloc.dart';
import 'find_doctor_card.dart';
import 'department.dart';
import 'pharmecy_card.dart';
import '../../screens/patient/department_screen.dart';
import '../../screens/patient/doctor_list.dart';
import '../../screens/patient/pharmecy_screen.dart';
import 'search_doctor.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  bool isVisible = false;

  final List<Map<String, String>> departmentsData = [
    {'name': 'Heart', 'icon': 'assets/icons/Cadiologist.png'},
    {'name': 'Dental', 'icon': 'assets/icons/Dentists.png'},
    {'name': 'Kidney', 'icon': 'assets/icons/Nephrologists.png'},
    {'name': 'Stomach', 'icon': 'assets/icons/Gastroenterologists.png'},
    {'name': 'Lung', 'icon': 'assets/icons/Pulmonologists.png'},
    {'name': 'Brain', 'icon': 'assets/icons/Neurologists.png'},
    {'name': 'Mental', 'icon': 'assets/icons/Psychiatrists.png'},
    {'name': 'Liver', 'icon': 'assets/icons/Hepatologists.png'},
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return buildMainContent(context);
  }

  Widget buildMainContent(BuildContext context) {
    final userBloc = context.read<AuthBloc>();
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: 14,
                        color: Pallete.gray1,
                      ),
                    ),
                    Text(
                      '${userBloc.state.authUser?.user?.firstName ?? 'No'} ${userBloc.state.authUser?.user?.lastName ?? 'User'}',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: 16,
                        color: Pallete.black1,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.notifications_none,
                        color: Pallete.black1,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.search, color: Pallete.black1),
                      onPressed: () {
                        showSearchOverlay(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const SectionHeader(title: 'Upcoming Appointments'),
            const SizedBox(height: 16),
            SizedBox(
              height: 132,
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return Skeletonizer(
                    enabled: state.upcomingAppointmentsListStatus.isLoading,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        if (state.upcomingAppointmentsListStatus.isLoading) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: UpcomingAppointmentCard(
                              appointmentTime: TimeOfDay.now().toString(),
                              appointmentdate: DateTime.now().toString(),
                              doctorName: 'No Doctor',
                              imagePath: '',
                              rating: 0.0,
                              specialty: 'No speciality',
                              onMenuPressed: () {},
                            ),
                          );
                        }
                        final appointment =
                            state.upcomingAppointmentsList[index];
                        return TweenAnimationBuilder(
                          tween: Tween<Offset>(
                            begin: const Offset(1, 0),
                            end: Offset.zero,
                          ),
                          duration: Duration(milliseconds: 300 + (index * 100)),
                          builder: (context, offset, child) {
                            return Transform.translate(
                              offset: offset * 20,
                              child: child,
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: UpcomingAppointmentCard(
                              appointmentTime:
                                  appointment.reservationHour.toString(),
                              appointmentdate:
                                  appointment.reservationDate.toString(),
                              doctorName: appointment.doctorName ?? 'No Doctor',
                              imagePath:
                                  appointment.doctorPhoto ??
                                  'assets/images/logo.webp',
                              rating:
                                  double.tryParse(
                                    appointment.finalRate ?? '0.0',
                                  ) ??
                                  0.0,
                              specialty:
                                  appointment.doctorSpeciality ??
                                  'No speciality',
                              onMenuPressed: () {},
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            SectionHeader(
              title: 'Departments',
              onSeeAll:
                  () =>
                      context.pushNamed(AppRouteConstants.departmentsRouteName),
            ),
            const SizedBox(height: 10),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Skeletonizer(
                  enabled: state.departmentsListStatus.isLoading,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount:
                        state.departmentsListStatus.isLoading
                            ? 8
                            : state.departmentsList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 9,
                        ),
                    itemBuilder: (context, index) {
                      if (state.departmentsListStatus.isLoading) {
                        return Department(
                          name: 'opengl',
                          iconPath: 'assets/icons/Cadiologist.png',
                        );
                      }
                      final clinic = state.departmentsList[index];
                      return TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: Duration(milliseconds: 300 + (index * 100)),
                        builder: (context, value, child) {
                          return Opacity(
                            opacity: value,
                            child: Transform.scale(scale: value, child: child),
                          );
                        },
                        child: Department(
                          name: clinic.name ?? 'No Clinic',
                          iconPath: departmentsData[index]['icon'] ?? '',
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            SectionHeader(
              title: 'Find Doctors',
              onSeeAll:
                  () =>
                      context.pushNamed(AppRouteConstants.doctorListRouteName),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 160,
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return Skeletonizer(
                    enabled: state.doctorsListStatus.isLoading,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:
                          state.doctorsListStatus.isLoading
                              ? 3
                              : state.departmentsList.length,
                      itemBuilder: (context, index) {
                        if (state.doctorsListStatus.isLoading) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: SizedBox(
                              width: screenWidth(context) * 0.8,
                              child: FindDoctorCard(
                                buttonOnTap: () {},
                                title: 'Jennifer Miller',
                                subtitle: 'Pediatrician',
                                imagePath: 'assets/icons/home_icon.png',
                                rating: 4.8,
                                startTime: '10:30am',
                                endTime: '5:30pm',
                                onTap: () {},
                              ),
                            ),
                          );
                        }
                        final doctor = state.doctorsList[index];
                        return TweenAnimationBuilder(
                          tween: Tween<Offset>(
                            begin: const Offset(1, 0),
                            end: Offset.zero,
                          ),
                          duration: Duration(milliseconds: 300 + (index * 100)),
                          builder: (context, offset, child) {
                            return Transform.translate(
                              offset: offset * 20,
                              child: child,
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: SizedBox(
                              width: screenWidth(context) * 0.8,
                              child: FindDoctorCard(
                                buttonOnTap: () {},
                                title:
                                    '${doctor.firstName ?? 'No'} ${doctor.lastName ?? 'Doctor'}',
                                subtitle: doctor.speciality ?? 'No speciality',
                                imagePath:
                                    doctor.photoPath ??
                                    'assets/images/logo.webp',
                                rating:
                                    double.tryParse(
                                      doctor.finalRate ?? '0.0',
                                    ) ??
                                    0.0,
                                startTime: '10:30am',
                                endTime: '5:30pm',
                                onTap: () {},
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),

            SectionHeader(
              title: 'Nearby Pharmacies',
              onSeeAll:
                  () => context.pushNamed(
                    AppRouteConstants.findPharmaciesRouteName,
                  ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 195,
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return Skeletonizer(
                    enabled: state.pharmaciesListStatus.isLoading,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:
                          state.pharmaciesListStatus.isLoading
                              ? 5
                              : state.pharmaciesList.length,
                      itemBuilder: (context, index) {
                        if (state.pharmaciesListStatus.isLoading) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: SizedBox(
                              width: 350,
                              child: const PharmacyCard(
                                endTime: '09:00Am',
                                name: 'Pharmacy Name',
                                startTime: '05:00Pm',
                                latitude: 33.5138,
                                longitude: 36.2765,
                                namelocation: 'Al Amal Street',
                                phone: 'Tel: +963 998 998 998',
                                location: 'Location: Al Thawra Street - Tartus',
                              ),
                            ),
                          );
                        }
                        final pharmacy = state.pharmaciesList[index];
                        return TweenAnimationBuilder(
                          tween: Tween<double>(begin: 0, end: 1),
                          duration: Duration(milliseconds: 300 + (index * 100)),
                          builder: (context, value, child) {
                            return Opacity(
                              opacity: value,
                              child: Transform.scale(
                                scale: value,
                                child: child,
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: SizedBox(
                              width: 350,
                              child: PharmacyCard(
                                startTime:
                                    pharmacy.startTime ??
                                    DateTime.now().toString(),
                                endTime:
                                    pharmacy.finishTime ??
                                    DateTime.now().toString(),
                                name: pharmacy.name ?? 'No pharmacy',
                                latitude: pharmacy.latitude ?? 34.0,
                                longitude: pharmacy.longitude ?? 33.0,
                                namelocation:
                                    pharmacy.location ?? 'Al Amal Street',
                                phone:
                                    pharmacy.phone ?? 'Tel: +963 998 998 998',
                                location: pharmacy.location ?? 'Al Amal Street',
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showSearchOverlay(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: Pallete.black1.withValues(alpha: 0.1),
      barrierLabel: 'Search',
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return const SearchOverlay();
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onSeeAll;

  const SectionHeader({super.key, required this.title, this.onSeeAll});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
            fontSize: 18,
            color: Pallete.black1,
          ),
        ),
        if (onSeeAll != null)
          TextButton(
            onPressed: onSeeAll,
            child: Text(
              'See All',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 16,
                color: Pallete.primaryColor,
              ),
            ),
          ),
      ],
    );
  }
}
