// ignore_for_file: file_names

import 'dart:math';

import 'package:expense_repr_sim/data.dart';
import 'package:flutter/material.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: customShadow,
          color: primaryColor,
        ),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomPaint(
                child: Container(),
                foregroundPainter: PieChartPainter(),
              ),
            ),
            Center(
              child: Container(
                height: 70,
                width: 70,
                child: const Center(
                  child: Text(
                    "\$1234",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: customShadow,
                  color: primaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;
    double total = 0;
    for (var element in expenses) {
      total += element["amount"];
    }

    var startRadian = -pi / 2;

    for (int i = 0; i < expenses.length; i++) {
      var curExpense = expenses[i];
      var sweepRadian = (curExpense['amount'] / total) * 2 * pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
