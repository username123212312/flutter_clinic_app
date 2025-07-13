import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../../auth/view/widgets/custom_text_field.dart';

class LabeledField extends StatelessWidget {
  final String label;
  final CustomTextField field;

  const LabeledField({super.key, required this.label, required this.field});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Pallete.grayScaleColor700,
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(height: screenHeight(context) * 0.08, child: field),
        const SizedBox(height: 8),
      ],
    );
  }
}
