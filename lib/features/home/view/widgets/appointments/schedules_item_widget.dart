import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/features/home/view/screens/book_new_appointment_screen.dart';

import '../../../../../core/theme/app_pallete.dart';

class SchedulesItemWidget<T> extends StatefulWidget {
  const SchedulesItemWidget({
    super.key,
    required this.data,
    this.onSelected,
    this.isSelected,
    required this.value,
  });
  final T data;
  final String value;
  final void Function(T newValue)? onSelected;
  final bool? isSelected;

  @override
  State<SchedulesItemWidget<T>> createState() => _SchedulesItemWidgetState<T>();
}

class _SchedulesItemWidgetState<T> extends State<SchedulesItemWidget<T>> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            (widget.isSelected ?? false)
                ? Theme.of(context).colorScheme.primary.withAlpha(150)
                : Pallete.buttonBG0,
        disabledBackgroundColor: Pallete.buttonBG0,
      ),
      onPressed: widget.onSelected == null ? null : () => _toggleSelected(),
      child: FittedBox(
        child: Text(
          widget.value,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
            fontSize: 11,
            color:
                (widget.isSelected ?? false)
                    ? Pallete.whiteColor
                    : Pallete.black1.withValues(alpha: 0.5),
          ),
        ),
      ),
    );
  }

  void _toggleSelected() {
    setState(() {
      _isSelected = !_isSelected;
    });
    if (widget.onSelected != null) {
      widget.onSelected!(widget.data);
    }
  }
}
