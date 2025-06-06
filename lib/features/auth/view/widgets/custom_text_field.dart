import 'package:flutter/material.dart';

import '../../../../core/theme/app_pallete.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final Color fillColor;
  final int? maxLength;
  final int? maxLines;
  final bool readOnly;
  final String? initialValue;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final TextInputAction? textInputAction;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    required this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
    this.fillColor = Colors.white,
    this.maxLength,
    this.maxLines,
    this.readOnly = false,
    this.initialValue,
    this.onTap,
    this.validator,
    this.onSaved,
    this.textInputAction = TextInputAction.next,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;
  bool _isFocused = false;
  bool _obsecureText = true;

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
        textInputAction: widget.textInputAction,
        validator: widget.validator,
        onSaved: widget.onSaved,
        onTap: widget.onTap,
        readOnly: widget.readOnly,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 15),
        maxLength: widget.maxLength,
        maxLines: widget.maxLines,
        controller: widget.controller,
        obscureText: widget.obscureText ? _obsecureText : false,
        focusNode: _focusNode,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          counterStyle: Theme.of(
            context,
          ).textTheme.titleSmall!.copyWith(fontSize: 13),
          contentPadding: EdgeInsets.only(left: 20, top: 40),
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            fontSize: 13,
            color: Pallete.grayScaleColor500,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),

          filled: true,
          fillColor: widget.fillColor,
          suffixIcon:
              widget.obscureText
                  ? GestureDetector(
                    onTap: () {
                      setState(() {
                        _obsecureText = !_obsecureText;
                      });
                    },
                    child: Icon(
                      _obsecureText ? Icons.visibility_off : Icons.visibility,
                      color: Pallete.grayScaleColor500,
                    ),
                  )
                  : widget.suffixIcon,
        ),
      ),
    );
  }
}
