import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:our_flutter_clinic_app/features/home/model/clinic_model.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/custom_drop_down_widget.dart';

import '../../../../../core/utils/utils.dart';

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
                child: CustomElevatedButton(
                  title: 'Add',
                  onTap: () {
                    if (!_formKey.currentState!.validate()) {}
                  },
                  fillColor: Theme.of(context).colorScheme.primary,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final _analysisNameController = TextEditingController();
  final _analysisDescriptionController = TextEditingController();
  final _patientNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
}
