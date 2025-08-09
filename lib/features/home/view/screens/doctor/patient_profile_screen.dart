import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/three_selectable_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/navigation/navigation_exports.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../../../core/widgets/two_sellectable_widget.dart';
import '../../../controller/doctor_patient_bloc/doctor_patient_bloc.dart';
import '../../../model/clinic_model.dart';
import '../../widgets/custom_drop_down_widget.dart';
import '../../widgets/doctor_patients/patient_analysis_widget.dart';

class PatientProfileScreen extends StatefulWidget {
  const PatientProfileScreen({super.key, required this.patient});

  final UserModel patient;

  @override
  State<PatientProfileScreen> createState() => _PatientProfileScreenState();
}

class _PatientProfileScreenState extends State<PatientProfileScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _doctorPatientBloc = DoctorPatientBloc(patient: widget.patient);
    _doctorPatientBloc.add(PatientProfileFetched());
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(() {
      if (_tabController.index == 1) {
        _doctorPatientBloc.add(PatientAppointmentsFetched());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions:
            _tabController.index == 0
                ? [
                  IconButton(
                    onPressed: () {
                      _doctorPatientBloc.add(PatientProfileFetched());
                    },
                    icon: Icon(FontAwesomeIcons.arrowsRotate, size: 18),
                  ),
                ]
                : null,
        iconTheme: IconThemeData(size: 24),
        toolbarHeight: screenHeight(context) * 0.1,
        title: Text(
          '${widget.patient.firstName ?? 'NO'} ${widget.patient.lastName ?? 'Patient'}',
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 18),
        ),
        bottom: PreferredSize(
          preferredSize: Size(
            screenWidth(context),
            screenHeight(context) * 0.05,
          ),
          child: TabBar(
            unselectedLabelColor: Colors.black,
            controller: _tabController,
            tabs: [
              Tab(text: 'Info'),
              Tab(text: 'Appointments'),
              Tab(text: 'Analysis'),
            ],
          ),
        ),
      ),
      body: Container(
        color: Pallete.buttonBG,
        child: TabBarView(
          controller: _tabController,
          children: [
            _buildInfo(),
            _buildAppointments(),
            PatientAnalysisWidget(patient: widget.patient),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: BlocBuilder<DoctorPatientBloc, DoctorPatientState>(
        bloc: _doctorPatientBloc,
        builder: (context, state) {
          return Visibility(
            visible: (state.patient.isChild ?? false),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed:
                        state.status.isLoading
                            ? null
                            : () {
                              context.pushNamed(
                                AppRouteConstants.doctorChildVacRecordRouteName,
                                extra: widget.patient,
                              );
                            },
                    child: Text(
                      'Vaccine record',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: BlocBuilder<DoctorPatientBloc, DoctorPatientState>(
                    bloc: _doctorPatientBloc,
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed:
                            state.status.isLoading
                                ? null
                                : () async {
                                  if (state.patient.childRecord == null) {
                                    final isAdded = await context
                                        .pushNamed<bool>(
                                          AppRouteConstants
                                              .doctorAddChildRecordRouteName,
                                          extra: widget.patient,
                                        );
                                    if (isAdded != null) {
                                      _doctorPatientBloc.add(
                                        PatientProfileFetched(),
                                      );
                                    }
                                  } else {
                                    context.pushNamed(
                                      AppRouteConstants
                                          .doctorChildRecordRouteName,
                                      extra: widget.patient,
                                    );
                                  }
                                },
                        child: Text(
                          'Child record',
                          style: Theme.of(context).textTheme.labelMedium!
                              .copyWith(fontSize: 14, color: Colors.white),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildAppointments() {
    return BlocBuilder<DoctorPatientBloc, DoctorPatientState>(
      bloc: _doctorPatientBloc,
      builder: (context, state) {
        if (state.appointments.isEmpty) {
          return RefreshIndicator(
            onRefresh: () async {
              _doctorPatientBloc.add(PatientAppointmentsFetched());
            },
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 100),
                    Image.asset(
                      'assets/images/search.png',
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "No Analysis found",
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
        return Skeletonizer(
          enabled: state.appointmentsStatus.isLoading,
          child: RefreshIndicator(
            onRefresh: () async {
              _doctorPatientBloc.add(PatientAppointmentsFetched());
            },
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              itemCount:
                  state.appointmentsStatus.isLoading
                      ? 10
                      : state.appointments.length,
              itemExtent: screenHeight(context) * 0.18,
              itemBuilder: (_, index) {
                if (state.appointmentsStatus.isLoading) {
                  return _buildAppointmentsLoading(context);
                }
                final appointment = state.appointments[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Pallete.grayScaleColor300,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Stack(
                      children: [
                        Column(
                          spacing: 20,
                          children: [
                            Row(
                              spacing: 10,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  width: screenWidth(context) * 0.15,
                                  height: screenHeight(context) * 0.08,
                                  alignment: Alignment.center,
                                  child: Text((appointment.id ?? 0).toString()),
                                ),
                                SizedBox(
                                  height: 50,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        appointment.appointmentType?.name ??
                                            'No type',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium!
                                            .copyWith(fontSize: 12),
                                      ),
                                      if (appointment.referredBy != null)
                                        Text(
                                          'Referred by : ${appointment.referredBy!}',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium!
                                              .copyWith(fontSize: 10),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: Row(
                                spacing: 5,
                                children: [
                                  Icon(FontAwesomeIcons.calendar),
                                  Text(
                                    DateFormat.yMMMMEEEEd().format(
                                      appointment.reservationDate ??
                                          DateTime.now(),
                                    ),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Spacer(),
                                  Icon(FontAwesomeIcons.clock),
                                  Text(
                                    formatTime(
                                      appointment.reservationHour ??
                                          TimeOfDay.now(),
                                    ),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(3),
                            width: 70,
                            height: 23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color:
                                  selectAppointmentStatusColor(
                                    appointment.status ??
                                        AppointmentStatus.pending,
                                  )[0],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        selectAppointmentStatusColor(
                                          appointment.status ??
                                              AppointmentStatus.pending,
                                        )[1],
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    (appointment.status ??
                                            AppointmentStatus.pending)
                                        .name,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Padding _buildAppointmentsLoading(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Pallete.grayBorderColor,
          borderRadius: BorderRadius.circular(13),
        ),
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            Column(
              spacing: 20,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: screenWidth(context) * 0.15,
                      height: screenHeight(context) * 0.08,
                      alignment: Alignment.center,
                      child: Text(''),
                    ),
                    Text(
                      'First Time',
                      style: Theme.of(
                        context,
                      ).textTheme.labelMedium!.copyWith(fontSize: 12),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    spacing: 5,
                    children: [
                      Icon(FontAwesomeIcons.calendar),
                      Text('2025-07-03'),
                      Spacer(),
                      Icon(FontAwesomeIcons.clock),
                      Text('10:09 PM'),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(3),
                width: 65,
                height: 23,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Pallete.alertSuccessColor,
                ),
                child: Row(
                  spacing: 5,
                  children: [
                    FittedBox(child: Text('pending')),
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Pallete.alertDangerColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: BlocBuilder<DoctorPatientBloc, DoctorPatientState>(
        bloc: _doctorPatientBloc,
        builder: (context, state) {
          final patient = state.patient;
          return Skeletonizer(
            enabled: state.status.isLoading,
            child: Column(
              children: [
                SizedBox(height: screenHeight(context) * 0.1),
                Container(
                  width: screenWidth(context) * 0.8,
                  // height: screenHeight(context) * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Pallete.primaryColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.0, 2.0),
                        spreadRadius: 0.5,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: screenWidth(context) * 0.2,
                            height: screenHeight(context) * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(
                                  (widget.patient.gender ?? 'm')[0]
                                              .toLowerCase() ==
                                          'm'
                                      ? 'assets/icons/patient_icon2.png'
                                      : 'assets/icons/patient_icon1.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '${widget.patient.firstName ?? 'No'} ${widget.patient.lastName ?? 'Patient'}',
                            style: Theme.of(context).textTheme.labelMedium!
                                .copyWith(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Gender:',
                            style: Theme.of(
                              context,
                            ).textTheme.labelMedium!.copyWith(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            patient.gender ?? 'No gender',
                            style: Theme.of(context).textTheme.labelMedium!
                                .copyWith(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Blood type:',
                            style: Theme.of(
                              context,
                            ).textTheme.labelMedium!.copyWith(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            patient.bloodType ?? 'No Type',
                            style: Theme.of(context).textTheme.labelMedium!
                                .copyWith(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Age:',
                            style: Theme.of(
                              context,
                            ).textTheme.labelMedium!.copyWith(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            DateFormat(
                              'dd/MM/yy',
                            ).format(patient.birthDate ?? DateTime.now()),
                            style: Theme.of(context).textTheme.labelMedium!
                                .copyWith(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                      Text(
                        'Address:',
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium!.copyWith(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        patient.address ?? 'No Address',
                        style: Theme.of(context).textTheme.labelMedium!
                            .copyWith(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  late final TabController _tabController;
  late final DoctorPatientBloc _doctorPatientBloc;
}
