import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';

class PaymentStatusWidget extends CustomPaint {
  final Color fillColor;
  PaymentStatusWidget({
    super.key,
    super.size,
    super.child,
    this.fillColor = Pallete.primaryColor,
  }) : super(painter: _PaymentStatusWidgetPainter(fillColor: fillColor));
}

class _PaymentStatusWidgetPainter extends CustomPainter {
  final Color fillColor;

  _PaymentStatusWidgetPainter({required this.fillColor});
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 =
        Paint()
          ..color = fillColor
          ..style = PaintingStyle.fill
          ..strokeWidth = size.width * 0.00
          ..strokeCap = StrokeCap.butt
          ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0014286, size.height * 1.0050000);
    path_0.lineTo(size.width * 1.0014286, size.height * 1.0100000);
    path_0.lineTo(size.width * 0.8267714, size.height * 0.4915000);
    path_0.lineTo(size.width * 0.1979000, size.height * 0.4957500);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 =
        Paint()
          ..color = const Color.fromARGB(255, 33, 150, 243)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.width * 0.00
          ..strokeCap = StrokeCap.butt
          ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
