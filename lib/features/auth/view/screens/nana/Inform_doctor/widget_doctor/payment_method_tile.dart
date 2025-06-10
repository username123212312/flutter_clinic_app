import 'package:flutter/material.dart';

import '../../../../../../../core/theme/app_pallete.dart';
import '../../../../../../../core/utils/utils.dart';

class PaymentMethodTile extends StatelessWidget {
  final String methodName;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onChanged;

  const PaymentMethodTile({
    super.key,
    required this.methodName,
    required this.imagePath,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: Container(
        height: screenHeight(context) * 0.07,
        width: screenWidth(context) * 0.9,
        decoration: BoxDecoration(
          color: Pallete.graysGray5,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Pallete.transparentColor, width: 1),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Radio(
              value: true,
              groupValue: isSelected,
              onChanged: (_) => onChanged(),
              activeColor: Pallete.primaryColor,
            ),
            const SizedBox(width: 10),
            Text(
              methodName,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontSize: 16,
                color: Pallete.black1,
              ),
            ),
            const Spacer(),
            Image.asset(imagePath, width: 60, height: 24, fit: BoxFit.contain),
          ],
        ),
      ),
    );
  }
}
