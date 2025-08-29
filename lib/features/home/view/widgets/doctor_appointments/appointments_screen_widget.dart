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
import '../../../../../core/widgets/custom_dialog.dart';
import '../../../../../core/widgets/transparent_content_dialog.dart';
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
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final appointmentsBloc = context.read<DoctorAppointmentsBloc>();
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      if (appointmentsBloc.state.hasMore &&
          !appointmentsBloc.state.status.isLoading &&
          !appointmentsBloc.state.status.isLoadingMore) {
        appointmentsBloc.add(DoctorAppointmentsEvent.fetchAppointmentsByType());
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<DoctorAppointmentsBloc>().add(
          DoctorAppointmentsEvent.fetchAppointmentsByType(true),
        );
      },
      child: CustomScrollView(
        controller: _scrollController,
        physics: AlwaysScrollableScrollPhysics(),
        slivers: [
          _buildHeader(),
          SliverToBoxAdapter(
            child: SizedBox(
              child: BlocConsumer<
                DoctorAppointmentsBloc,
                DoctorAppointmentsState
              >(
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
                    return Center(
                      heightFactor: 3.5,
                      child: Image.asset(
                        'assets/images/il_empty_activity.webp',
                        width: screenWidth(context) * 0.4,
                        height: screenHeight(context) * 0.17,
                        fit: BoxFit.contain,
                      ),
                    );
                  }
                  return Skeletonizer(
                     effect: SoldColorEffect(
                          color: Pallete.grayScaleColor300,
                        ),
                    enabled: state.status.isLoading,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      itemExtent:
                          _currentStatusIndex == 0
                              ? (screenHeight(context) * 0.29)
                              : (screenHeight(context) * 0.22),
                      itemCount:
                          state.status.isLoading
                              ? 10
                              : state.status.isLoadingMore
                              ? state.appointments.length + 1
                              : state.appointments.length,
                      itemBuilder: (_, index) {
                        if (index == state.appointments.length &&
                            state.status.isLoadingMore) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        }
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
                              onCancel:
                                  _currentStatusIndex == 0
                                      ? () {
                                        _showTDialog(appointment);
                                      }
                                      : null,
                              appointment: appointment,
                              image:
                                  (appointment.patientGender ?? 'male')[0] ==
                                          'm'
                                      ? 'assets/icons/man.png'
                                      : 'assets/icons/girl.png',
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> _showTDialog(AppointmentModel appointment) {
    return TransparentDialog.show(
      barrierDismissible: true,
      context: context,
      builder:
          (_) => CustomDialog(
            size: Size(
              screenWidth(context) * 0.8,
              screenHeight(context) * 0.17,
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Are you sure?',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: screenWidth(context) * 0.3,
                      height: screenHeight(context) * 0.05,
                      child: CustomElevatedButton(
                        fontSize: 12,
                        title: 'back',
                        onTap: () {
                          context.pop();
                        },
                        fillColor: Pallete.grayScaleColor400,
                        textColor: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth(context) * 0.3,
                      height: screenHeight(context) * 0.05,
                      child: CustomElevatedButton(
                        fontSize: 12,
                        title: 'Cancel',
                        onTap: () async {
                          context.read<DoctorAppointmentsBloc>().add(
                            CancelAppointment(
                              reservationId: appointment.id ?? -1,
                            ),
                          );
                          context.pop();

                          bool isCancelled = false;
                          await for (final newState
                              in context
                                  .read<DoctorAppointmentsBloc>()
                                  .stream) {
                            if (!newState.status.isLoading) {
                              if (newState.status.isDone) {
                                isCancelled = true;
                              }
                              break;
                            }
                          }
                          if (isCancelled) {
                            showToast(
                              context: context,
                              msg: 'Appointment cancelled successfully',
                              type: ToastificationType.success,
                            );
                          } else {
                            showToast(
                              context: context,
                              msg: 'some error occurred',
                              type: ToastificationType.error,
                            );
                          }
                        },
                        fillColor: Theme.of(context).colorScheme.primary,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
    );
  }

  SliverAppBar _buildHeader() {
    return SliverAppBar(
      automaticallyImplyLeading: true,
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
  final _scrollController = ScrollController();
}
