import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';

class DepartmentDropdownFilter extends StatelessWidget {
  final String selectedDepartment;
  final List<String> allDepartments;
  final ValueChanged<String> onChanged;

  const DepartmentDropdownFilter({
    super.key,
    required this.selectedDepartment,
    required this.allDepartments,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Choose Department:',
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: Pallete.black1,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Pallete.buttonBG,
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              value: selectedDepartment,
              icon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Pallete.grayScaleColor500,
              ),
              iconSize: 24,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 14,
                color: Pallete.grayScaleColor500,
              ),
              dropdownColor: Colors.white,
              borderRadius: BorderRadius.circular(20),
              items:
                  allDepartments.map((dept) {
                    final isAll = dept == 'All';
                    return DropdownMenuItem<String>(
                      value: dept,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          isAll ? 'All Departments' : dept,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    );
                  }).toList(),
              onChanged: (String? value) {
                if (value != null) {
                  onChanged(value);
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
