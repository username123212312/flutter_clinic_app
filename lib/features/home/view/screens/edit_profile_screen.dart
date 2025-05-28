import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/core/widgets/blood_types_widget.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/blocs/auth_bloc/auth_bloc.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return _buildFormFields(state);
              },
            ),
            _buildBloodTypes(),
            SizedBox(
              width: screenWidth(context),
              child: BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  return CustomElevatedButton(
                    fontSize: 16,
                    title: 'Save',
                    onTap:
                        state.status.isLoading
                            ? null
                            : () {
                              context.read<UserBloc>().add(
                                UserModifiedProfileData(
                                  user: UserModel(
                                    firstName: checkEmptiness(
                                      _firstNameController.text,
                                    ),
                                    lastName: checkEmptiness(
                                      _lastNameController.text,
                                    ),
                                    email: checkEmptiness(
                                      _emailController.text,
                                    ),
                                    phone: checkEmptiness(
                                      _phoneController.text,
                                    ),
                                    gender: checkEmptiness(
                                      _genderController.text,
                                    ),
                                    age: int.tryParse(
                                      checkEmptiness(_ageController.text) ??
                                          '0',
                                    ),
                                    address: checkEmptiness(
                                      _completeAddressController.text,
                                    ),
                                    bloodType:
                                        AppConstants
                                            .bloodTypes[_selectedBloodType],
                                  ),
                                ),
                              );
                            },
                    fillColor: Theme.of(context).colorScheme.primary,
                    textColor: Colors.white,
                  );
                },
              ),
            ),
            BlocListener<UserBloc, UserState>(
              listenWhen: (previous, current) {
                return previous.status.isLoading && current.status.isModified;
              },
              listener: (context, state) {
                if (!state.status.isError) {
                  context.pop();
                }
              },
              child: SizedBox(height: 20),
            ),
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
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return BloodTypesWidget(
                selectedBloodType: AppConstants.bloodTypes.indexOf(
                  state.authUser?.user?.bloodType ?? 'A+',
                ),
                onSelected: (bloodType) {
                  _selectedBloodType = bloodType;
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Column _buildFormFields(AuthState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          'First name',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),
        CustomTextField(
          controller: _firstNameController,
          hintText: state.authUser?.user?.firstName ?? 'No',
          keyboardType: TextInputType.text,
        ),
        SizedBox(height: 20),
        Text(
          'Last Name',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),
        CustomTextField(
          controller: _lastNameController,
          hintText: state.authUser?.user?.lastName ?? 'User',
          keyboardType: TextInputType.text,
        ),
        SizedBox(height: 20),

        Text(
          'Email',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),
        CustomTextField(
          controller: _emailController,
          hintText:
              (state.authUser?.user?.email == null)
                  ? '+963X-XXXX-XXXX'
                  : state.authUser?.user?.email ?? 'No Email',
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 20),

        Text(
          'Phone Number',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),
        CustomTextField(
          controller: _phoneController,
          hintText:
              (state.authUser?.user?.phone == null)
                  ? '+963X-XXXX-XXXX'
                  : state.authUser?.user?.phone ?? 'No phone',
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: 20),
        Text(
          'Gender',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),

        CustomTextField(
          controller:
              _genderController..text = (state.authUser?.user?.gender ?? ''),
          readOnly: true,
          suffixIcon: DropdownButton<int>(
            value:
                (state.authUser?.user?.gender == null)
                    ? (state.authUser?.user?.gender ?? 'Male') == 'Male'
                        ? 0
                        : 1
                    : 0,
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
        Text(
          'Age',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),
        CustomTextField(
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              firstDate: DateTime(1920),
              lastDate: DateTime.now(),
            );
            if (date != null) {
              setState(() {
                _ageController.text = calculateAge(date).toString();
              });
            }
          },
          controller:
              _ageController
                ..text = state.authUser?.user?.age?.toString() ?? '',
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
        Text(
          'Complete Address',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),
        CustomTextField(
          validator: (value) {
            if (value!.trim().isEmpty) {
              return 'Address should not be empty';
            } else {
              return null;
            }
          },
          maxLength: 100,
          controller:
              _completeAddressController
                ..text = state.authUser?.user?.address ?? '',
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
