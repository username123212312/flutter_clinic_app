import 'dart:developer';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/features/home/controller/select_vaccination_cubit/select_vaccination_cubit.dart';
import 'package:our_flutter_clinic_app/features/home/model/vaccinationrecord.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
    super.initState();
    context.read<SelectVaccinationCubit>().fetchVaccines();
  }

  @override
  void dispose() {
    context.read<SelectVaccinationCubit>().reset();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        iconTheme: IconThemeData(size: 26),
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
                  showToast(msg: state.message);
                }
              },
              builder: (context, state) {
                if (state.vaccines.isEmpty) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      context.read<SelectVaccinationCubit>().fetchVaccines();
                    },
                    child: SingleChildScrollView(
                      child:
                          state.status.isLoading
                              ? Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(),
                                ),
                              )
                              : Center(
                                child: Image.asset(
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
                      context.read<SelectVaccinationCubit>().fetchVaccines();
                    },
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      itemCount:
                          state.status.isLoading ? 10 : state.vaccines.length,
                      itemExtent: screenHeight(context) * 0.14,
                      itemBuilder: (_, index) {
                        if (state.status.isLoading) {
                          return _buildLoadingItem(context);
                        }
                        final vac = state.vaccines[index];

                        return Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Pallete.grayScaleColor300,
                              borderRadius: BorderRadius.circular(12),
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
                                    width: 90,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(FontAwesomeIcons.info),
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
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.labelMedium,
                                      ),
                                    ),
                                    Text(
                                      (vac.recommended ?? VaccintaionType.now)
                                          .name,
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.labelMedium,
                                    ),
                                    Text(
                                      '\$ ${vac.price ?? '00.00'}',
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.labelMedium,
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
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Pallete.grayScaleColor500,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    alignment: Alignment.center,
                                    child: Checkbox(
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
          color: Pallete.grayScaleColor300,
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
                  color: Pallete.primaryColor,
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
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Pallete.grayScaleColor500,
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
}
