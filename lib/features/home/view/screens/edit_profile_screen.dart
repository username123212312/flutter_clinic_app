import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/utils/utils.dart';
import 'package:flutter_clinic_app/core/widgets/blood_types_widget.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';

import '../../../../core/theme/app_pallete.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _genderController.dispose();
    _ageController.dispose();
    _completeAddressController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight(context) * 0.13,
        centerTitle: false,
        forceMaterialTransparency: true,
        title: Text(
          'Edit Profile',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFormFields(),
            _buildBloodTypes(),
            SizedBox(
              width: screenWidth(context),
              child: CustomElevatedButton(
                title: 'Save',
                onTap: () {
                  //TODO save profile
                },
                fillColor: Theme.of(context).colorScheme.primary,
                textColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
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
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontSize: 20),
        ),
        SizedBox(height: 10),
        Text(
          'Blood Type (optional)',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),

        SizedBox(
          height: screenHeight(context) * 0.23,
          child: BloodTypesWidget(
            onSelected: (bloodType) {
              _selectedBloodType = bloodType;
            },
          ),
        ),
      ],
    );
  }

  Column _buildFormFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          'First Name',
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),
        CustomTextField(
          controller: _firstNameController,
          hintText: 'John',
          keyboardType: TextInputType.text,
        ),
        SizedBox(height: 20),
        Text(
          'Last Name',
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),
        CustomTextField(
          controller: _lastNameController,
          hintText: 'John',
          keyboardType: TextInputType.text,
        ),
        SizedBox(height: 20),

        Text(
          'Email',
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),
        CustomTextField(
          controller: _emailController,
          hintText: 'jhon.doe@gmail.com',
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 20),

        Text(
          'Phone Number',
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),
        CustomTextField(
          controller: _phoneController,
          hintText: '+963X-XXXX-XXXX',
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: 20),
        Text(
          'Gender',
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),

        CustomTextField(
          controller: _genderController,
          readOnly: true,
          suffixIcon: DropdownButton(
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
              });
            },
          ),
          hintText: 'Gender',
          keyboardType: TextInputType.text,
        ),
        SizedBox(height: 20),
        BasicInfoWidget(
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              firstDate: DateTime(1920),
              lastDate: DateTime.now(),
            );
            if (date != null) {
              setState(() {
                // _ageController.text = calculateAge(date).toString();
              });
            }
          },
          controller: _ageController,
          readOnly: true,
          title: 'Age',
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
        BasicInfoWidget(
          validator: (value) {
            if (value!.trim().isEmpty) {
              return 'Address should not be empty';
            } else {
              return null;
            }
          },
          maxLength: 100,
          controller: _completeAddressController,
          title: 'Complete Address',
          hintText: 'Address',
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _genderController = TextEditingController();
  final _ageController = TextEditingController();
  final _completeAddressController = TextEditingController();
  int _selectedBloodType = 0;
}
