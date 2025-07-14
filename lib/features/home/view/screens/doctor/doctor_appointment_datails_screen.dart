import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:our_flutter_clinic_app/features/home/model/appointment_model.dart';

import '../../../../../core/enums.dart';
import '../../../../../core/navigation/navigation_exports.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../../../core/widgets/loading_overlay.dart';
import '../../../controller/doctor_appointment_details_cubit/doctor_appointment_details_cubit.dart';
import '../../widgets/doctor_appointments/doctor_appointment_details_card.dart';
import '../../widgets/result_card.dart';

class DoctorAppointmentDatailsScreen extends StatefulWidget {
  const DoctorAppointmentDatailsScreen({super.key, required this.appointment});
  final AppointmentModel appointment;

  @override
  State<DoctorAppointmentDatailsScreen> createState() =>
      _DoctorAppointmentDatailsScreenState();
}

class _DoctorAppointmentDatailsScreenState
    extends State<DoctorAppointmentDatailsScreen> {
  @override
  void initState() {
    super.initState();
    _doctorAppointmentDetailsCubit = DoctorAppointmentDetailsCubit(
      appointment: widget.appointment,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if ((widget.appointment.status ?? AppointmentStatus.cancelled)
          .isVisited) {
        _doctorAppointmentDetailsCubit.fetchAppointmentResults();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(size: 24),
        toolbarHeight: screenHeight(context) * 0.1,
        title: Text(
          'Appointment Details',
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 18),
        ),
        actions:
            (widget.appointment.status ?? AppointmentStatus.cancelled).isVisited
                ? [
                  IconButton(
                    onPressed: () {
                      _doctorAppointmentDetailsCubit.fetchAppointmentResults();
                    },
                    icon: Icon(size: 17, FontAwesomeIcons.arrowsRotate),
                  ),
                ]
                : null,
      ),
      body: Column(
        children: [
          if ((widget.appointment.status ?? AppointmentStatus.cancelled)
              .isVisited)
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: screenWidth(context) * 0.7,
                child: FittedBox(
                  child: TwoSelectableWidget(
                    inBetweenPadding: 100,
                    twoTitles: ['Info', 'Results'],
                    onToggleIndex: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
            ),
          BlocListener<
            DoctorAppointmentDetailsCubit,
            DoctorAppointmentDetailsState
          >(
            bloc: _doctorAppointmentDetailsCubit,
            listener: (
              BuildContext context,
              DoctorAppointmentDetailsState state,
            ) {
              if (state.status.isLoading) {
                LoadingOverlay().show(context);
              } else {
                LoadingOverlay().hideAll();
                if (state.status.isError) {
                  Fluttertoast.showToast(msg: state.message);
                }
              }
            },
            child: SizedBox(height: 30),
          ),
          if (_currentIndex == 0)
            Align(
              alignment: Alignment.center,
              child: DoctorAppointmentDetailsCard(
                appointment: widget.appointment,
              ),
            ),

          if (_currentIndex == 1) _buildAppointmentResults(),
        ],
      ),
    );
  }

  Widget _buildAppointmentResults() {
    return BlocBuilder<
      DoctorAppointmentDetailsCubit,
      DoctorAppointmentDetailsState
    >(
      bloc: _doctorAppointmentDetailsCubit,
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

  int _currentIndex = 0;
  late final DoctorAppointmentDetailsCubit _doctorAppointmentDetailsCubit;
}
