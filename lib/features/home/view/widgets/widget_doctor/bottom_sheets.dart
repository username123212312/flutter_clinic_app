import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../../auth/view/widgets/custom_button.dart';

void showBottomSheetPicker({
  required BuildContext context,
  required String title,
  required List<String> options,
  required void Function(String) onSelected,
}) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    isScrollControlled: true,
    builder: (_) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Pallete.black1,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 12),
            ...options.map((option) {
              return Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      option,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Pallete.black1,
                        fontSize: 13,
                      ),
                    ),
                    onTap: () {
                      onSelected(option);
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            }),
          ],
        ),
      );
    },
  );
}

void showVisitDurationSheet({
  required BuildContext context,
  required double visitDurationValue,
  required List<int> allowedDurations,
  required Function(int) onSelected,
}) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    isScrollControlled: true,
    builder: (_) {
      int selectedValue = visitDurationValue.toInt();
      return StatefulBuilder(
        builder: (context, setModalState) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Select Visit Duration (minutes)',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Pallete.black1,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                Column(
                  children:
                      allowedDurations.map((duration) {
                        bool isSelected = duration == selectedValue;
                        return Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                '$duration minutes',
                                style: TextStyle(
                                  color:
                                      isSelected
                                          ? Pallete.primaryColor
                                          : Pallete.black1,
                                  fontWeight:
                                      isSelected
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                  fontSize: 13,
                                ),
                              ),
                              trailing:
                                  isSelected
                                      ? const Icon(
                                        Icons.check,
                                        color: Pallete.primaryColor,
                                        size: 18,
                                      )
                                      : null,
                              onTap: () {
                                setModalState(() => selectedValue = duration);
                              },
                            ),
                          ],
                        );
                      }).toList(),
                ),
                CustomButton(
                  text: "Select",
                  onPressed: () {
                    onSelected(selectedValue);
                    Navigator.pop(context);
                  },
                  color: Pallete.primaryColor,
                  width: screenWidth(context) * 0.3,
                  height: screenHeight(context) * 0.05,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  borderRadius: 32,
                  textColor: Pallete.grayScaleColor0,
                  fontSize: 14,
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
