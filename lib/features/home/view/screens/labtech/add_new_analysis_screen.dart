import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/core/widgets/transparent_content_dialog.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:our_flutter_clinic_app/features/home/controller/labtech_analysis_bloc/labtech_analysis_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/model/clinic_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/requests/add_analysis_request.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/custom_drop_down_widget.dart';
import 'package:toastification/toastification.dart';

import '../../../../../core/utils/decimal_input_formatter.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/widgets.dart';
import '../../../controller/labtect_new_analysis_cubit/labtech_new_analysis_cubit.dart';

class AddNewAnalysisScreen extends StatefulWidget {
  const AddNewAnalysisScreen({super.key});

  @override
  State<AddNewAnalysisScreen> createState() => _AddNewAnalysisScreenState();
}

class _AddNewAnalysisScreenState extends State<AddNewAnalysisScreen> {
  @override
  void dispose() {
    _analysisNameController.dispose();
    _analysisDescriptionController.dispose();
    _patientNumberController.dispose();
    _analysisPriceController.dispose();
    LoadingOverlay().hideAll();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _labtechNewAnalysisCubit.fetchAllClinics();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocBuilder<LabtechNewAnalysisCubit, LabtechNewAnalysisState>(
            bloc: _labtechNewAnalysisCubit,
            builder: (context, state) {
              return IconButton(
                onPressed:
                    state.status.isLoading
                        ? null
                        : () {
                          _labtechNewAnalysisCubit.fetchAllClinics();
                        },
                icon: Icon(Icons.refresh, size: 25),
              );
            },
          ),
        ],
        forceMaterialTransparency: true,
        toolbarHeight: screenHeight(context) * 0.11,
        title: Text('Add Analysis'),
        titleTextStyle: Theme.of(
          context,
        ).textTheme.titleMedium!.copyWith(fontSize: 25),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 20.0,
          right: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom * 0.3,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text(
                    'Patient number',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(fontSize: 18),
                  ),
                  CustomTextField(
                    controller: _patientNumberController,
                    formatters: [FilteringTextInputFormatter.digitsOnly],
                    validator: (value) {
                      if (!ValidatorUtil.validateNumbers(value)) {
                        return 'Enter a valid number';
                      } else {
                        return null;
                      }
                    },
                    hintText: 'Patient number',
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
              BlocConsumer<LabtechNewAnalysisCubit, LabtechNewAnalysisState>(
                bloc: _labtechNewAnalysisCubit,
                listener: (
                  BuildContext context,
                  LabtechNewAnalysisState state,
                ) {
                  if (state.status.isLoading) {
                    LoadingOverlay().show(context);
                  } else {
                    LoadingOverlay().hideAll();
                  }
                },
                builder: (context, state) {
                  return CustomDropDownWidget<ClinicModel>(
                    onSelected: (option, value) {
                      if (value != null) {
                        _labtechNewAnalysisCubit.selectClinic(value);
                        _selectedClinid = value.id;
                      }
                    },
                    initialOption:
                        state.selectedClinic?.name ?? 'Choose clinic',
                    options:
                        state.clinics.map((clinic) {
                          return clinic.name ?? '';
                        }).toList(),
                    values: state.clinics,
                    iniaialValue: state.selectedClinic,
                  );
                },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text(
                    'Analysis name',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(fontSize: 18),
                  ),
                  CustomTextField(
                    controller: _analysisNameController,
                    validator: (value) {
                      if (!ValidatorUtil.validateText(
                        value,
                        allowNumbers: true,
                      )) {
                        return 'Enter a valid name';
                      } else {
                        return null;
                      }
                    },
                    hintText: 'Analysis name',
                    keyboardType: TextInputType.text,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text(
                    'Analysis description',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(fontSize: 18),
                  ),
                  CustomTextField(
                    controller: _analysisDescriptionController,
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (!ValidatorUtil.validateText(
                        value,
                        allowNumbers: true,
                      )) {
                        return 'Enter a valid description';
                      } else {
                        return null;
                      }
                    },
                    hintText: 'Analysis description',
                    keyboardType: TextInputType.text,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text(
                    'Analysis price',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(fontSize: 18),
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    controller: _analysisPriceController,
                    textInputAction: TextInputAction.done,
                    inputFormatters: [
                      FilteringTextInputFormatter.singleLineFormatter,
                      DecimalInputFormatter(),
                    ],
                    validator: (value) {
                      if (ValidatorUtil.isEmpty(value)) {
                        return 'Enter a valid price';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      hintText: 'Analysis price',
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Pallete.grayBorderColor,
                      ),
                    ),

                    keyboardType: TextInputType.number,
                  ),
                ],
              ),

              SizedBox(height: screenHeight(context) * 0.05),
              SizedBox(
                width: screenWidth(context),
                child: BlocListener<LabtechAnalysisBloc, LabtechAnalysisState>(
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
                      if (state.status.isDone) {
                        TransparentDialog.show(
                          barrierDismissible: false,
                          context: context,
                          builder: _buildDialog,
                        );
                      }
                    }
                  },
                  child: CustomElevatedButton(
                    title: 'Add',
                    onTap: () {
                      if (_formKey.currentState!.validate() &&
                          _selectedClinid != null) {
                        context.read<LabtechAnalysisBloc>().add(
                          AnalysisAdded(
                            request: AddAnalysisRequest(
                              name: _analysisNameController.text,
                              clinicId: _selectedClinid,
                              description: _analysisDescriptionController.text,
                              patientNumber: int.tryParse(
                                _patientNumberController.text,
                              ),
                              price: double.parse(
                                _analysisPriceController.text,
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    fillColor: Theme.of(context).colorScheme.primary,
                    textColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  CustomDialog _buildDialog(BuildContext context) {
    return CustomDialog(
      content: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment(-0.2, 0.0),
              child: Lottie.asset(
                'assets/lottie/successfully_animation.json',
                fit: BoxFit.cover,
                width: screenWidth(context) * 0.25,
                height: screenHeight(context) * 0.17,
              ),
            ),
            Text(
              textAlign: TextAlign.center,

              'Analysis Added Successfully!',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 25),
            SizedBox(
              width: screenWidth(context) * 0.5,
              height: screenHeight(context) * 0.05,
              child: CustomElevatedButton(
                fontSize: 12,
                title: 'Back to Home',
                onTap: () {
                  context.pop();
                  context.read<LabtechAnalysisBloc>().add(AnalysisFetched());
                  context.goNamed(AppRouteConstants.labtechHomeRouteName);
                },
                fillColor: Theme.of(context).colorScheme.primary,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  final _analysisNameController = TextEditingController();
  final _analysisDescriptionController = TextEditingController();
  final _analysisPriceController = TextEditingController();
  final _patientNumberController = TextEditingController();
  final LabtechNewAnalysisCubit _labtechNewAnalysisCubit =
      LabtechNewAnalysisCubit();
  int? _selectedClinid;
  final _formKey = GlobalKey<FormState>();
}
