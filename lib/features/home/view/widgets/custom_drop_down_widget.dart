import 'package:flutter/material.dart';

import '../../../../core/theme/app_pallete.dart';
import '../../../../core/utils/utils.dart';

class CustomDropDownWidget<T> extends StatefulWidget {
  const CustomDropDownWidget({
    super.key,
    this.options,
    this.contentItem,
    required this.onSelected,
    required this.initialOption,
    this.values,
    this.iniaialValue,
  });
  final List<String>? options;
  final Widget? contentItem;
  final void Function(String option, T? value)? onSelected;
  final List<T?>? values;
  final T? iniaialValue;
  final String initialOption;

  @override
  State<CustomDropDownWidget<T>> createState() =>
      _CustomDropDownWidgetState<T>();
}

class _CustomDropDownWidgetState<T> extends State<CustomDropDownWidget<T>>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _rotationAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: _dropdownKey,
      onTap: _toggleDropdown,
      child: Container(
        width: screenWidth(context),
        height: screenHeight(context) * 0.06,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Pallete.buttonBG,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 14,
                  color: Pallete.grayScaleColor500,
                ),
                text: _selectedOption ?? widget.initialOption,
                children: [
                  TextSpan(
                    text: ' *',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 14,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            RotationTransition(
              turns: _rotationAnimation,
              child: Image.asset(
                'assets/icons/tabler_chevron-down.png',
                width: 35,
                height: 35,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _toggleDropdown() {
    if (_isDropdownOpen) {
      _animationController.animateTo(0.0);
      _closeDropdown();
    } else {
      _animationController.animateTo(0.5);
      _openDropdown();
    }
  }

  void _openDropdown() {
    final RenderBox renderBox =
        _dropdownKey.currentContext!.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;

    _overlayEntry = OverlayEntry(
      builder:
          (context) => Stack(
            children: [
              Positioned.fill(child: GestureDetector(onTap: _toggleDropdown)),
              Positioned(
                left: position.dx,
                top: position.dy + size.height + 4,
                width: size.width,
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    height: screenHeight(context) * 0.3,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: (widget.options ?? []).length,
                      itemBuilder: (_, index) {
                        final option = widget.options?[index] ?? 'no element';
                        return ListTile(
                          title: Text(
                            option,
                            style: Theme.of(
                              context,
                            ).textTheme.titleSmall!.copyWith(
                              fontSize: 14,
                              color: Pallete.grayScaleColor500,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _selectedOption = option;
                            });
                            if (widget.onSelected != null) {
                              widget.onSelected!(option, widget.values?[index]);
                            }
                            _toggleDropdown();
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
    );

    Overlay.of(context).insert(_overlayEntry!);
    _isDropdownOpen = true;
  }

  void _closeDropdown() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    _isDropdownOpen = false;
  }

  late final AnimationController _animationController;
  late final Animation<double> _rotationAnimation;
  final _dropdownKey = GlobalKey();
  OverlayEntry? _overlayEntry;
  bool _isDropdownOpen = false;
  String? _selectedOption;
}
