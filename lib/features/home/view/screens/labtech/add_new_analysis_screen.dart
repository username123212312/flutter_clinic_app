import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/core/widgets/transparent_content_dialog.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:our_flutter_clinic_app/features/home/controller/labtech_analysis_bloc/labtech_analysis_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/model/clinic_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/requests/add_analysis_request.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/custom_drop_down_widget.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/widgets.dart';

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
    LoadingOverlay().hideAll();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              CustomDropDownWidget<ClinicModel>(
                onSelected: (option, value) {},
                initialOption: 'Choose Clinic',
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

              SizedBox(height: screenHeight(context) * 0.13),
              SizedBox(
                width: screenWidth(context),
                child: BlocListener<LabtechAnalysisBloc, LabtechAnalysisState>(
                  listener: (context, state) {
                    if (state.status.isLoading) {
                      LoadingOverlay().show(context);
                    } else {
                      LoadingOverlay().hideAll();
                      if (state.status.isError) {
                        clearAndShowSnackBar(context, state.message);
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
                      if (_formKey.currentState!.validate()) {
                        context.read<LabtechAnalysisBloc>().add(
                          AnalysisAdded(
                            request: AddAnalysisRequest(
                              name: _analysisNameController.text,
                              clinicId: 1,
                              description: _analysisDescriptionController.text,
                              patientNumber: int.tryParse(
                                _patientNumberController.text,
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
  final _patientNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
}
