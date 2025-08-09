import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/features/home/controller/doctor_all_vaccines_cubit/doctor_all_vaccines_cubit.dart';
import 'package:our_flutter_clinic_app/features/home/model/vaccinationrecord.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/theme/app_pallete.dart';

class ShowVaccinesScreen extends StatefulWidget {
  const ShowVaccinesScreen({super.key});

  @override
  State<ShowVaccinesScreen> createState() => _ShowVaccinesScreenState();
}

class _ShowVaccinesScreenState extends State<ShowVaccinesScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _doctorAllVaccinesCubit.fetchAllVaccines();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
          child: BlocConsumer<DoctorAllVaccinesCubit, DoctorAllVaccinesState>(
            bloc: _doctorAllVaccinesCubit,
            listener: (context, state) {
              if (state.status.isError) {
                showToast(msg: state.message);
              }
            },
            builder: (context, state) {
              if (!state.status.isLoading && state.vaccines.isEmpty) {
                return RefreshIndicator(
                  onRefresh: () async {
                    _doctorAllVaccinesCubit.fetchAllVaccines();
                  },
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    child: Center(
                      heightFactor: 4,
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
                    _doctorAllVaccinesCubit.fetchAllVaccines();
                  },
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 1.0,
                        ),
                    itemCount:
                        state.status.isLoading ? 10 : state.vaccines.length,
                    itemBuilder: (context, index) {
                      if (state.status.isLoading) {
                        return _buildLoading();
                      }
                      final vaccine = state.vaccines[index];
                      return GestureDetector(
                        onTap: () => _showDetailsDialog(context, vaccine),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Pallete.grayScaleColor0,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Pallete.grayScaleColor300,
                            ),
                          ),
                          padding: const EdgeInsets.all(20),
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                vaccine.name ?? 'No name',
                                style: Theme.of(
                                  context,
                                ).textTheme.titleMedium!.copyWith(
                                  color: Pallete.primaryColor,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 5),

                              RichText(
                                text: TextSpan(
                                  text: 'Doses: ',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.labelMedium!.copyWith(
                                    color: Pallete.black1,
                                    fontSize: 12,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          '${vaccine.recommendedDoses ?? 'No data'}',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.labelSmall!.copyWith(
                                        color: Pallete.black1,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Price: ',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.labelMedium!.copyWith(
                                    color: Pallete.black1,
                                    fontSize: 12,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '\$${vaccine.price ?? 0.0}',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.labelSmall!.copyWith(
                                        color: Pallete.black1,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
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
    );
  }

  Container _buildLoading() {
    return Container(
      decoration: BoxDecoration(
        color: Pallete.grayScaleColor0,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Pallete.grayScaleColor300),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'kasokdas',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Pallete.primaryColor,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 5),

          Text(
            "Description:",
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Pallete.black1,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 6),

          Container(
            width: double.infinity,
            height: 35,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Pallete.buttonBG,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              'amsoijdfasuihdihasd',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Pallete.black1,
                fontSize: 11,
              ),

              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 5),

          RichText(
            text: TextSpan(
              text: 'Age: ',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Pallete.black1,
                fontSize: 12,
              ),
              children: [
                TextSpan(
                  text: 'asdjasdasda',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: Pallete.black1,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),

          RichText(
            text: TextSpan(
              text: 'Doses: ',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Pallete.black1,
                fontSize: 12,
              ),
              children: [
                TextSpan(
                  text: 'k',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: Pallete.black1,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Price: ',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Pallete.black1,
                fontSize: 12,
              ),
              children: [
                TextSpan(
                  text: 'asasd',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: Pallete.black1,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showDetailsDialog(BuildContext context, VaccinationRecord vaccine) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Pallete.grayScaleColor0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Text(
            vaccine.name ?? 'No name',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Pallete.primaryColor,
              fontSize: 16,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDetailRow(
                'Dose Number',
                '${vaccine.recommendedDoses ?? ''}',
              ),
              _buildDetailRow('Description', vaccine.description ?? ''),
              _buildDetailRow('Age group', vaccine.ageGroup ?? ''),
              _buildDetailRow('Price', '\$ ${vaccine.price}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'Close',
                style: TextStyle(color: Pallete.primaryColor),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,

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

  final _doctorAllVaccinesCubit = DoctorAllVaccinesCubit();
}
