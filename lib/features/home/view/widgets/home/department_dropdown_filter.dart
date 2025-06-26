import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/features/home/model/clinic_model.dart';

import '../../../../../core/theme/app_pallete.dart';

class DepartmentDropdownFilter<T> extends StatelessWidget {
  final String selectedDepartment;
  final T? selectedDepartmentValue;
  final List<String> allDepartments;
  final List<T> allDepartmentsValue;
  final ValueChanged<T> onChanged;

  const DepartmentDropdownFilter({
    super.key,
    required this.selectedDepartment,
    required this.allDepartments,
    required this.onChanged,
    required this.selectedDepartmentValue,
    required this.allDepartmentsValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            child: DropdownButton<T>(
              isExpanded: true,
              value: selectedDepartmentValue ?? (ClinicModel() as T),
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
              items: getItems(),
              onChanged: (T? value) {
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

  List<DropdownMenuItem<T>> getItems() {
    if (allDepartments.isEmpty) {
      return [
        DropdownMenuItem<T>(
          value: ClinicModel() as T,
          child: Text('Select Department'),
        ),
      ];
    }
    final List<DropdownMenuItem<T>> temp = [
      DropdownMenuItem<T>(
        value: ClinicModel() as T,
        child: Text('Select Department'),
      ),
    ];
    for (var i = 0; i < allDepartments.length; i++) {
      temp.add(
        DropdownMenuItem<T>(
          value: allDepartmentsValue[i],
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              allDepartments[i],
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),
      );
    }
    return temp;
  }
}
