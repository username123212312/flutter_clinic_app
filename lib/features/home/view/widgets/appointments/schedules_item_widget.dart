import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/utils/utils.dart';
import 'package:flutter_clinic_app/features/home/view/screens/book_new_appointment_screen.dart';

import '../../../../../core/theme/app_pallete.dart';

class SchedulesItemWidget extends StatefulWidget {
  const SchedulesItemWidget({
    super.key,
    required this.timeRange,
    this.onSelected,
    this.isSelected,
  });
  final TimeRange timeRange;
  final void Function(String newValue)? onSelected;
  final bool? isSelected;

  @override
  State<SchedulesItemWidget> createState() => _SchedulesItemWidgetState();
}

class _SchedulesItemWidgetState extends State<SchedulesItemWidget> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Pallete.buttonBG0),
      onPressed: () => _toggleSelected(),
      child: Text(
        widget.timeRange.toString(),
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
          fontSize: 11,
          color:
              widget.isSelected ?? _isSelected
                  ? Pallete.black1
                  : Pallete.black1.withValues(alpha: 0.5),
        ),
      ),
    );
  }

  void _toggleSelected() {
    setState(() {
      _isSelected = !_isSelected;
    });
    if (widget.onSelected != null) {
      widget.onSelected!(widget.timeRange.toString());
    }
  }
}
