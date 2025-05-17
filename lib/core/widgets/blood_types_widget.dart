import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/profile_setup_screen.dart';

import '../../features/auth/view/widgets/auth_widgets.dart';
import '../consts/app_constants.dart';

class BloodTypesWidget extends StatefulWidget {
  const BloodTypesWidget({super.key, required this.onSelected});
  final void Function(int bloodType) onSelected;
  @override
  State<BloodTypesWidget> createState() => _BloodTypesWidgetState();
}

class _BloodTypesWidgetState extends State<BloodTypesWidget> {
  int _selectedBloodType = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 80,
        mainAxisExtent: 70,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        childAspectRatio: 0.5,
      ),
      itemCount: bloodTypes.length,
      itemBuilder: (context, index) {
        final bloodType = bloodTypes[index];
        return SelectableWidget(
          onSelect: (id) {
            setState(() {
              _selectedBloodType = id;
            });
          },
          title: bloodType,
          id: index,
          isSelected: _selectedBloodType == index,
        );
      },
    );
  }
}
