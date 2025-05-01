import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';

class CustomBottomAppBarItem extends StatelessWidget {
  const CustomBottomAppBarItem({
    super.key,
    required this.iconImagePath,
    required this.title,
    this.isSelected = false,
    required this.activeColor,
  });
  final String iconImagePath;
  final String title;
  final bool isSelected;
  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          color: isSelected ? activeColor : Pallete.graysGray2,
          iconImagePath,
          width: isSelected ? 45 : 40,
          height: isSelected ? 45 : 40,
          fit: BoxFit.cover,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontSize: isSelected ? 12 : 14,
            color: isSelected ? activeColor : Pallete.graysGray2,
          ),
        ),
      ],
    );
  }
}
