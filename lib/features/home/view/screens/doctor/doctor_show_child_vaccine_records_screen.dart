import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/features/home/model/vaccinationrecord.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:toastification/toastification.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../controller/doctor_show_child_vaccine_records_cubit/doctor_show_child_vaccine_records_cubit.dart';
import '../../../repository/doctor_child_vaccination_record_repository.dart';

class DoctorShowChildVaccineRecordsScreen extends StatefulWidget {
  const DoctorShowChildVaccineRecordsScreen({super.key, required this.child});
  final UserModel child;

  @override
  State<DoctorShowChildVaccineRecordsScreen> createState() =>
      _DoctorShowChildVaccineRecordsScreenState();
}

class _DoctorShowChildVaccineRecordsScreenState
    extends State<DoctorShowChildVaccineRecordsScreen> {
  @override
  void initState() {
    _doctorShowChildVaccineRecordsCubit = DoctorShowChildVaccineRecordsCubit(
      child: widget.child,
      doctorChildVaccinationRecordRepository:
          DoctorChildVaccinationRecordRepository(),
    );

    _scrollController.addListener(_onScroll);

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _doctorShowChildVaccineRecordsCubit.fetchAllVacRecords(true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(size: 18),
        centerTitle: false,
        scrolledUnderElevation: 0,
        title: Text(
          'Child Vaccine Records',
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
          Padding(
            padding: const EdgeInsets.all(16),
            child: BlocConsumer<
              DoctorShowChildVaccineRecordsCubit,
              DoctorShowChildVaccineRecordsState
            >(
              bloc: _doctorShowChildVaccineRecordsCubit,
              listener: (context, state) {
                if (state.status.isError) {
                  showToast(
                    context: context,
                    msg: state.message,
                    type: ToastificationType.error,
                  );
                }
              },
              builder: (context, state) {
                if (state.vaccinesRecords.isEmpty && !state.status.isLoading) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      _doctorShowChildVaccineRecordsCubit.fetchAllVacRecords(
                        true,
                      );
                    },
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Center(
                        heightFactor: 4.5,
                        child: Image.asset(
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                          'assets/images/il_empty_activity.webp',
                        ),
                      ),
                    ),
                  );
                }
                return Skeletonizer(
                  enabled: state.status.isLoading,
                  child: RefreshIndicator(
                    onRefresh: () async {
                      _doctorShowChildVaccineRecordsCubit.fetchAllVacRecords(
                        true,
                      );
                    },
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      controller: _scrollController,
                      itemCount:
                          state.status.isLoading
                              ? 10
                              : state.status.isLoadingMore
                              ? state.vaccinesRecords.length + 2
                              : state.vaccinesRecords.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: 0.95,
                          ),
                      itemBuilder: (context, index) {
                        if (index >= state.vaccinesRecords.length &&
                            state.status.isLoadingMore) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        }
                        if (state.status.isLoading) {
                          return _buildLoading();
                        }
                        final record = state.vaccinesRecords[index];
                        return GestureDetector(
                          onTap: () => _showDetailsDialog(context, record),
                          child: Container(
                            padding: const EdgeInsets.all(13),
                            decoration: BoxDecoration(
                              color: Pallete.grayScaleColor0,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Pallete.grayScaleColor300,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildField(
                                  context,
                                  'Dose Number',
                                  record.doseNumber,
                                ),

                                _buildField(
                                  context,
                                  'Taken:',
                                  record.isTaken == 1 ? 'Taken' : 'Not taken',
                                ),
                                _buildField(
                                  context,
                                  'When:',
                                  record.whenToTake ?? '-',
                                ),
                                _buildField(
                                  context,
                                  'Recommended:',
                                  record.recommended == null
                                      ? 'no data'
                                      : record.recommended!.name,
                                ),
                                _buildField(
                                  context,
                                  'Next Date:',
                                  record.nextVaccineDate == null
                                      ? 'no date'
                                      : DateFormat(
                                        'yyyy-MM-dd',
                                      ).format(record.nextVaccineDate!),
                                ),
                                _buildField(
                                  context,
                                  'Notes:',
                                  record.notes ?? 'No notes',
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
            ),
          ),
        ],
      ),
    );
  }

  Container _buildLoading() {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: Pallete.grayScaleColor0,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Pallete.grayScaleColor300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildField(context, 'Dose Number', 'amskdaskdd'),

          _buildField(context, 'Taken:', 'amskdaskdd'),
          _buildField(context, 'When:', 'amskdaskdd'),
          _buildField(context, 'Recommended:', 'amskdaskdd'),
          _buildField(context, 'Next Date:', 'amskdaskdd'),
          _buildField(context, 'Notes:', 'amskdaskdd'),
        ],
      ),
    );
  }

  Widget _buildField(BuildContext context, String label, dynamic value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: RichText(
        text: TextSpan(
          text: '$label ',
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: Pallete.black1,
            fontSize: 12,
          ),
          children: [
            TextSpan(
              text: '${value ?? "-"}',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Pallete.grayScaleColor500,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showDetailsDialog(BuildContext context, VaccinationRecord record) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: Pallete.grayScaleColor0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),

            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDetailRow('Dose Number', '${record.doseNumber}'),
                  _buildDetailRow('When to Take', record.whenToTake ?? ''),
                  _buildDetailRow(
                    'Recommended',
                    (record.recommended == null)
                        ? ''
                        : record.recommended!.name,
                  ),
                  _buildDetailRow(
                    'Next Vaccine Date',
                    record.nextVaccineDate == null
                        ? ''
                        : DateFormat(
                          'yyyy-MM-dd',
                        ).format(record.nextVaccineDate!),
                  ),
                  _buildDetailRow('Notes', record.notes ?? 'No notes'),
                  _buildDetailRow('Taken', record.isTaken == 1 ? 'Yes' : 'No'),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () async {
                  final isModified = await context.pushNamed<bool>(
                    AppRouteConstants.doctorChildEditVacRecordRouteName,
                    extra: record,
                  );
                  if (isModified != null) {
                    if (isModified) {
                      _doctorShowChildVaccineRecordsCubit.fetchAllVacRecords(
                        true,
                      );
                      if (context.mounted) {
                        context.pop();
                      }
                    }
                  }
                },
                child: const Text(
                  'Edit',
                  style: TextStyle(color: Pallete.primaryColor),
                ),
              ),
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text(
                  'Close',
                  style: TextStyle(color: Pallete.primaryColor),
                ),
              ),
            ],
          ),
    );
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      if (!_doctorShowChildVaccineRecordsCubit.state.status.isLoading &&
          !_doctorShowChildVaccineRecordsCubit.state.status.isLoadingMore) {
        _doctorShowChildVaccineRecordsCubit.fetchAllVacRecords();
      }
    }
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label: ',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Pallete.black1,
              fontSize: 14,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Pallete.black1,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  final _scrollController = ScrollController();
  late final DoctorShowChildVaccineRecordsCubit
  _doctorShowChildVaccineRecordsCubit;
}
