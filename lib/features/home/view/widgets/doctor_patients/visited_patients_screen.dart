import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/features/home/controller/doctor_patients_bloc/doctor_patients_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

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

  @override
  void initState() {
    super.initState();
    context.read<DoctorPatientsBloc>().add(LoadData());
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
                                      decoration: BoxDecoration(
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
              const SizedBox(height: 16),

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
                    if (state.patients.isEmpty) {
                      return RefreshIndicator(
                        onRefresh: () async {
                          context.read<DoctorPatientsBloc>().add(LoadData());
                        },
                        child: SingleChildScrollView(
                          physics: AlwaysScrollableScrollPhysics(),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/search.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  "No Patients found",
                                  style: Theme.of(
                                    context,
                                  ).textTheme.labelSmall!.copyWith(
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
                    return RefreshIndicator(
                      onRefresh: () async {
                        context.read<DoctorPatientsBloc>().add(LoadData());
                      },
                      child: Skeletonizer(
                        enabled: state.status.isLoading,
                        child: GridView.builder(
                          itemCount:
                              state.status.isLoading
                                  ? 8
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
                      showToast(msg: state.message);
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
}
