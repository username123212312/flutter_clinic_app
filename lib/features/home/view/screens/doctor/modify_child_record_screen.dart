import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:our_flutter_clinic_app/features/home/model/child_record.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../../auth/view/widgets/custom_button.dart';
import '../../../../auth/view/widgets/custom_text_field.dart';

class ModifyChildRecordScreen extends StatefulWidget {
  const ModifyChildRecordScreen({super.key, required this.childRecord});
  final ChildRecord childRecord;

  @override
  State<ModifyChildRecordScreen> createState() =>
      _ModifyChildRecordScreenState();
}

class _ModifyChildRecordScreenState extends State<ModifyChildRecordScreen> {
  final TextEditingController lastVisitController = TextEditingController();
  final TextEditingController nextVisitController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController headCircumferenceController =
      TextEditingController();
  final TextEditingController allergiesController = TextEditingController();
  final TextEditingController feedingController = TextEditingController();
  final TextEditingController doctorNotesController = TextEditingController();
  final TextEditingController growthNotesController = TextEditingController();
  final TextEditingController devObservationsController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        title: Text(
          'Add Child Record',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 17,
            color: Pallete.black1,
          ),
        ),
        iconTheme: IconThemeData(size: 18),

        backgroundColor: Pallete.grayScaleColor0,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background child.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(23),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last Visit Date',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText: 'Enter last visit date',
                      controller: lastVisitController,
                      keyboardType: TextInputType.datetime,
                    ),
                  ],
                ),

                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next Visit Date',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText: 'Enter next visit date',
                      controller: nextVisitController,
                      keyboardType: TextInputType.datetime,
                    ),
                  ],
                ),

                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Height',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText: 'Enter height in cm',
                      controller: heightController,
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),

                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Weight',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText: 'Enter weight in kg',
                      controller: weightController,
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Head Circumference',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText: 'Enter head circumference in cm',
                      controller: headCircumferenceController,
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Allergies',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText: 'Enter allergies',
                      controller: allergiesController,
                      keyboardType: TextInputType.text,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Feeding Type',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText: 'Enter feeding type',
                      controller: feedingController,
                      keyboardType: TextInputType.text,
                    ),
                  ],
                ),

                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Doctor Notes',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText: 'Enter doctor notes',
                      controller: doctorNotesController,
                      keyboardType: TextInputType.text,
                      maxLines: 3,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Growth Notes',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText: 'Enter growth notes',
                      controller: growthNotesController,
                      keyboardType: TextInputType.text,
                      maxLines: 3,
                    ),
                  ],
                ),

                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Developmental Observations',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.grayScaleColor700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      hintText: 'Enter developmental observations',
                      controller: devObservationsController,
                      keyboardType: TextInputType.text,
                      maxLines: 3,
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    text: "Save",
                    onPressed: () {},
                    color: Pallete.primaryColor,
                    width: screenWidth(context) * 0.4,
                    height: screenHeight(context) * 0.06,
                    padding: const EdgeInsets.all(6),
                    borderRadius: 4,
                    textColor: Pallete.grayScaleColor0,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
