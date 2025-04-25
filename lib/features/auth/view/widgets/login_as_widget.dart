// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';

class LoginAsWidget extends StatelessWidget {
  const LoginAsWidget({
    super.key,
    this.isSelected = false,
    required this.onToggleSelect,
  });
  final bool isSelected;
  final void Function(bool flag) onToggleSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onToggleSelect(true);
      },
      child: AnimatedContainer(
        key: ValueKey(isSelected),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: isSelected ? Border.all(color: Pallete.primaryColor) : null,
          boxShadow:
              isSelected
                  ? null
                  : [
                    BoxShadow(
                      blurRadius: 8,
                      color: Colors.black,
                      offset: Offset(0, 20),
                    ),
                  ],
        ),
        duration: Duration(microseconds: 500),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [],
        ),
      ),
    );
  }
}
