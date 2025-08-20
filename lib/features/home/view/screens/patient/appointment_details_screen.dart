import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/providers/file_manager/file_manager.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:our_flutter_clinic_app/features/home/controller/appointment_details/appointment_details_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/controller/home_bloc/home_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:our_flutter_clinic_app/features/home/repository/appointment_details_repository.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/result_card.dart';
import '../../../../../core/widgets/transparent_content_dialog.dart';
import '../../../../../core/widgets/widgets.dart';
import '../../../controller/appointments_bloc/appointments_bloc.dart';
import '../../widgets/home_widgets.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import 'reschedule_screen.dart';

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
    _appointmentDetailsBloc = AppointmentDetailsBloc(
      appointmentDetailsRepository: AppointmentDetailsRepository(),
      appointment: widget.appointment,
    )..add(AppointmentFetched());
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
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Pallete.black1,
            size: 18,
          ),
        ),
        title: Text(
          'Appointment Details',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
            fontSize: 17,
            color: Pallete.grayScaleColor700,
          ),
        ),
        toolbarHeight: screenHeight(context) * 0.1,
        actions: [
          IconButton(
            onPressed: () {
              _appointmentDetailsBloc.add(AppointmentFetched());
            },
            icon: Icon(FontAwesomeIcons.arrowsRotate, size: 18),
          ),
        ],
      ),
      body: PopScope(
        canPop: true,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) {
            context.read<AppointmentsBloc>().add(AppointmentsFetched());
            context.read<HomeBloc>().add(AllListsFetched());
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.appointment.status!.isVisited)
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

            if (widget.appointment.status!.isPending) _buildPendingFooter(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      floatingActionButton:
          !((widget.appointment.status?.isVisited ?? true) &&
                  _currentIndex == 1)
              ? null
              : BlocBuilder<AppointmentDetailsBloc, AppointmentDetailsState>(
                bloc: _appointmentDetailsBloc,
                builder: (context, state) {
                  if (state.medicalInfo?.prescription == null) {
                    return Center();
                  } else {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          screenWidth(context) * 0.9,
                          screenHeight(context) * 0.07,
                        ),
                      ),
                      onPressed:
                          state.prescriptionFilePath == null
                              ? () {
                                _appointmentDetailsBloc.add(
                                  PrescriptionDownloaded(
                                    prescriptionId:
                                        state.medicalInfo?.prescription?.id ??
                                        0,
                                  ),
                                );
                              }
                              : () {
                                FileManager.openFile(
                                  state.prescriptionFilePath!,
                                );
                              },

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10,
                        children: [
                          if (state.status.isDownloading)
                            CircularProgressIndicator(color: Colors.white),
                          if (!state.status.isDownloading)
                            Icon(
                              state.prescriptionFilePath == null
                                  ? Icons.download
                                  : Icons.picture_as_pdf,
                              color: Colors.white,
                            ),
                          Text(
                            'Download Prescription',
                            style: Theme.of(context).textTheme.labelMedium!
                                .copyWith(fontSize: 13, color: Colors.white),
                          ),
                          if (state.status.isDownloading)
                            CircularProgressIndicator(
                              value: state.downloadProgress,
                              color: Colors.white,
                            ),
                          if (!state.status.isDownloading)
                            Icon(
                              state.prescriptionFilePath == null
                                  ? Icons.download
                                  : Icons.picture_as_pdf,
                              color: Colors.white,
                            ),
                        ],
                      ),
                    );
                  }
                },
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
      child: BlocConsumer<AppointmentDetailsBloc, AppointmentDetailsState>(
        bloc: _appointmentDetailsBloc,
        listener: (context, state) {
          if (state.status.isLoading) {
            LoadingOverlay().show(context);
          } else {
            LoadingOverlay().hideAll();
          }
        },
        builder: (context, state) {
          return AppointmentCard(
            appointment: state.appointment ?? widget.appointment,
          );
        },
      ),
    );
  }

  Widget _buildAppointmentResults() {
    return BlocBuilder<AppointmentDetailsBloc, AppointmentDetailsState>(
      bloc: _appointmentDetailsBloc,
      builder: (context, state) {
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
                    [state.medicalInfo?.diagnosis ?? 'No diagnosis'],
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: screenWidth(context) * 0.92,
                  child: ResultCard(
                    title: 'Notes & Instructions',
                    iconImagePath: 'assets/icons/ic_notes.png',
                    listItems: [
                      if (state.medicalInfo?.doctorNote != null)
                        [state.medicalInfo!.doctorNote ?? ''],
                      if (state.medicalInfo?.patientNote != null)
                        [state.medicalInfo?.patientNote ?? ''],
                      if (state.medicalInfo?.prescription != null &&
                          state.medicalInfo?.prescription?.note != null)
                        [state.medicalInfo?.prescription!.note! ?? ''],
                    ],
                  ),
                ),
                if (state.medicalInfo?.prescription?.medicines != null)
                  SizedBox(height: 20),

                if (state.medicalInfo?.prescription?.medicines != null)
                  ResultCard(
                    title: 'Medicines',
                    iconImagePath: 'assets/icons/ic_medicine.png',
                    listItems:
                        state.medicalInfo!.prescription!.medicines!.map((
                          medicine,
                        ) {
                          return [
                            '${medicine.name} ${medicine.dose}',
                            '${medicine.dose}, ${medicine.frequency}, ${medicine.until}',
                            '${medicine.whenToTake}',
                          ];
                        }).toList(),
                  ),
              ],
            ),
          ),
        );
      },
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
                onTap: () async {
                  if (_appointmentDetailsBloc.state.appointment != null) {
                    await _showTDialog(
                      _appointmentDetailsBloc.state.appointment!,
                    );
                  }
                },
                fillColor: Colors.transparent,
                textColor: Theme.of(context).colorScheme.primary,
              ),
              BlocBuilder<AppointmentDetailsBloc, AppointmentDetailsState>(
                bloc: _appointmentDetailsBloc,
                builder: (context, state) {
                  return CustomElevatedButton(
                    fontSize: 15,
                    elevation: 0,
                    borderRadius: 32,
                    title: 'Reschedule',
                    onTap: () {
                      if (state.appointment != null) {
                        context.pushNamed(
                          AppRouteConstants.rescheduleRouteName,
                          extra: state.appointment,
                        );
                      }
                    },
                    fillColor: Theme.of(context).colorScheme.primary,
                    textColor: Colors.white,
                  );
                },
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
                          context.read<AppointmentsBloc>()
                            ..add(
                              AppointmentCanceled(reservationId: item.id ?? 0),
                            )
                            ..add(AppointmentsFetched());
                          context.pop();
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

  late final AnimationController _animationController;
  late final Animation<double> _fadeAnimation;
  int _currentIndex = 0;
  late final AppointmentDetailsBloc _appointmentDetailsBloc;
}
