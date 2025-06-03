import 'package:flutter/material.dart';

class ScalerFactorHelper {
  ScalerFactorHelper();
  //Icon resizing was deprecated for mvp
  //TODO Search for semantic alternative strategies to resize icons in order to avoid this getFactor helper
  double getFactor(TextScaler textScaler) {
    double scaleFactor = 1;
    if (textScaler != TextScaler.noScaling) {
      scaleFactor = textScaler.scale(1);
    }
    return scaleFactor;
  }
}
