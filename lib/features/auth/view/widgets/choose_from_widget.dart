// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/core/utils/utils.dart';

class ChooseFromWidget extends StatelessWidget {
  const ChooseFromWidget({
    super.key,
    this.isSelected = false,
    required this.onToggleSelect,
    required this.title,
    required this.imagePath,
    this.applyPadding = false,
  });
  final bool isSelected;
  final void Function() onToggleSelect;
  final String title;
  final String imagePath;
  final bool applyPadding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onToggleSelect();
      },
      child: Container(
        width: screenWidth(context) * 0.4,
        height: screenHeight(context) * 0.33,
        decoration: BoxDecoration(
          color: Pallete.backgroundColor,
          borderRadius: BorderRadius.circular(12),
          border:
              isSelected
                  ? Border.all(color: Pallete.primaryColor, width: 3)
                  : null,
          boxShadow:
              isSelected
                  ? null
                  : [BoxShadow(blurRadius: 4, color: Colors.black)],
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: SizedBox(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: applyPadding ? 10.0 : 0.0,
                  ),
                  child: Image.asset(imagePath),
                ),
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                fontSize: 18,
                color: isSelected ? Pallete.primaryColor : Colors.black,
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
