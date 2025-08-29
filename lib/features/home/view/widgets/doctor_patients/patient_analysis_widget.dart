import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:toastification/toastification.dart';

import '../../../../../core/enums.dart';
import '../../../../../core/models/usermodel.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../../../core/widgets/two_sellectable_widget.dart';
import '../../../controller/doctor_patient_analysis_bloc/doctor_patient_analysis_bloc.dart';
import '../../../model/analysis_model.dart';
import '../../../model/clinic_model.dart';
import '../../../repository/doctor_patient_analysis_repository.dart';
import '../analysis_item_widget.dart';
import '../custom_drop_down_widget.dart';

class PatientAnalysisWidget extends StatefulWidget {
  const PatientAnalysisWidget({super.key, required this.patient});
  final UserModel patient;

  @override
  State<PatientAnalysisWidget> createState() => _PatientAnalysisWidgetState();
}

class _PatientAnalysisWidgetState extends State<PatientAnalysisWidget> {
  @override
  void initState() {
    super.initState();
    _doctorPatientAnalysisBloc = DoctorPatientAnalysisBloc(
      doctorPatientAnalysisRepository: DoctorPatientAnalysisRepository(),
      patient: widget.patient,
    );
    _doctorPatientAnalysisBloc.add(AnalysisFetched(isRefresh: true));
    _doctorPatientAnalysisBloc.add(ClinicsFetched());

    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Pallete.backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 20),
          BlocBuilder<DoctorPatientAnalysisBloc, DoctorPatientAnalysisState>(
            bloc: _doctorPatientAnalysisBloc,
            builder: (context, state) {
              return Skeletonizer(
                effect: SoldColorEffect(color: Pallete.grayScaleColor300),
                enabled: state.clinicsStatus.isLoading,
                child: CustomDropDownWidget<ClinicModel>(
                  values: state.clinics,
                  initialOption: state.selectedClinic.name ?? '',
                  iniaialValue: state.selectedClinic,
                  options:
                      state.clinics.map((clinic) {
                        return clinic.name ?? 'No clinic';
                      }).toList(),
                  onSelected: (option, value) {
                    if (value != null) {
                      _doctorPatientAnalysisBloc.add(
                        ClinicChanged(clinic: value),
                      );
                    }
                  },
                ),
              );
            },
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: BlocBuilder<
              DoctorPatientAnalysisBloc,
              DoctorPatientAnalysisState
            >(
              bloc: _doctorPatientAnalysisBloc,
              builder: (context, state) {
                return DropdownButton<AnalysisStatus>(
                  dropdownColor: Pallete.grayScaleColor0,
                  value: state.analysisStatus,
                  items: [
                    DropdownMenuItem<AnalysisStatus>(
                      value: AnalysisStatus.pending,
                      child: Text('pending'),
                    ),
                    DropdownMenuItem<AnalysisStatus>(
                      value: AnalysisStatus.finished,
                      child: Text('finished'),
                    ),
                    if (state.selectedClinic.id != null)
                      DropdownMenuItem<AnalysisStatus>(
                        value: AnalysisStatus.all,
                        child: Text('clinic'),
                      ),
                  ],
                  onChanged: (status) {
                    if (status != null) {
                      _doctorPatientAnalysisBloc.add(
                        StatusChanged(analysisStatus: status),
                      );
                    }
                  },
                );
              },
            ),
          ),

          SizedBox(height: 20),
          Expanded(
            child: BlocConsumer<
              DoctorPatientAnalysisBloc,
              DoctorPatientAnalysisState
            >(
              bloc: _doctorPatientAnalysisBloc,
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
                if (state.analysisList.isEmpty && !state.status.isLoading) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      _doctorPatientAnalysisBloc.add(
                        AnalysisFetched(isRefresh: true),
                      );
                      if (state.selectedClinic.id == null) {
                        _doctorPatientAnalysisBloc.add(ClinicsFetched());
                      }
                    },
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 100),
                            Image.asset(
                              'assets/images/search.png',
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.2,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "No Analysis found",
                              style: Theme.of(
                                context,
                              ).textTheme.labelSmall!.copyWith(
                                color: Pallete.black1,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
                return Skeletonizer(
                  effect: SoldColorEffect(color: Pallete.grayScaleColor300),
                  enabled: state.status.isLoading,
                  child: RefreshIndicator(
                    onRefresh: () async {
                      _doctorPatientAnalysisBloc.add(
                        AnalysisFetched(isRefresh: true),
                      );
                      if (state.selectedClinic.id == null) {
                        _doctorPatientAnalysisBloc.add(ClinicsFetched());
                      }
                    },
                    child: ListView.builder(
                      physics: AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      controller: _scrollController,
                      itemCount:
                          state.status.isLoading
                              ? 10
                              : state.status.isLoadingMore
                              ? state.analysisList.length + 1
                              : state.analysisList.length,
                      itemExtent: screenHeight(context) * 0.12,
                      itemBuilder: (_, index) {
                        if (state.status.isLoadingMore &&
                            index == state.analysisList.length) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        }
                        if (state.status.isLoading) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: AnalysisItemWidget(
                              analysis: AnalysisModel(name: 'name'),
                            ),
                          );
                        }
                        final analysis = state.analysisList[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: AnalysisItemWidget(analysis: analysis),
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

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      if (!_doctorPatientAnalysisBloc.state.status.isLoading &&
          !_doctorPatientAnalysisBloc.state.status.isLoadingMore) {
        _doctorPatientAnalysisBloc.add(AnalysisFetched());
      }
    }
  }

  final _scrollController = ScrollController();
  int _currentIndex = 0;
  late final DoctorPatientAnalysisBloc _doctorPatientAnalysisBloc;
}
