import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:toastification/toastification.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../controller/patient_show_child_record_cubit/patient_show_child_record_cubit.dart';

class PatientShowChildRecordScreen extends StatefulWidget {
  const PatientShowChildRecordScreen({super.key});

  @override
  State<PatientShowChildRecordScreen> createState() =>
      _PatientShowChildRecordScreenState();
}

class _PatientShowChildRecordScreenState
    extends State<PatientShowChildRecordScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _patientShowChildRecordCubit.getChildRecord();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        actions: [
          BlocListener<
            PatientShowChildRecordCubit,
            PatientShowChildRecordState
          >(
            bloc: _patientShowChildRecordCubit,
            listener: (context, state) {
              if (state.status.isLoading) {
                LoadingOverlay().show(context);
              } else {
                LoadingOverlay().hideAll();
                if (state.status.isError) {
                  showToast(
                    context: context,
                    type: ToastificationType.error,
                    msg: state.message,
                  );
                }
              }
            },
            child: IconButton(
              onPressed: () {
                _patientShowChildRecordCubit.getChildRecord();
              },
              icon: Icon(FontAwesomeIcons.arrowsRotate, size: 18),
            ),
          ),
        ],
        centerTitle: false,
        iconTheme: IconThemeData(size: 18),
        scrolledUnderElevation: 0,
        title: Text(
          'Child Record',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 17,
            color: Pallete.black1,
          ),
        ),
        backgroundColor: Pallete.grayScaleColor0,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background child.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),

          BlocBuilder<PatientShowChildRecordCubit, PatientShowChildRecordState>(
            buildWhen: (previous, current) {
              return previous.childRecord == null &&
                  current.childRecord != null;
            },
            bloc: _patientShowChildRecordCubit,
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child:
                    state.childRecord == null
                        ? Center(
                          child: Column(
                            children: [
                              SizedBox(height: screenHeight(context) * 0.25),
                              Image.asset(
                                'assets/icons/medical-record.png',
                                width: screenWidth(context) * 0.5,
                                height: screenHeight(context) * 0.2,
                              ),
                              Text(
                                'No records available',
                                style: Theme.of(
                                  context,
                                ).textTheme.labelSmall!.copyWith(
                                  color: Pallete.black1,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        )
                        : Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Pallete.grayScaleColor0,
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 16,
                            ),
                            child: BlocBuilder<
                              PatientShowChildRecordCubit,
                              PatientShowChildRecordState
                            >(
                              bloc: _patientShowChildRecordCubit,

                              builder: (context, state) {
                                final record = state.childRecord;
                                return ListView(
                                  shrinkWrap: true,
                                  children: [
                                    _buildSectionTitle(context, 'Visit Dates'),
                                    _buildInfoRow(
                                      context,
                                      'Last Visit',
                                      record == null
                                          ? 'No Date'
                                          : DateFormat('yyyy-MM-dd').format(
                                            record.lastVisitDate ??
                                                DateTime(0000),
                                          ),
                                    ),
                                    _buildInfoRow(
                                      context,
                                      'Next Visit',
                                      record == null
                                          ? 'No Date'
                                          : DateFormat('yyyy-MM-dd').format(
                                            record.nextVisitDate ??
                                                DateTime(0000),
                                          ),
                                    ),
                                    const SizedBox(height: 12),

                                    _buildSectionTitle(context, 'Measurements'),
                                    _buildInfoRow(
                                      context,
                                      'Height',
                                      '${record?.heightCm ?? 'no'} cm',
                                    ),
                                    _buildInfoRow(
                                      context,
                                      'Weight',
                                      '${record?.weightKg ?? 'no'} kg',
                                    ),
                                    _buildInfoRow(
                                      context,
                                      'Head Circumference',
                                      '${record?.headCircumferenceCm ?? 'no'} cm',
                                    ),
                                    const SizedBox(height: 12),

                                    _buildSectionTitle(context, 'Health'),
                                    _buildInfoRow(
                                      context,
                                      'Allergies',
                                      record?.allergies ?? 'no Data',
                                    ),
                                    _buildInfoRow(
                                      context,
                                      'Feeding Type',
                                      record?.feedingType ?? 'no Feeding type',
                                    ),
                                    const SizedBox(height: 12),

                                    _buildSectionTitle(context, 'Doctor Notes'),
                                    _noteContainer(
                                      context,
                                      record?.doctorNotes ?? 'no Data',
                                    ),

                                    _buildSectionTitle(context, 'Growth Notes'),
                                    _noteContainer(
                                      context,
                                      record?.growthNotes ?? 'no Data',
                                    ),

                                    _buildSectionTitle(
                                      context,
                                      'Developmental Observations',
                                    ),
                                    _noteContainer(
                                      context,
                                      record?.developmentalObservations ??
                                          'no Observations',
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2, top: 2),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Pallete.primaryColor,
        ),
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label: ',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 14,
              color: Pallete.black1,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 13,
                color: Pallete.black1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _noteContainer(BuildContext context, String note) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Pallete.grayScaleColor200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        note,
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.copyWith(fontSize: 14, color: Pallete.black1),
      ),
    );
  }

  final _patientShowChildRecordCubit = PatientShowChildRecordCubit();
}
