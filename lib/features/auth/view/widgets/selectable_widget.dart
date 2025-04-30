import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';

class SelectableWidget extends StatelessWidget {
  const SelectableWidget({
    super.key,
    required this.title,
    required this.id,
    this.isSelected = false,
    required this.onSelect,
  });

  final String title;
  final int id;
  final bool isSelected;
  final void Function(int id) onSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelect(id);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Pallete.grayScaleColor300,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: isSelected ? 2 : 0,
            color:
                isSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.transparent,
          ),
        ),
        child: Text(
          textAlign: TextAlign.center,
          title,
          style: TextStyle(
            color:
                isSelected
                    ? Theme.of(context).colorScheme.primary
                    : Pallete.grayScaleColor500,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
