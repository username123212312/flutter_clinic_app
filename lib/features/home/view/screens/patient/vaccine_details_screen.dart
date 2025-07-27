import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/home/controller/select_vaccination_cubit/select_vaccination_cubit.dart';

import '../../../../../core/navigation/navigation_exports.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../../../core/widgets/custom_dialog.dart';
import '../../../../../core/widgets/transparent_content_dialog.dart';
import '../../../../auth/view/widgets/custom_elevated_button.dart';
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
    final vaccineCubit = context.read<SelectVaccinationCubit>();
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildField(
                                    context,
                                    'Vaccine Name',
                                    vac.vaccineName ?? 'No name',
                                  ),
                                  BlocBuilder<
                                    SelectVaccinationCubit,
                                    SelectVaccinationState
                                  >(
                                    builder: (context, state) {
                                      return IconButton(
                                        tooltip: 'Select Vaccine',
                                        onPressed: () {
                                          if ((state.selectedVaccine?.id ??
                                                  -1) ==
                                              widget.vaccine.id) {
                                            vaccineCubit.reset(true);
                                          } else {
                                            vaccineCubit.chooseVaccine(
                                              widget.vaccine,
                                            );
                                          }
                                        },
                                        icon: Icon(
                                          (state.selectedVaccine?.id ?? -1) ==
                                                  widget.vaccine.id
                                              ? Icons.done
                                              : Icons.add,
                                        ),
                                      );
                                    },
                                  ),
                                ],
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildField(
                                    context,
                                    'Is Taken',
                                    (vac.isTaken ?? 0) == 0 ? 'No' : 'Yes',
                                  ),
                                  IconButton(
                                    tooltip: 'change',
                                    iconSize: 20,
                                    onPressed: () {
                                      _showTDialog(vac, true);
                                    },
                                    icon: Icon(FontAwesomeIcons.arrowsRotate),
                                  ),
                                ],
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
                                vac.nextVaccineDate == null
                                    ? 'No date'
                                    : vac.nextVaccineDate.toString(),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Pallete.alertDangerColor,
                                  foregroundColor: Colors.white,
                                  fixedSize: Size(
                                    screenWidth(context),
                                    screenHeight(context) * 0.07,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                onPressed: () async {
                                  await _showTDialog(widget.vaccine);
                                },
                                child: Text(
                                  'Delete',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.labelMedium!.copyWith(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
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
      floatingActionButton:
          BlocBuilder<SelectVaccinationCubit, SelectVaccinationState>(
            builder: (context, state) {
              return Visibility(
                visible: (state.selectedVaccine?.id ?? -1) == widget.vaccine.id,
                child: FloatingActionButton(
                  onPressed: () {
                    context.pushNamed(
                      AppRouteConstants.bookNewAppointmentRouteName,
                    );
                  },
                  child: Icon(FontAwesomeIcons.arrowRight),
                ),
              );
            },
          ),
    );
  }

  Future<dynamic> _showTDialog(
    VaccinationRecord vaccine, [
    bool isStatus = false,
  ]) {
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
                if (isStatus)
                  BlocBuilder<VaccineDetailsCubit, VaccineDetailsState>(
                    bloc: _vaccineDetailsCubit,
                    builder: (context, state) {
                      return Text(
                        'Mark as ${(state.vaccine.isTaken ?? -1) == 1 ? 'Not Taken' : 'Taken'}',
                        style: Theme.of(context).textTheme.labelMedium!
                            .copyWith(color: Colors.black, fontSize: 15),
                      );
                    },
                  ),
                if (!isStatus)
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
                      child: BlocBuilder<
                        SelectVaccinationCubit,
                        SelectVaccinationState
                      >(
                        builder: (context, state) {
                          return state.status.isLoading
                              ? FittedBox(child: CircularProgressIndicator())
                              : CustomElevatedButton(
                                fontSize: 12,
                                title: 'Yes',
                                onTap: () async {
                                  if (isStatus) {
                                    context
                                        .read<SelectVaccinationCubit>()
                                        .editVaccine(vaccine);
                                  } else {
                                    context
                                        .read<SelectVaccinationCubit>()
                                        .removeVaccine(vaccine);
                                  }
                                  bool isDone = false;
                                  await for (final newState
                                      in context
                                          .read<SelectVaccinationCubit>()
                                          .stream) {
                                    if (!newState.status.isLoading) {
                                      isDone = newState.status.isDone;
                                      break;
                                    }
                                  }
                                  if (isDone) {
                                    if (isStatus) {
                                      _vaccineDetailsCubit
                                          .fetchVaccineDetails();
                                    } else {
                                      context.pop();
                                    }
                                  }
                                  context
                                      .read<SelectVaccinationCubit>()
                                      .fetchVaccines();

                                  context.pop();
                                },
                                fillColor:
                                    Theme.of(context).colorScheme.primary,
                                textColor: Colors.white,
                              );
                        },
                      ),
                    ),
                  ],
                ),
              ],
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
