import 'package:flutter/material.dart';

class FadePageRouteBuilder extends PageRouteBuilder {
  final Widget newPage;
  FadePageRouteBuilder(this.newPage)
    : super(
        transitionDuration: Duration(seconds: 1),
        pageBuilder: (context, animation, secondaryAnimation) => newPage,
        transitionsBuilder:
            (context, animation, secondaryAnimation, child) =>
                FadeTransition(opacity: animation, child: child),
      );
}
