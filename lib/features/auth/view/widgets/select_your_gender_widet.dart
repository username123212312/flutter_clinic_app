import 'package:flutter/material.dart';

import '../../../../core/utils.dart';
import 'choose_from_widget.dart';

class SelectYourGenderWidet extends StatelessWidget {
  const SelectYourGenderWidet({
    super.key,
    required this.selectedGender,
    required this.onSelected,
  });
  final int selectedGender;
  final void Function(int id) onSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: screenHeight(context) * 0.23,
          width: screenWidth(context) * 0.35,
          // width: screenWidth(context) * 0.3,
          child: ChooseFromWidget(
            applyPadding: true,
            isSelected: selectedGender == 0,
            onToggleSelect: () {
              onSelected(0);
            },
            title: 'Male',
            imagePath: 'assets/images/male.webp',
          ),
        ),
        SizedBox(
          height: screenHeight(context) * 0.23,
          width: screenWidth(context) * 0.35,
          child: ChooseFromWidget(
            applyPadding: true,
            isSelected: selectedGender == 1,
            onToggleSelect: () {
              onSelected(1);
            },
            title: 'Female',
            imagePath: 'assets/images/female.webp',
          ),
        ),
      ],
    );
  }
}
