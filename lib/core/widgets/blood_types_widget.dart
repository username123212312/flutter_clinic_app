import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/features/auth/view/screens/profile_setup_screen.dart';

import '../../features/auth/view/widgets/auth_widgets.dart';
import '../consts/app_constants.dart';

class BloodTypesWidget extends StatefulWidget {
  const BloodTypesWidget({
    super.key,
    required this.onSelected,
    this.selectedBloodType = 0,
  });
  final void Function(int bloodType)? onSelected;
  final int selectedBloodType;
  @override
  State<BloodTypesWidget> createState() => _BloodTypesWidgetState();
}

class _BloodTypesWidgetState extends State<BloodTypesWidget> {
  late int _selectedBloodType;
  @override
  void initState() {
    super.initState();
    _selectedBloodType = widget.selectedBloodType;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 90,
        mainAxisExtent: 50,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        childAspectRatio: 0.5,
      ),
      itemCount: AppConstants.bloodTypes.length,
      itemBuilder: (context, index) {
        final bloodType = AppConstants.bloodTypes[index];
        return SelectableWidget(
          onSelect: (id) {
            setState(() {
              _selectedBloodType = id;
              if (widget.onSelected != null) {
                widget.onSelected!(id);
              }
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
