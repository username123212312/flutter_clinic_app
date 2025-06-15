import 'package:flutter/services.dart';

class DecimalInputFormatter extends TextInputFormatter {
  final int decimalRange;

  DecimalInputFormatter({this.decimalRange = 2});

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String text = newValue.text;

    // Allow empty input
    if (text.isEmpty) return newValue;

    // Match pattern: optional digits before dot, optional one dot, optional digits after
    final regex = RegExp(r'^\d*\.?\d*$');
    if (!regex.hasMatch(text)) return oldValue;

    // Enforce decimal places
    if (text.contains('.')) {
      final parts = text.split('.');
      if (parts.length > 2) return oldValue; // More than one dot
      if (parts[1].length > decimalRange) return oldValue;
    }

    return newValue;
  }
}
