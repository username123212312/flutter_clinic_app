import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/doctor_appointments/doctor_appointment_card.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/home_widgets.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:toastification/toastification.dart';

import '../../../../../core/navigation/navigation_exports.dart';
import '../../../controller/doctor_appointments_bloc/doctor_appointments_bloc.dart';

class AppointmentsScreenWidget extends StatefulWidget {
  const AppointmentsScreenWidget({super.key});

  @override
  State<AppointmentsScreenWidget> createState() =>
      _AppointmentsScreenWidgetState();
}

class _AppointmentsScreenWidgetState extends State<AppointmentsScreenWidget> {
  @override
  void initState() {
    context.read<DoctorAppointmentsBloc>().add(ResetAppointments());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _buildHeader(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: screenHeight(context) * 0.8,
            child:
                BlocConsumer<DoctorAppointmentsBloc, DoctorAppointmentsState>(
                  listener: (context, state) {
                    if (state.status.isError) {
                      showToast(
                        context: context,
                        type: ToastificationType.error,
                        msg: state.message,
                      );
                    }
                  },
                  builder: (context, state) {
                    if (state.appointments.isEmpty && !state.status.isLoading) {
                      return RefreshIndicator(
                        onRefresh: () async {
                          context.read<DoctorAppointmentsBloc>().add(
                            DoctorAppointmentsEvent.fetchAppointmentsByType(),
                          );
                        },
                        child: SingleChildScrollView(
                          physics: AlwaysScrollableScrollPhysics(),
                          child: Center(
                            heightFactor: 3.5,
                            child: Image.asset(
                              'assets/images/il_empty_activity.webp',
                              width: screenWidth(context) * 0.4,
                              height: screenHeight(context) * 0.17,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      );
                    }
                    return Skeletonizer(
                      enabled: state.status.isLoading,
                      child: RefreshIndicator(
                        onRefresh: () async {
                          context.read<DoctorAppointmentsBloc>().add(
                            DoctorAppointmentsEvent.fetchAppointmentsByType(),
                          );
                        },
                        child: ListView.builder(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                          itemExtent: screenHeight(context) * 0.22,
                          itemCount:
                              state.status.isLoading
                                  ? 10
                                  : state.appointments.length,
                          itemBuilder: (_, index) {
                            if (state.status.isLoading) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: DoctorAppointmentCard(
                                  appointment: AppointmentModel(),
                                ),
                              );
                            }
                            final appointment = state.appointments[index];
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: GestureDetector(
                                onTap: () {
                                  context.pushNamed(
                                    AppRouteConstants
                                        .doctorAppointmentDetailsRouteName,
                                    extra: appointment,
                                  );
                                },
                                behavior: HitTestBehavior.opaque,
                                child: DoctorAppointmentCard(
                                  appointment: appointment,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
          ),
        ),
      ],
    );
  }

  SliverAppBar _buildHeader() {
    return SliverAppBar(
      title: SizedBox(
        width: screenWidth(context) * 0.8,
        child: ThreeSelectableWidget(
          currentIndex: _currentStatusIndex,
          titles: ['Pending', 'Visited', 'Today'],
          onChange: (index) {
            context.read<DoctorAppointmentsBloc>().add(
              DoctorAppointmentsEvent.changeAppointmentStatus(
                status:
                    index == 0
                        ? DoctorAppointmentStatus.pending
                        : index == 1
                        ? DoctorAppointmentStatus.visited
                        : DoctorAppointmentStatus.today,
              ),
            );
            setState(() {
              _currentStatusIndex = index;
            });
          },
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size(
          screenWidth(context) * 0.1,
          screenHeight(context) * 0.07,
        ),
        child: SizedBox(
          width: screenWidth(context) * 0.9,
          height: screenHeight(context) * 0.07,
          child: FittedBox(
            child: TwoSelectableWidget(
              currentIndex: _currentTypeIndex,
              twoTitles: ['First Time', 'CheckUp'],
              onToggleIndex: (index) {
                setState(() {
                  _currentTypeIndex = index;
                });
                context.read<DoctorAppointmentsBloc>().add(
                  DoctorAppointmentsEvent.changeAppointmentType(
                    type:
                        index == 0
                            ? DoctorAppointmentType.firstTime
                            : DoctorAppointmentType.checkup,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  int _currentStatusIndex = 0;
  int _currentTypeIndex = 0;
}
