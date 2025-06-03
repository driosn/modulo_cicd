import 'dart:io';

import 'package:resident_app/core/constants/constants.dart';

class ScalerConfig {
  const ScalerConfig({
    required this.scaleFactor,
    required this.spacingXXS,
    required this.spacingXS,
    required this.spacingS,
    required this.spacingM,
    required this.spacingL,
    required this.spacingXL,
    required this.spacingXXL,
    required this.textFieldVerticalPadding,
    required this.buttonVerticalPadding,
    required this.bottomPaddingSpacing,
  });

  final double scaleFactor;

  ///
  /// Width: 2
  ///
  final double spacingXXS;

  ///
  /// Width: 4
  ///
  final double spacingXS;

  ///
  /// Width: 8
  ///
  final double spacingS;

  ///
  /// Width: 12
  ///
  final double spacingM;

  ///
  /// Width: 16
  ///
  final double spacingL;

  ///
  /// Width: 20
  ///
  final double spacingXL;

  ///
  /// Width: 24
  ///
  final double spacingXXL;

  ///
  /// Height: 32
  ///
  final double bottomPaddingSpacing;

  final double textFieldVerticalPadding;
  final double buttonVerticalPadding;

  factory ScalerConfig.init(double scaleFactor) {
    double multiplier = Platform.isAndroid ? getAndroidMultiplier(scaleFactor) : getiOSMultiplier(scaleFactor);

    return baseScalerConfig.multiply(multiplier);
  }

  static double getAndroidMultiplier(double scaleFactor) {
    if (scaleFactor >= androidLargestScaleFactor) return 1.3;
    if (scaleFactor >= androidLargeScaleFactor) return 1.15;
    if (scaleFactor >= androidDefaultScaleFactor) return 1.0;
    if (scaleFactor >= androidSmallScaleFactor) return 0.85;

    return 1.0;
  }

  static double getiOSMultiplier(double scaleFactor) {
    if (scaleFactor >= iOSPositive8ScaleFactor) return 3;
    if (scaleFactor >= iOSPositive7ScaleFactor) return 2.75;
    if (scaleFactor >= iOSPositive6ScaleFactor) return 2.5;
    if (scaleFactor >= iOSPositive5ScaleFactor) return 2.25;
    if (scaleFactor >= iOSPositive4ScaleFactor) return 2.0;
    if (scaleFactor >= iOSPositive3ScaleFactor) return 1.75;
    if (scaleFactor >= iOSPositive2ScaleFactor) return 1.5;
    if (scaleFactor >= iOSPositive1ScaleFactor) return 1.25;
    if (scaleFactor >= iOSDefaultScaleFactor) return 1.0;
    if (scaleFactor >= iOSNegative1ScaleFactor) return 0.75;
    if (scaleFactor >= iOSNegative2ScaleFactor) return 0.75;
    if (scaleFactor >= iOSNegative3ScaleFactor) return 0.5;

    return 1.0;
  }

  ScalerConfig multiply(double multiplier) => ScalerConfig(
        scaleFactor: multiplier,
        spacingXXS: spacingXXS * multiplier,
        spacingXS: spacingXS * multiplier,
        spacingS: spacingS * multiplier,
        spacingM: spacingM * multiplier,
        spacingL: spacingL * multiplier,
        spacingXL: spacingXL * multiplier,
        spacingXXL: spacingXXL * multiplier,
        buttonVerticalPadding: buttonVerticalPadding * multiplier,
        textFieldVerticalPadding: textFieldVerticalPadding * multiplier,
        bottomPaddingSpacing: bottomPaddingSpacing * multiplier,
      );

  static ScalerConfig baseScalerConfig = const ScalerConfig(
    scaleFactor: 1.0,
    spacingXXS: 2,
    spacingXS: 4,
    spacingS: 8,
    spacingM: 12,
    spacingL: 16,
    spacingXL: 20,
    spacingXXL: 24,
    buttonVerticalPadding: 12,
    textFieldVerticalPadding: 12,
    bottomPaddingSpacing: 32,
  );
}
