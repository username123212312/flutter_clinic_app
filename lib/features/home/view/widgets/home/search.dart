import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';

class SearchDialog extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final void Function(String)? onSubmitted;
  final String hint;
  final TextEditingController controller;

  const SearchDialog({
    super.key,
    required this.onChanged,
    required this.hint,
    required this.controller,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Material(
        color: Pallete.transparentColor,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
            child: SafeArea(
              bottom: false,
              child: GestureDetector(
                onTap: () {},
                child: TextField(
                  onSubmitted: onSubmitted,
                  textInputAction: TextInputAction.search,
                  controller: controller,
                  autofocus: true,
                  onChanged: onChanged,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 14,
                    color: Pallete.black1,
                  ),
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 12,
                      color: Pallete.grayScaleColor500,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Pallete.black1,
                      size: 27,
                    ),
                    filled: true,
                    fillColor: Pallete.grayScaleColor0,
                    contentPadding: const EdgeInsets.symmetric(vertical: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    hoverColor: Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
