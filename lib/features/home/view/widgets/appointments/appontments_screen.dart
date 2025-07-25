import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/navigation/fade_page_route_builder.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/widgets/transparent_content_dialog.dart';
import 'package:our_flutter_clinic_app/core/widgets/widgets.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:our_flutter_clinic_app/features/home/controller/appointments_bloc/appointments_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:our_flutter_clinic_app/features/home/repository/appointments_repository.dart';
import 'package:our_flutter_clinic_app/features/home/view/screens/patient/appointment_details_screen.dart';
import '../../../../../core/utils/utils.dart';
import '../../screens/patient/reschedule_screen.dart';
import '../home_widgets.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AppontmentsScreen extends StatefulWidget {
  const AppontmentsScreen({super.key});

  @override
  State<AppontmentsScreen> createState() => _AppontmentsScreenState();
}

class _AppontmentsScreenState extends State<AppontmentsScreen> {
  @override
  void initState() {
    super.initState();
    if (mounted) {
      context.read<AppointmentsBloc>().add(
        AppointmentStatusChanged(appointmentStatus: _currentStatus),
      );
      _loadData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        _loadData();
      },
      child: Container(
        decoration: BoxDecoration(
          image:
              getChildId() == null
                  ? null
                  : DecorationImage(
                    repeat: ImageRepeat.repeat,
                    image: AssetImage('assets/images/background child.png'),
                  ),
        ),
        child: BlocBuilder<AppointmentsBloc, AppointmentsState>(
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                _buildThreeSelectable(),
                (state.appointments == null || state.appointments!.isEmpty)
                    ? SliverToBoxAdapter(
                      child: Center(
                        heightFactor: 2.5,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/il_empty_activity.webp',
                              width: screenWidth(context) * 0.4,
                              height: screenHeight(context) * 0.17,
                              fit: BoxFit.contain,
                            ),
                            Text(
                              'Appointments still empty',
                              style: Theme.of(
                                context,
                              ).textTheme.labelSmall!.copyWith(
                                fontSize: 16,
                                color: Pallete.oxfordBlue,
                              ),
                            ),
                            Text(
                              'Let\'s go to Mediverse for treatment!!!',
                              style: Theme.of(
                                context,
                              ).textTheme.titleSmall!.copyWith(
                                fontSize: 12,
                                color: Pallete.sliverSand,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    : state.status!.isLoading
                    ? SliverToBoxAdapter(
                      child: Skeletonizer(
                        effect: ShimmerEffect(
                          // Animation duration
                        ),
                        child: _buildSkeletonList(),
                      ),
                    )
                    : _buildList(state),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildList(AppointmentsState state) {
    return SliverAnimatedList(
      key: _listKey,

      initialItemCount: (state.appointments ?? []).length,
      itemBuilder:
          (_, index, animation) => _buildItem(
            state,
            state.appointments![index].copyWith(status: _currentStatus),
            animation,
            index,
          ),
    );
  }

  Widget _buildSkeletonList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return AppointmentWidgetItem(appointment: AppointmentModel());
      },
    );
  }

  Widget _buildThreeSelectable() {
    return SliverAppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      elevation: 0,
      floating: true,
      collapsedHeight: screenHeight(context) * 0.101,
      toolbarHeight: screenHeight(context) * 0.1,
      title: ThreeSelectableWidget(
        titles: ['Pending', 'Finished', 'Canceled'],
        onChange: (newIndex) async {
          _changeIndex(newIndex);
          context.read<AppointmentsBloc>().add(
            AppointmentStatusChanged(appointmentStatus: _currentStatus),
          );
          await for (final newState
              in context.read<AppointmentsBloc>().stream) {
            if (newState.status?.isData ?? false) {
              _loadData();
              break;
            }
          }
        },
      ),
    );
  }

  Widget _buildItem(
    AppointmentsState state,
    AppointmentModel item,
    Animation<double> animation,
    int index,
  ) {
    return ScaleTransition(
      scale: animation,
      child: AppointmentWidgetItem(
        onCancel:
            state.appointmentStatus!.isPending
                ? () async {
                  await _showTDialog(item);
                }
                : null,
        onReschedule:
            state.appointmentStatus!.isPending
                ? () {
                  context.pushNamed(
                    AppRouteConstants.rescheduleRouteName,
                    extra: item,
                  );
                }
                : null,
        appointment: item,
        onTap: () {
          context.pushNamed(
            AppRouteConstants.appointmentDetailsRouteName,
            extra: AppointmentModel(
              doctorName: item.doctorName,
              doctorPhoto: item.doctorPhoto,
              doctorSpeciality: item.doctorSpeciality,
              reservationHour: item.reservationHour,
              id: item.id,
              reservationDate: item.reservationDate,
              status: state.appointmentStatus,
            ),
          );
        },
      ),
    );
  }

  Future<dynamic> _showTDialog(AppointmentModel item) {
    return TransparentDialog.show(
      barrierDismissible: false,
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
                        title: 'Yes',
                        onTap: () {
                          context.read<AppointmentsBloc>().add(
                            AppointmentCanceled(reservationId: item.id ?? 0),
                          );
                          context.pop();
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

  Future<void> _loadData() async {
    if (mounted) {
      context.read<AppointmentsBloc>().add(AppointmentsFetched());
    }
  }

  void _changeIndex(int newIndex) {
    switch (newIndex) {
      case 0:
        _currentStatus = AppointmentStatus.pending;
        break;
      case 1:
        _currentStatus = AppointmentStatus.visited;
        break;
      case 2:
        _currentStatus = AppointmentStatus.cancelled;
        break;
    }
    setState(() {});
  }

  AppointmentStatus _currentStatus = AppointmentStatus.pending;

  final GlobalKey<SliverAnimatedListState> _listKey =
      GlobalKey<SliverAnimatedListState>();
}
