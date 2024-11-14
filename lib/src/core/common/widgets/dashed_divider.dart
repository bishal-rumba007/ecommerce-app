import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';

class DashedDivider extends StatelessWidget {
  final double height;
  final double dashWidth;
  final double dashSpace;
  final Color color;

  const DashedDivider({
    super.key,
    this.height = 1.0,
    this.dashWidth = 5.0,
    this.dashSpace = 3.0,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: CustomPaint(
        painter: DashedLinePainter(
          dashWidth: dashWidth,
          dashSpace: dashSpace,
          color: color,
        ),
      ),
    );
  }
}