



import 'package:flutter/material.dart';


/// Custom Circle Clipper used on Payment Card Carousel in AddPaymentCardScreen
class CircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.addOval(Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: size.width / 2));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // return true if the clip path can change on each invocation of the `clipper`.
  }
}