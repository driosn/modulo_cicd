import 'package:flutter/material.dart';
import 'package:resident_app/core/constants/constants.dart';

class RelationalSpaceCalculation {
  RelationalSpaceCalculation();

  void setRelationalSpace(BuildContext context) {
    double marginMax = 24;
    double heightMin = 640;
    double heightMax = 1000;
    double heightDifference = heightMax - heightMin;
    double heightDevice = MediaQuery.of(context).size.height;
    double ratio = (heightDevice - heightMin) / heightDifference;
    double margin = marginMax * ratio;

    switch (margin) {
      case >= 0 && < 5:
        relationalSpaceHeight = 0;
        break;
      case >= 5 && < 13:
        relationalSpaceHeight = 8;
        break;
      case >= 13 && < 20:
        relationalSpaceHeight = 16;
        break;
      case >= 20:
        relationalSpaceHeight = 24;
      default:
    }
  }
}
