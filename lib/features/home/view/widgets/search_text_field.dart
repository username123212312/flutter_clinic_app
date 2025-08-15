import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.searchController,
    this.onTap,
    required this.hintText,
    this.onChange,
  });

  final TextEditingController searchController;
  final void Function()? onTap;
  final void Function(String value)? onChange;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      controller: searchController,
      onTap: onTap,
      style: Theme.of(
        context,
      ).textTheme.titleSmall!.copyWith(fontSize: 14, color: Colors.black),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
          fontSize: 14,
          color: Pallete.grayScaleColor500,
        ),
        alignLabelWithHint: true,
        isDense: true, // Reduces the vertical padding
        contentPadding: EdgeInsets.symmetric(vertical: 18.0),
        prefixIcon: Icon(Icons.search, color: Pallete.black1, size: 25),

        prefixIconConstraints: BoxConstraints(minWidth: 37, minHeight: 37),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
