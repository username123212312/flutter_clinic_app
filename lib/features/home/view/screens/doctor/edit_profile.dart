import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';

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
                ProfileImagePicker(
                  image: profileImage,
                  onPick: () => pickImage(true),
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SignatureImagePicker(
                        image: signatureImage,
                        onPick: () => pickImage(false),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: CustomButton(
                    text: "Edit Profile",
                    onPressed: () {},
                    color: Pallete.primaryColor,
                    width: screenWidth(context) * 0.4,
                    height: screenHeight(context) * 0.055,
                    padding: const EdgeInsets.all(6),
                    borderRadius: 4,
                    textColor: Pallete.grayScaleColor0,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _buildLabeledField() {
    return Column(
      children: [
        LabeledField(
          label: 'First Name',
          field: CustomTextField(
            hintText: 'First Name',
            controller: firstNameController,
            keyboardType: TextInputType.text,
          ),
        ),
        LabeledField(
          label: 'Last Name',
          field: CustomTextField(
            hintText: 'Last Name',
            controller: lastNameController,
            keyboardType: TextInputType.text,
          ),
        ),
        LabeledField(
          label: 'Speciality',
          field: CustomTextField(
            hintText: 'Speciality',
            controller: specialityController,
            keyboardType: TextInputType.text,
          ),
        ),
        LabeledField(
          label: 'Professional Title',
          field: CustomTextField(
            hintText: 'Professional Title',
            controller: titleController,
            keyboardType: TextInputType.text,
          ),
        ),
        LabeledField(
          label: 'Average Visit Duration',
          field: CustomTextField(
            hintText: 'Visit Duration',
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
            hintText: 'Visit Fee',
            controller: visitFeeController,
            keyboardType: TextInputType.number,
          ),
        ),
        LabeledField(
          label: 'Experience',
          field: CustomTextField(
            hintText: 'Experience',
            controller: experienceController,
            keyboardType: TextInputType.number,
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
            hintText: 'Enter phone number',
            controller: phoneController,
            keyboardType: TextInputType.phone,
          ),
        ),
        LabeledField(
          label: 'Email Address',
          field: CustomTextField(
            hintText: 'Enter email address',
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
  }
}
