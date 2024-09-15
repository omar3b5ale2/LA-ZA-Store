import 'package:flutter/material.dart';

extension ScaleIndependentPixels on num {
  double get sp {
    final double pixelRatio = WidgetsBinding.instance.window.devicePixelRatio;
    final double logicalScreenSize = WidgetsBinding.instance.window.physicalSize.width / pixelRatio;
    const double baseSize = 390; // Base size for iPhone 12 Pro

    return (this * (logicalScreenSize / baseSize)).toDouble();
  }
}
