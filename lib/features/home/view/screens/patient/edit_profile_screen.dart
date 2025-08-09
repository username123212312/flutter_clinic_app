import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/core/widgets/blood_types_widget.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/core/widgets/transparent_content_dialog.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/blocs/auth_bloc/auth_bloc.dart';
import '../../../../../core/theme/app_pallete.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  void initState() {
    super.initState();
    _fetchProfile();
  }

  void _fetchProfile() async {
    final userBloc = context.read<UserBloc>();
    userBloc.add(ProfileFetched());
    bool isDone = false;
    await for (final newState in userBloc.stream) {
      if (!newState.status.isLoading) {
        if (newState.status.isModified) {
          isDone = true;
        }
        break;
      }
    }
    if (isDone) {
      _ageController.text = DateFormat(
        'dd/MM/yy',
      ).format(userBloc.state.user?.birthDate ?? DateTime.now());
      _discountPointsController.text =
          (userBloc.state.user?.discountPoints ?? 0).toString();
      _completeAddressController.text = userBloc.state.user?.address ?? '';
    }
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _genderController.dispose();
    _ageController.dispose();
    _completeAddressController.dispose();
    _discountPointsController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight(context) * 0.09,
        centerTitle: false,
        forceMaterialTransparency: true,
        actions: [
          IconButton(
            onPressed: () {
              _fetchProfile();
            },
            iconSize: 20,
            icon: Icon(FontAwesomeIcons.arrowsRotate),
          ),
        ],
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
            BlocConsumer<UserBloc, UserState>(
              builder: (context, state) {
                return _buildFormFields(state);
              },
              listener: (BuildContext context, UserState state) {
                if (state.status.isLoading) {
                  LoadingOverlay().show(context);
                } else {
                  LoadingOverlay().hideAll();
                  if (state.status.isError) {
                    showToast(msg: state.statusMessage);
                  }
                }
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
                                    birthDate: _selectedDate,
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
                return previous.status.isLoading && current.status.isDone;
              },
              listener: (context, state) {
                if (state.status.isError) {
                  showToast(msg: state.statusMessage);
                }
                if (state.status.isDone) {
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

  Column _buildFormFields(UserState state) {
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
          hintText: state.user?.firstName ?? 'No',
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
          hintText: state.user?.lastName ?? 'User',
          keyboardType: TextInputType.text,
        ),
        SizedBox(height: 20),
        if (state.currentChildId == null) ...[
          Text(
            'Email',
            style: Theme.of(
              context,
            ).textTheme.titleSmall!.copyWith(fontSize: 12),
          ),
          SizedBox(height: 10),
          CustomTextField(
            controller: _emailController,
            hintText:
                (state.user?.email == null)
                    ? '+963X-XXXX-XXXX'
                    : state.user?.email ?? 'No Email',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20),

          Text(
            'Phone Number',
            style: Theme.of(
              context,
            ).textTheme.titleSmall!.copyWith(fontSize: 12),
          ),
          SizedBox(height: 10),
          CustomTextField(
            controller: _phoneController,
            hintText:
                (state.user?.phone == null)
                    ? '+963X-XXXX-XXXX'
                    : state.user?.phone ?? 'No phone',
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 20),
        ],
        Text(
          'Gender',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),

        CustomTextField(
          controller: _genderController..text = (state.user?.gender ?? ''),
          readOnly: true,
          suffixIcon: DropdownButton<int>(
            value:
                (state.user?.gender == null)
                    ? (state.user?.gender ?? 'Male') == 'Male'
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
          'Birth Date',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12),
        ),
        SizedBox(height: 10),
        CustomTextField(
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              firstDate: DateTime(1920),
              lastDate:
                  state.currentChildId == null
                      ? DateTime(2016)
                      : DateTime.now(),
              initialDate:
                  state.currentChildId == null
                      ? DateTime(2015)
                      : DateTime.now(),
            );
            if (date != null) {
              setState(() {
                _selectedDate = date;
                _ageController.text = DateFormat('yyyy-dd-MM').format(date);
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
        if (state.currentChildId == null) ...[
          Text(
            'Discount Points',
            style: Theme.of(
              context,
            ).textTheme.titleSmall!.copyWith(fontSize: 12),
          ),
          SizedBox(height: 10),
          CustomTextField(
            onTap: _buildDiscountDialog,
            hintText: 'discount_points',
            keyboardType: TextInputType.text,
            readOnly: true,
            controller: _discountPointsController,
            suffixIcon: Icon(
              color: Theme.of(context).colorScheme.primary,
              FontAwesomeIcons.info,
            ),
          ),
          SizedBox(height: 10),

          Text(
            'Complete Address',
            style: Theme.of(
              context,
            ).textTheme.titleSmall!.copyWith(fontSize: 12),
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
                _completeAddressController..text = state.user?.address ?? '',
            hintText: 'Address',
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.done,
          ),
        ],
      ],
    );
  }

  void _buildDiscountDialog() {
    TransparentDialog.show(
      context: context,
      builder: (_) {
        return Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: screenWidth(context) * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    '💰 Discount Points System',
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium!.copyWith(fontSize: 18),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '✴ Earn Points:',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Text(
                  '+2 points per doctor’s appointment booked.',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 13),
                ),
                Text(
                  '✴ Redeem Discounts:',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Text(
                  '6+ pts → 5% off (6 pts used)',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 13),
                ),
                Text(
                  '10+ pts → 10% off (10 pts used)',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 13),
                ),
                Text(
                  '20+ pts → 20% off (20 pts used)',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 13),
                ),
                Text(
                  '30+ pts → 30% off (30 pts used)',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 13),
                ),
                Text(
                  'Example: Book 5 appointments → 10 pts → 10% discount!',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 13),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text('close'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  final _firstNameController = TextEditingController();
  DateTime? _selectedDate;
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _genderController = TextEditingController();
  final _ageController = TextEditingController();
  final _completeAddressController = TextEditingController();
  int _selectedBloodType = 0;

  final _discountPointsController = TextEditingController();
}
