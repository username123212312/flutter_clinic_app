import 'package:flutter/material.dart';

class TransparentDialog {
  /// Shows a transparent dialog and returns a Future that completes when dismissed
  static Future<T?> show<T>({
    required BuildContext context,
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    bool useRootNavigator = true,
  }) {
    return showDialog<T>(
      context: context,
      barrierColor: Colors.black.withAlpha(100),
      barrierDismissible: barrierDismissible,
      useRootNavigator: useRootNavigator,
      builder:
          (context) => _TransparentDialog(
            builder: builder,
            barrierDismissible: barrierDismissible,
          ),
    );
  }
}

class _TransparentDialog extends StatelessWidget {
  final WidgetBuilder builder;
  final bool barrierDismissible;

  const _TransparentDialog({
    required this.builder,
    required this.barrierDismissible,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: EdgeInsets.zero,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: barrierDismissible ? () => Navigator.of(context).pop() : null,
        child: Center(
          child: Material(
            color: Colors.transparent,
            child: Builder(builder: builder),
          ),
        ),
      ),
    );
  }
}
