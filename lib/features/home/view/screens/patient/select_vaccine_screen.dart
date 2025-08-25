import 'dart:developer';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/features/home/controller/select_vaccination_cubit/select_vaccination_cubit.dart';
import 'package:our_flutter_clinic_app/features/home/model/vaccinationrecord.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:toastification/toastification.dart';

import '../../../../../core/enums.dart';
import '../../../../../core/theme/app_pallete.dart';

class SelectVaccineScreen extends StatefulWidget {
  const SelectVaccineScreen({super.key});

  @override
  State<SelectVaccineScreen> createState() => _SelectVaccineScreenState();
}

class _SelectVaccineScreenState extends State<SelectVaccineScreen> {
  @override
  void initState() {
    context.read<SelectVaccinationCubit>().fetchVaccines(true);
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    context.read<SelectVaccinationCubit>().reset();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Pallete.black1,
            size: 18,
          ),
        ),
        title: Text(
          'Select Vaccination',
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 18),
        ),
        actions: [
          BlocBuilder<SelectVaccinationCubit, SelectVaccinationState>(
            builder: (context, state) {
              return IconButton(
                iconSize: 26,
                onPressed:
                    state.selectedVaccine == null
                        ? null
                        : () {
                          context.pop<VaccinationRecord>(state.selectedVaccine);
                        },
                icon: Icon(Icons.done),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: BlocBuilder<SelectVaccinationCubit, SelectVaccinationState>(
              builder: (context, state) {
                return DropdownButton<VaccintaionType>(
                  alignment: Alignment.center,
                  iconEnabledColor: Colors.black,
                  dropdownColor: Pallete.grayScaleColor0,
                  value: state.type,
                  items:
                      VaccintaionType.values.map((t) {
                        return DropdownMenuItem<VaccintaionType>(
                          value: t,
                          child: Text(t.name),
                        );
                      }).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      context.read<SelectVaccinationCubit>().changeFilter(
                        value,
                      );
                    }
                  },
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: BlocConsumer<SelectVaccinationCubit, SelectVaccinationState>(
              listener: (context, state) {
                if (state.status.isError) {
                  showToast(
                    context: context,
                    type: ToastificationType.error,
                    msg: state.message,
                  );
                }
              },
              builder: (context, state) {
                if (state.vaccines.isEmpty && !state.status.isLoading) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      context.read<SelectVaccinationCubit>().fetchVaccines(
                        true,
                      );
                    },
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Center(
                        heightFactor: 4.5,
                        child: Image.asset(
                          width: 130,
                          height: 130,
                          fit: BoxFit.cover,
                          'assets/images/il_empty_activity.webp',
                        ),
                      ),
                    ),
                  );
                }
                return Skeletonizer(
                  enabled: state.status.isLoading,
                  effect: SoldColorEffect(color: Pallete.grayScaleColor300),
                  child: RefreshIndicator(
                    onRefresh: () async {
                      context.read<SelectVaccinationCubit>().fetchVaccines(
                        true,
                      );
                    },
                    child: ListView.builder(
                      controller: _scrollController,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      itemCount:
                          state.status.isLoading
                              ? 10
                              : state.status.isLoadingMore
                              ? state.vaccines.length + 1
                              : state.vaccines.length,
                      itemExtent: screenHeight(context) * 0.14,
                      itemBuilder: (_, index) {
                        if (state.status.isLoadingMore &&
                            index == state.vaccines.length) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        }
                        if (state.status.isLoading) {
                          return _buildLoadingItem(context);
                        }
                        final vac = state.vaccines[index];

                        return Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Pallete.grayScaleColor0,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Pallete.grayScaleColor200,
                                width: 2,
                              ),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              spacing: 10,
                              children: [
                                InkWell(
                                  borderRadius: BorderRadius.circular(12),
                                  onTap: () {
                                    context.pushNamed(
                                      AppRouteConstants.vaccineDetailsRouteName,
                                      extra: vac,
                                    );
                                  },
                                  child: Container(
                                    width: 80,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Pallete.grayScaleColor200,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      "assets/icons/inf_vaccine.png",
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: screenWidth(context) * 0.4,
                                      child: Text(
                                        overflow: TextOverflow.ellipsis,
                                        vac.vaccineName ?? 'No name',
                                        style: Theme.of(
                                          context,
                                        ).textTheme.labelMedium!.copyWith(
                                          fontSize: 14,
                                          color: Pallete.black1,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      (vac.recommended ?? VaccintaionType.now)
                                          .name,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.titleSmall!.copyWith(
                                        fontSize: 13,
                                        color: Pallete.gray2,
                                      ),
                                    ),
                                    Text(
                                      '\$ ${vac.price ?? '00.00'}',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.titleSmall!.copyWith(
                                        fontSize: 13,
                                        color: Pallete.gray2,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () {
                                    context
                                        .read<SelectVaccinationCubit>()
                                        .chooseVaccine(vac);
                                  },
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Pallete.primaryColor,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    alignment: Alignment.center,
                                    child: Checkbox(
                                      checkColor: Pallete.grayScaleColor0,
                                      value:
                                          state.selectedVaccine == null
                                              ? false
                                              : state.selectedVaccine?.id ==
                                                  vac.id,
                                      onChanged: null,
                                    ),
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
      ),
    );
  }

  Padding _buildLoadingItem(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Pallete.grayScaleColor200,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          spacing: 10,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {},
              child: Container(
                width: 90,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Pallete.grayScaleColor300,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Icon(FontAwesomeIcons.info),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('data', style: Theme.of(context).textTheme.labelMedium),
                Text('data', style: Theme.of(context).textTheme.labelMedium),
                Text('data', style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
            Spacer(),

            InkWell(
              onTap: () {},
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Pallete.grayScaleColor300,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Checkbox(value: false, onChanged: null),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onScroll() {
    final vacCubit = context.read<SelectVaccinationCubit>();
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      if (!vacCubit.state.status.isLoading &&
          !vacCubit.state.status.isLoadingMore) {
        vacCubit.fetchVaccines();
      }
    }
  }

  final _scrollController = ScrollController();
}
