import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../../../core/widgets/blood_types_widget.dart';
import '../../../../auth/view/widgets/custom_text_field.dart';

class AddChildScreen extends StatefulWidget {
  const AddChildScreen({super.key});

  @override
  State<AddChildScreen> createState() => _AddChildScreenState();
}

class _AddChildScreenState extends State<AddChildScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight(context) * 0.09,
        centerTitle: false,
        forceMaterialTransparency: true,
        title: Text(
          'Add new child',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontSize: 20,
            color: Pallete.grayScaleColor700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: MediaQuery.of(context).viewInsets.bottom * 0.2,
        ),
        child: Column(
          children: [
            Text(
              'First name',
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontSize: 12),
            ),
            SizedBox(height: 10),
            CustomTextField(
              controller: _firstNameController,
              hintText: 'First Name',
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20),
            Text(
              'Last name',
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontSize: 12),
            ),
            SizedBox(height: 10),
            CustomTextField(
              controller: _lastNameController,
              hintText: 'Last Name',
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20),
            Text(
              'Gender',
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontSize: 12),
            ),
            SizedBox(height: 10),
            CustomTextField(
              controller: _genderController..text = 'Male',
              readOnly: true,
              suffixIcon: DropdownButton<int>(
                value: _selectedGender,
                underline: Container(color: Colors.transparent),
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Pallete.grayScaleColor400,
                  size: 40,
                ),
                items: [
                  DropdownMenuItem(value: 0, child: Text('Male')),
                  DropdownMenuItem(value: 1, child: Text('Female')),
                ],
                onChanged: (index) {
                  setState(() {
                    _genderController.text = index == 0 ? 'Male' : 'Female';
                    _selectedGender = index!;
                  });
                },
              ),
              hintText: 'Gender',
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20),
            Text(
              'Age',
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontSize: 12),
            ),
            SizedBox(height: 10),
            CustomTextField(
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2016),
                  lastDate: DateTime.now(),
                  initialDate: DateTime.now(),
                );
                if (date != null) {
                  setState(() {
                    _ageController.text = calculateAge(date).toString();
                  });
                }
              },
              controller: _ageController,
              readOnly: true,
              hintText: 'Age',
              keyboardType: TextInputType.number,
              suffixIcon: Transform.scale(
                scaleY: 0.7,
                scaleX: 0.7,
                child: Image.asset(
                  'assets/icons/ic_calendar.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            _buildBloodTypes(),
          ],
        ),
      ),
    );
  }

  Column _buildBloodTypes() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Medical Data',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 20),
        ),
        SizedBox(height: 20),
        Text(
          'Blood Type (optional)',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),

        SizedBox(
          height: screenHeight(context) * 0.2,
          child: BloodTypesWidget(
            selectedBloodType: _selectedBloodType,
            onSelected: (bloodType) {
              _selectedBloodType = bloodType;
            },
          ),
        ),
      ],
    );
  }

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _genderController = TextEditingController();
  final _ageController = TextEditingController();
  int _selectedBloodType = 0;
  int _selectedGender = 0;
}
