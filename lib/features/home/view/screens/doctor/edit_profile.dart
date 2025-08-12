import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/widgets/custom_cached_network_image.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';

import '../../../../../core/blocs/user_bloc/user_bloc.dart';
import '../../../../../core/models/modify_doctor_info_request.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../../auth/view/widgets/custom_button.dart';
import '../../../../auth/view/widgets/custom_text_field.dart';
import '../../widgets/widget_doctor/bottom_sheets.dart';
import '../../widgets/widget_doctor/labeled_field.dart';
import '../../widgets/widget_doctor/profile_image_picker.dart';
import '../../widgets/widget_doctor/signature_image_picker.dart';

class DoctorEditProfile extends StatefulWidget {
  const DoctorEditProfile({super.key});

  @override
  State<DoctorEditProfile> createState() => _DoctorEditProfilePageState();
}

class _DoctorEditProfilePageState extends State<DoctorEditProfile> {
  int isEdited = 0;
  File? profileImage;
  File? signatureImage;
  final picker = ImagePicker();
  String? selectedBookingType;
  String? selectedStatus;
  double visitDurationValue = 30;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final specialityController = TextEditingController();
  final titleController = TextEditingController();
  final visitDurationController = TextEditingController();
  final visitFeeController = TextEditingController();
  final experienceController = TextEditingController();
  final statusController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final bookingTypeController = TextEditingController();

  @override
  initState() {
    super.initState();

    context.read<UserBloc>().add(ProfileFetched());
  }

  Future<void> pickImage(bool isProfile) async {
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() {
        if (isProfile) {
          profileImage = File(picked.path);
        } else {
          signatureImage = File(picked.path);
        }
      });
    }
  }

  void showStatusSheet() {
    showBottomSheetPicker(
      context: context,
      title: "Select Status",
      options: ['Available', 'Unavailable'],
      onSelected: (status) {
        setState(() {
          selectedStatus = status;
          statusController.text = status;
        });
      },
    );
  }

  void showBookingTypeSheet() {
    showBottomSheetPicker(
      context: context,
      title: "Select Booking Type",
      options: ['Manual', 'Auto'],
      onSelected: (type) {
        setState(() {
          selectedBookingType = type;
          bookingTypeController.text = type;
        });
      },
    );
  }

  void openVisitDurationSheet() {
    showVisitDurationSheet(
      context: context,
      visitDurationValue: visitDurationValue,
      allowedDurations: [10, 15, 20, 30, 60],
      onSelected: (value) {
        setState(() {
          visitDurationValue = value.toDouble();
          visitDurationController.text = '$value';
        });
      },
    );
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    specialityController.dispose();
    titleController.dispose();
    visitDurationController.dispose();
    visitFeeController.dispose();
    experienceController.dispose();
    statusController.dispose();
    phoneController.dispose();
    emailController.dispose();
    bookingTypeController.dispose();
    LoadingOverlay().hideAll();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.grayScaleColor0,
        centerTitle: false,
        scrolledUnderElevation: 0,
        title: Text(
          'Edit Profile',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 17,
            color: Pallete.black1,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Pallete.black1,
            size: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: BackgroundContainer(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(27),
            child: Column(
              children: [
                BlocBuilder<UserBloc, UserState>(
                  builder: (context, state) {
                    return ProfileImagePicker(
                      existingImagePath: state.user?.photo,
                      image: profileImage,
                      onPick: () => pickImage(true),
                    );
                  },
                ),
                const SizedBox(height: 20),
                _buildLabeledField(),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Signature',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    BlocBuilder<UserBloc, UserState>(
                      builder: (context, state) {
                        return Align(
                          alignment: Alignment.centerLeft,
                          child: SignatureImagePicker(
                            exsistingImagePath: state.user?.sign,
                            image: signatureImage,
                            onPick: () => pickImage(false),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: BlocListener<UserBloc, UserState>(
                    listener: (context, state) {
                      if (state.status.isLoading) {
                        LoadingOverlay().show(context);
                      } else {
                        LoadingOverlay().hideAll();
                        showToast(msg: state.statusMessage);
                        if (state.status.isModified && isEdited == 1) {
                          context.pop();
                        }
                      }
                    },
                    child: CustomButton(
                      text: "Edit Profile",
                      onPressed: _isAllEmpty() ? null : submit,
                      color: Pallete.primaryColor,
                      width: screenWidth(context) * 0.4,
                      height: screenHeight(context) * 0.055,
                      padding: const EdgeInsets.all(6),
                      borderRadius: 4,
                      textColor: Pallete.grayScaleColor0,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void submit() async {
    context.read<UserBloc>().add(
      DoctorProfileModified(
        request: ModifyDoctorInfoRequest(
          averageVisitDuration:
              visitDurationController.text.trim().isEmpty
                  ? null
                  : '${visitDurationController.text.trim()} min',
          email:
              emailController.text.trim().isEmpty
                  ? null
                  : emailController.text.trim(),
          phone:
              phoneController.text.trim().isEmpty
                  ? null
                  : phoneController.text.trim(),
          experience:
              experienceController.text.trim().isEmpty
                  ? null
                  : experienceController.text.trim(),
          firstName:
              firstNameController.text.trim().isEmpty
                  ? null
                  : firstNameController.text.trim(),
          lastName:
              lastNameController.text.trim().isEmpty
                  ? null
                  : lastNameController.text.trim(),
          speciality:
              specialityController.text.trim().isEmpty
                  ? null
                  : specialityController.text.trim(),
          professionalTitle:
              titleController.text.trim().isEmpty
                  ? null
                  : titleController.text.trim(),
          visitFee:
              visitFeeController.text.trim().isEmpty
                  ? null
                  : double.parse(visitFeeController.text.trim()),
          bookingType:
              bookingTypeController.text.trim().isEmpty
                  ? null
                  : bookingTypeController.text.toLowerCase().trim(),
          status:
              statusController.text.trim().isEmpty
                  ? null
                  : (statusController.text == 'Available'
                      ? 'available'
                      : 'notAvailable'),
          photo: profileImage,
          sign: signatureImage,
        ),
      ),
    );
    await for (final newState in context.read<UserBloc>().stream) {
      if (newState.status.isModified) {
        isEdited = 1;
      }
    }
  }

  bool _isAllEmpty() {
    return firstNameController.text.trim().isEmpty &&
        lastNameController.text.trim().isEmpty &&
        specialityController.text.trim().isEmpty &&
        titleController.text.trim().isEmpty &&
        visitDurationController.text.trim().isEmpty &&
        visitFeeController.text.trim().isEmpty &&
        experienceController.text.trim().isEmpty &&
        statusController.text.trim().isEmpty &&
        phoneController.text.trim().isEmpty &&
        emailController.text.trim().isEmpty &&
        bookingTypeController.text.trim().isEmpty &&
        profileImage == null &&
        signatureImage == null &&
        selectedBookingType == null &&
        selectedStatus == null;
  }

  Widget _buildLabeledField() {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final UserModel? user = state.user;
        return Column(
          children: [
            LabeledField(
              label: 'First Name',
              field: CustomTextField(
                hintText: user?.firstName ?? 'First Name',
                controller: firstNameController,
                keyboardType: TextInputType.text,
              ),
            ),
            LabeledField(
              label: 'Last Name',
              field: CustomTextField(
                hintText: user?.lastName ?? 'Last Name',
                controller: lastNameController,
                keyboardType: TextInputType.text,
              ),
            ),
            LabeledField(
              label: 'Speciality',
              field: CustomTextField(
                hintText: user?.speciality ?? 'Speciality',
                controller: specialityController,
                keyboardType: TextInputType.text,
              ),
            ),
            LabeledField(
              label: 'Professional Title',
              field: CustomTextField(
                hintText: user?.professionalTitle ?? 'Professional Title',
                controller: titleController,
                keyboardType: TextInputType.text,
              ),
            ),
            LabeledField(
              label: 'Average Visit Duration',
              field: CustomTextField(
                hintText: user?.averageVisitDuration ?? 'Visit Duration',
                controller: visitDurationController,
                keyboardType: TextInputType.number,
                readOnly: true,
                onTap: openVisitDurationSheet,
                suffixIcon: const Icon(
                  Icons.arrow_drop_down,
                  color: Pallete.grayScaleColor500,
                  size: 28,
                ),
              ),
            ),

            LabeledField(
              label: 'Visit Fee',
              field: CustomTextField(
                hintText: user?.visitFee.toString() ?? 'Visit Fee',
                controller: visitFeeController,
                keyboardType: TextInputType.number,
              ),
            ),
            LabeledField(
              label: 'Experience',
              field: CustomTextField(
                hintText: user?.experience.toString() ?? 'Experience',
                controller: experienceController,
                keyboardType: TextInputType.number,
                formatters: [FilteringTextInputFormatter.digitsOnly],
                suffixIcon: Transform.translate(
                  offset: Offset(-10.3, 13.5),
                  child: Text('Year/s', style: TextStyle(color: Colors.black)),
                ),
              ),
            ),
            LabeledField(
              label: 'Status',
              field: CustomTextField(
                hintText: 'Select Status',
                controller: statusController,
                keyboardType: TextInputType.text,
                readOnly: true,
                onTap: showStatusSheet,
                suffixIcon: const Icon(
                  Icons.arrow_drop_down,
                  color: Pallete.grayScaleColor500,
                  size: 28,
                ),
              ),
            ),
            LabeledField(
              label: 'Phone Number',
              field: CustomTextField(
                hintText: user?.phone ?? 'Enter phone number',
                controller: phoneController,
                keyboardType: TextInputType.phone,
                formatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            LabeledField(
              label: 'Email Address',
              field: CustomTextField(
                hintText: user?.email ?? 'Enter email address',
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            LabeledField(
              label: 'Booking Type',
              field: CustomTextField(
                hintText: 'Select booking type',
                controller: bookingTypeController,
                readOnly: true,
                onTap: showBookingTypeSheet,
                suffixIcon: const Icon(
                  Icons.arrow_drop_down,
                  color: Pallete.grayScaleColor500,
                  size: 28,
                ),
                keyboardType: TextInputType.text,
              ),
            ),
          ],
        );
      },
    );
  }
}
