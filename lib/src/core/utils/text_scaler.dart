import 'dart:math';

import 'package:flutter/material.dart';

class ScaleSize {
  static double textScaleFactor(BuildContext context,
      {double maxTextScaleFactor = 2.2}) {
    final width = MediaQuery.sizeOf(context).width;
    double val = (width / 1400) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}