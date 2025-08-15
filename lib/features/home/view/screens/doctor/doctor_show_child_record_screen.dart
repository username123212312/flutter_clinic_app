import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:toastification/toastification.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../controller/doctor_show_child_record_cubit/doctor_show_child_record_cubit.dart';
import '../../../repository/doctor_child_record_repository.dart';
import 'add_child_record_screen.dart';

class DoctorShowChildRecordScreen extends StatefulWidget {
  const DoctorShowChildRecordScreen({super.key, required this.child});
  final UserModel child;

  @override
  State<DoctorShowChildRecordScreen> createState() =>
      _DoctorShowChildRecordScreenState();
}

class _DoctorShowChildRecordScreenState
    extends State<DoctorShowChildRecordScreen> {
  @override
  void initState() {
    _doctorShowChildRecordCubit = DoctorShowChildRecordCubit(
      doctorChildRecordRepository: DoctorChildRecordRepository(),
      child: widget.child,
    );
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _doctorShowChildRecordCubit.fetchChildRecord();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        title: Text(
          'Child Record',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 17,
            color: Pallete.black1,
          ),
        ),
        iconTheme: IconThemeData(size: 18),

        actions: [
          BlocConsumer<DoctorShowChildRecordCubit, DoctorShowChildRecordState>(
            bloc: _doctorShowChildRecordCubit,
            builder: (context, state) {
              return IconButton(
                icon: const Icon(
                  FontAwesomeIcons.pen,
                  size: 16,
                  color: Pallete.primaryColor,
                ),
                onPressed:
                    state.record == null
                        ? null
                        : () async {
                          final isModified = await context.pushNamed<bool>(
                            AppRouteConstants.doctorModifyChildRecordRouteName,
                            extra: state.record,
                          );
                          if (isModified != null) {
                            if (isModified) {
                              _doctorShowChildRecordCubit.fetchChildRecord();
                            }
                          }
                        },
              );
            },
            listener: (BuildContext context, DoctorShowChildRecordState state) {
              if (state.status.isLoading) {
                LoadingOverlay().show(context);
              } else {
                LoadingOverlay().hideAll();
                if (state.status.isError) {
                  showToast(
                    context: context,
                    msg: state.message,
                    type: ToastificationType.error,
                  );
                }
              }
            },
          ),
        ],
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
          BlocBuilder<DoctorShowChildRecordCubit, DoctorShowChildRecordState>(
            bloc: _doctorShowChildRecordCubit,
            builder: (context, state) {
              final record = state.record;
              return RefreshIndicator(
                triggerMode: RefreshIndicatorTriggerMode.anywhere,
                onRefresh: () async {
                  _doctorShowChildRecordCubit.fetchChildRecord();
                },
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(16),
                  child:
                      record == null
                          ? Center(
                            heightFactor: 4,
                            child: Image.asset(
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                              'assets/images/il_empty_activity.webp',
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
                              child: ListView(
                                shrinkWrap: true,
                                children: [
                                  _buildSectionTitle(context, 'Visit Dates'),
                                  _buildInfoRow(
                                    context,
                                    'Last Visit',
                                    record.lastVisitDate == null
                                        ? 'No date'
                                        : DateFormat(
                                          'yyyy-MM-dd',
                                        ).format(record.lastVisitDate!),
                                  ),
                                  _buildInfoRow(
                                    context,
                                    'Next Visit',
                                    record.nextVisitDate == null
                                        ? 'No date'
                                        : DateFormat(
                                          'yyyy-MM-dd',
                                        ).format(record.nextVisitDate!),
                                  ),
                                  const SizedBox(height: 12),

                                  _buildSectionTitle(context, 'Measurements'),
                                  _buildInfoRow(
                                    context,
                                    'Height',
                                    '${record.heightCm ?? 'No'} cm',
                                  ),
                                  _buildInfoRow(
                                    context,
                                    'Weight',
                                    '${record.weightKg ?? 'No'} kg',
                                  ),
                                  _buildInfoRow(
                                    context,
                                    'Head Circumference',
                                    '${record.headCircumferenceCm ?? 'No'} cm',
                                  ),
                                  const SizedBox(height: 12),

                                  _buildSectionTitle(context, 'Health'),
                                  _buildInfoRow(
                                    context,
                                    'Allergies',
                                    record.allergies ?? 'No allergies',
                                  ),
                                  _buildInfoRow(
                                    context,
                                    'Feeding Type',
                                    record.feedingType ?? 'No type',
                                  ),
                                  const SizedBox(height: 12),

                                  _buildSectionTitle(context, 'Doctor Notes'),
                                  _noteContainer(
                                    context,
                                    record.doctorNotes ?? 'No notes',
                                  ),

                                  _buildSectionTitle(context, 'Growth Notes'),
                                  _noteContainer(
                                    context,
                                    record.growthNotes ?? 'No notes',
                                  ),

                                  _buildSectionTitle(
                                    context,
                                    'Developmental Observations',
                                  ),
                                  _noteContainer(
                                    context,
                                    record.developmentalObservations ??
                                        'No Observations',
                                  ),
                                ],
                              ),
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

  late final DoctorShowChildRecordCubit _doctorShowChildRecordCubit;
}
