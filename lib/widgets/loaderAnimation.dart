import 'package:flutter/material.dart';

class TestPainter extends CustomPainter {
  late Animation<double> sizeAnim;
  late Animation<double> curve;

  TestPainter({required BuildContext context, required AnimationController controller}) {
    this.curve = CurvedAnimation(parent: controller, curve: Curves.easeInBack);
    this.sizeAnim = Tween<double>(begin: 50, end: (MediaQuery.of(context).size.height / 1.5)).animate(curve);
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint circlePaint = Paint()..color = Color(0xFF3F3CAE);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), sizeAnim.value, circlePaint);
    canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
