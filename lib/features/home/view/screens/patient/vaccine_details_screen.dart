import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';

import '../../../../../core/navigation/navigation_exports.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../controller/vaccine_details_cubit/vaccine_details_cubit.dart';
import '../../../model/vaccinationrecord.dart';

class VaccineDetailsScreen extends StatefulWidget {
  final VaccinationRecord vaccine;
  const VaccineDetailsScreen({super.key, required this.vaccine});

  @override
  State<VaccineDetailsScreen> createState() => _VaccineDetailsScreenState();
}

class _VaccineDetailsScreenState extends State<VaccineDetailsScreen> {
  @override
  void initState() {
    super.initState();
    _vaccineDetailsCubit = VaccineDetailsCubit(vaccine: widget.vaccine);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _vaccineDetailsCubit.fetchVaccineDetails();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: RefreshIndicator(
        onRefresh: () async {
          _vaccineDetailsCubit.fetchVaccineDetails();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      'assets/images/covid-still-life-with-vaccine.jpg',
                      width: double.infinity,
                      height: screenHeight(context) * 0.35,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Pallete.grayScaleColor0,
                        shape: BoxShape.circle,
                      ),
                      child: BackButton(
                        color: Pallete.black1,
                        onPressed: () {
                          context.pop();
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Transform.translate(
                offset: const Offset(0, -20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                    color: Pallete.grayScaleColor0,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: BlocConsumer<
                        VaccineDetailsCubit,
                        VaccineDetailsState
                      >(
                        bloc: _vaccineDetailsCubit,
                        listener: (context, state) {
                          if (state.status.isLoading) {
                            LoadingOverlay().show(context);
                          } else {
                            LoadingOverlay().hideAll();
                            if (state.status.isError) {
                              Fluttertoast.showToast(msg: state.message);
                            }
                          }
                        },
                        builder: (context, state) {
                          final vac = state.vaccine;
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildField(
                                context,
                                'Vaccine Name',
                                vac.vaccineName ?? 'No name',
                              ),
                              _buildField(
                                context,
                                'Description',
                                vac.whenToTake ?? 'No take',
                              ),
                              _buildField(context, 'Age Group', 'Newborns'),
                              _buildField(
                                context,
                                'Recommended Doses',
                                (vac.vaccineRecommendedDoses ?? 0).toString(),
                              ),
                              _buildField(
                                context,
                                'Vaccine Price',
                                '\$${vac.price}',
                              ),

                              if (vac.appointmentId != null) ...[
                                _buildField(
                                  context,
                                  'Appointment Payment Status',
                                  vac.appointmentPaymentStatus == null
                                      ? 'undecided'
                                      : vac.appointmentPaymentStatus!.name,
                                ),
                                _buildField(
                                  context,
                                  'Reservation Date',
                                  '2025-07-25',
                                ),

                                _buildField(
                                  context,
                                  'Doctor Name',
                                  'Dr. John Doe',
                                ),
                              ],

                              _buildField(context, 'Dose Number', '1st Dose'),
                              Text(
                                'Notes',
                                style: Theme.of(
                                  context,
                                ).textTheme.labelMedium!.copyWith(
                                  fontSize: 14,
                                  color: Pallete.black1,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Pallete.grayScaleColor200,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  vac.notes ?? 'No notes',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodyMedium!.copyWith(
                                    fontSize: 14,
                                    color: Pallete.black1,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              _buildField(
                                context,
                                'Is Taken',
                                (vac.isTaken ?? 0) == 0 ? 'No' : 'Yes',
                              ),
                              _buildField(
                                context,
                                'When to Take',
                                vac.whenToTake ?? 'Nothing',
                              ),
                              _buildField(
                                context,
                                'Recommended',
                                (vac.recommended ?? VaccintaionType.upcoming)
                                    .name,
                              ),
                              _buildField(
                                context,
                                'Next Vaccine Date',
                                vac.nextVaccineDate.toString(),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildField(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontSize: 14,
              color: Pallete.black1,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 13,
              color: Pallete.black1,
            ),
          ),
        ],
      ),
    );
  }

  late VaccineDetailsCubit _vaccineDetailsCubit;
}
