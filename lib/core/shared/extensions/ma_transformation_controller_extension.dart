import 'package:flutter/material.dart';

extension MATransformationControllerExtension on TransformationController {
  bool get isZoomed => value != Matrix4.identity();
  bool get isNotZoomed => value == Matrix4.identity();

  setZoomTo3X() {
    const position = Offset(0, 0);

    value = Matrix4.identity()
      ..translate(-position.dx * 2, -position.dy * 2)
      ..scale(3.0);
  }

  setZoomToInitial() {
    value = Matrix4.identity();
  }
}
