import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_constants.dart';

import '../../../../../core/theme/app_pallete.dart';
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

  final Map<String, dynamic> visitDetails = const {
    "last_visit_date": "2025-07-19",
    "next_visit_date": "2025-09-19",
    "height_cm": 50.5,
    "weight_kg": 5.5,
    "head_circumference_cm": 1.5,
    "growth_notes": "Child is growing well. Keep monitoring diet.",
    "developmental_observations": "Motor skills improving. Speech in progress.",
    "allergies": "sugar",
    "doctor_notes": "Follow up after 2 months.",
    "feeding_type": "mixed",
  };

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
          BlocBuilder<DoctorShowChildRecordCubit, DoctorShowChildRecordState>(
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
                        : () {
                          context.pushNamed(
                            AppRouteConstants.doctorModifyChildRecordRouteName,
                            extra: state.record,
                          );
                        },
              );
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
          Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
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
                      visitDetails['last_visit_date'],
                    ),
                    _buildInfoRow(
                      context,
                      'Next Visit',
                      visitDetails['next_visit_date'],
                    ),
                    const SizedBox(height: 12),

                    _buildSectionTitle(context, 'Measurements'),
                    _buildInfoRow(
                      context,
                      'Height',
                      '${visitDetails['height_cm']} cm',
                    ),
                    _buildInfoRow(
                      context,
                      'Weight',
                      '${visitDetails['weight_kg']} kg',
                    ),
                    _buildInfoRow(
                      context,
                      'Head Circumference',
                      '${visitDetails['head_circumference_cm']} cm',
                    ),
                    const SizedBox(height: 12),

                    _buildSectionTitle(context, 'Health'),
                    _buildInfoRow(
                      context,
                      'Allergies',
                      visitDetails['allergies'],
                    ),
                    _buildInfoRow(
                      context,
                      'Feeding Type',
                      visitDetails['feeding_type'],
                    ),
                    const SizedBox(height: 12),

                    _buildSectionTitle(context, 'Doctor Notes'),
                    _noteContainer(context, visitDetails['doctor_notes']),

                    _buildSectionTitle(context, 'Growth Notes'),
                    _noteContainer(context, visitDetails['growth_notes']),

                    _buildSectionTitle(context, 'Developmental Observations'),
                    _noteContainer(
                      context,
                      visitDetails['developmental_observations'],
                    ),
                  ],
                ),
              ),
            ),
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
