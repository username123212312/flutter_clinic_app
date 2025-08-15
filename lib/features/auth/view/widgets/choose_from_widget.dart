// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';

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
        width: screenWidth(context) * 0.35,
        height: screenHeight(context) * 0.19,
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
                  : [BoxShadow(blurRadius: 2, color: Colors.black)],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                height: screenHeight(context) * 0.12,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: applyPadding ? 10.0 : 0.0,
                  ),
                  child: Image.asset(imagePath),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: 18,
                  color: isSelected ? Pallete.primaryColor : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
