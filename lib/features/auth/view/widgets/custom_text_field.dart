import 'package:flutter/material.dart';

import '../../../../core/theme/app_pallete.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final Color fillColor;
  final int? maxLength;
  final int? maxLines;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
    this.fillColor = Colors.white,
    this.maxLength,
    this.maxLines,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      margin: EdgeInsets.only(right: 10),
      transform:
          _isFocused ? (Matrix4.identity()..scale(1.02)) : Matrix4.identity(),
      child: TextFormField(
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 15),
        maxLength: widget.maxLength,
        maxLines: widget.maxLines,
        controller: widget.controller,
        obscureText: widget.obscureText,
        focusNode: _focusNode,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          counterStyle: Theme.of(
            context,
          ).textTheme.titleSmall!.copyWith(fontSize: 13),
          contentPadding: EdgeInsets.only(left: 20, top: 40),
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Pallete.grayScaleColor500),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Pallete.grayScaleColor500, width: 2),
            borderRadius: BorderRadius.circular(4),
          ),
          filled: true,
          fillColor: widget.fillColor,
          suffixIcon: widget.suffixIcon,
        ),
      ),
    );
  }
}
