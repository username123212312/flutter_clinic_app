import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/features/home/controller/doctor_patients_bloc/doctor_patients_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:toastification/toastification.dart';

import '../../../../../core/blocs/user_bloc/user_bloc.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../home/search.dart';
import 'visited_patient_card.dart';

class VisitedPatientsScreen extends StatefulWidget {
  const VisitedPatientsScreen({super.key});

  @override
  State<VisitedPatientsScreen> createState() => _VisitedPatientsScreenState();
}

class _VisitedPatientsScreenState extends State<VisitedPatientsScreen> {
  String query = '';
  final TextEditingController _searchController = TextEditingController();
  final _scrollController = ScrollController();
  late final PageController _pageController;
  late final Timer _timer;

  int _currentPage = 0;

  final List<Map<String, String>> sliderData = [
    {
      "image": "assets/images/young-doctor-supporting-his-patient.jpg",
      "text": "Keep smiling, you're making a difference every day! 🌟",
    },
    {
      "image": "assets/images/close-up-pediatrician-vaccinating-kid.jpg",
      "text": "Your patients appreciate you more than you know ❤️",
    },
    {
      "image": "assets/images/senior-medic-sick-patient-attending-health.jpg",
      "text": "Stay strong, you're a true healer 💪",
    },
    {
      "image": "assets/images/senior-doctor-listening-patient-closely.jpg",
      "text": "Every small act of care brings hope and healing ✨",
    },
  ];

  @override
  void initState() {
    super.initState();
    context.read<DoctorPatientsBloc>().add(LoadData());
    _scrollController.addListener(_onScroll);

    _pageController = PageController(viewportFraction: 0.9, initialPage: 0);

    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_pageController.hasClients) {
        int nextPage = _pageController.page!.round() + 1;
        if (nextPage == sliderData.length) {
          nextPage = 0;
        }
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _onScroll() {
    final dPationBloc = context.read<DoctorPatientsBloc>();
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      if (!dPationBloc.state.status.isLoadingMore &&
          !dPationBloc.state.status.isLoading) {
        dPationBloc.add(PatientsFetched());
      }
    }
  }

  void _showSearchDialog() {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Search',
      barrierColor: Colors.transparent,
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, anim1, anim2) {
        return Material(
          type: MaterialType.transparency,
          child: Align(
            alignment: Alignment.topCenter,
            child: SearchDialog(
              controller: _searchController,
              hint: 'Search for the name of the patient',
              onChanged: (value) {
                if (value.trim().isEmpty) {
                  context.read<DoctorPatientsBloc>().add(PatientsFetched());
                } else {
                  context.read<DoctorPatientsBloc>().add(
                    PatientsSearched(query: value.trim()),
                  );
                }
              },
              onSubmitted: (p0) {
                if (p0.trim().isEmpty) {
                  context.read<DoctorPatientsBloc>().add(PatientsFetched());
                } else {
                  context.read<DoctorPatientsBloc>().add(
                    PatientsSearched(query: p0.trim()),
                  );
                }
              },
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, _, child) {
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

  @override
  Widget build(BuildContext context) {
    return buildMainContent(context);
  }

  Widget buildMainContent(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Header
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
                      BlocBuilder<UserBloc, UserState>(
                        builder: (context, state) {
                          return Text(
                            '${state.user?.firstName ?? 'No'} ${state.user?.lastName ?? 'User'}',
                            style: Theme.of(context).textTheme.titleSmall!
                                .copyWith(fontSize: 16, color: Pallete.black1),
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Stack(
                          children: [
                            const Icon(Icons.notifications_none),
                            BlocBuilder<
                              DoctorPatientsBloc,
                              DoctorPatientsState
                            >(
                              builder: (context, state) {
                                return Visibility(
                                  visible: state.notificationsCount > 0,
                                  child: Positioned(
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: const BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        onPressed: () {
                          context.pushNamed(
                            AppRouteConstants.notificationsRouteName,
                          );
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: _showSearchDialog,
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              SizedBox(
                height: 170,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() => _currentPage = index);
                  },
                  itemCount: sliderData.length,
                  itemBuilder: (context, index) {
                    return AnimatedBuilder(
                      animation: _pageController,
                      builder: (context, child) {
                        double value = 1.0;
                        if (_pageController.hasClients &&
                            _pageController.page != null) {
                          value = (_pageController.page! - index).abs();
                          value = (1 - (value * 0.3)).clamp(0.8, 1.0);
                        }
                        return Center(
                          child: Transform.scale(scale: value, child: child),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Card(
                          color: Pallete.grayScaleColor200,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 2,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  sliderData[index]["image"]!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black.withValues(alpha: 0.35),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    sliderData[index]["text"]!,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleMedium!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  sliderData.length,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: _currentPage == index ? 12 : 8,
                    height: _currentPage == index ? 12 : 8,
                    decoration: BoxDecoration(
                      color:
                          _currentPage == index
                              ? Pallete.primaryColor
                              : Pallete.grayScaleColor300,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Text(
                'Visited Patients',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Pallete.black1,
                ),
              ),
              const SizedBox(height: 16),

              Expanded(
                child: BlocConsumer<DoctorPatientsBloc, DoctorPatientsState>(
                  builder: (_, state) {
                    if (state.patients.isEmpty && !state.status.isLoading) {
                      return _buildEmptyState(context);
                    }
                    return RefreshIndicator(
                      onRefresh: () async {
                        context.read<DoctorPatientsBloc>().add(LoadData());
                      },
                      child: Skeletonizer(
                        effect: SoldColorEffect(
                          color: Pallete.grayScaleColor300,
                        ),
                        enabled: state.status.isLoading,
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const AlwaysScrollableScrollPhysics(),
                          controller: _scrollController,
                          itemCount:
                              state.status.isLoading
                                  ? 8
                                  : state.status.isLoadingMore
                                  ? state.patients.length + 2
                                  : state.patients.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                mainAxisExtent: screenHeight(context) * 0.192,
                                childAspectRatio: 1.3,
                              ),
                          itemBuilder: (context, index) {
                            if (state.status.isLoadingMore &&
                                index >= state.patients.length) {
                              return const Padding(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            }
                            if (state.status.isLoading) {
                              return VisitedPatientCard(
                                firstName: 'No',
                                lastName: 'Patient',
                                address: 'No address',
                                onTap: () {},
                                age: '0',
                              );
                            }
                            final patient = state.patients[index];
                            return GestureDetector(
                              onTap: () {
                                context.pushNamed(
                                  AppRouteConstants.patientProfileRouteName,
                                  extra: patient,
                                );
                              },
                              child: VisitedPatientCard(
                                firstName: patient.firstName ?? 'No',
                                lastName: patient.lastName ?? 'Patient',
                                address: patient.address ?? 'No address',
                                age:
                                    patient.birthDate == null
                                        ? ''
                                        : DateFormat(
                                          'dd/MM/yy',
                                        ).format(patient.birthDate!),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                  listener: (_, state) {
                    if (state.status.isError) {
                      showToast(
                        context: context,
                        type: ToastificationType.error,
                        msg: state.message,
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<DoctorPatientsBloc>().add(LoadData());
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/search.png',
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              const SizedBox(height: 20),
              Text(
                "No Patients found",
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Pallete.black1,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
