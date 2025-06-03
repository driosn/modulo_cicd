import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

part 'ma_spacing.freezed.dart';

@freezed
class MASpacingSize with _$MASpacingSize {
  factory MASpacingSize.xxs() = _XXS;
  factory MASpacingSize.xs() = _XS;
  factory MASpacingSize.s() = _S;
  factory MASpacingSize.m() = _M;
  factory MASpacingSize.l() = _L;
  factory MASpacingSize.xl() = _XL;
  factory MASpacingSize.xxl() = _XXL;
  factory MASpacingSize.bottomPadding() = _BottomPaddingSpacing;
}

class MASpacing extends StatelessWidget {
  const MASpacing({
    super.key,
    required this.size,
    this.axis = Axis.vertical,
  });

  ///
  /// Base Spacing: 2
  ///
  factory MASpacing.xxs({
    Axis? axis,
  }) =>
      MASpacing(
        size: _XXS(),
        axis: axis ?? Axis.vertical,
      );

  ///
  /// Base Spacing: 4
  ///
  factory MASpacing.xs({
    Axis? axis,
  }) =>
      MASpacing(
        size: _XS(),
        axis: axis ?? Axis.vertical,
      );

  ///
  /// Base Spacing: 8
  ///
  factory MASpacing.s({
    Axis? axis,
  }) =>
      MASpacing(
        size: _S(),
        axis: axis ?? Axis.vertical,
      );

  ///
  /// Base Spacing: 12
  ///
  factory MASpacing.m({
    Axis? axis,
  }) =>
      MASpacing(
        size: _M(),
        axis: axis ?? Axis.vertical,
      );

  ///
  /// Base Spacing: 16
  ///
  factory MASpacing.l({
    Axis? axis,
  }) =>
      MASpacing(
        size: _L(),
        axis: axis ?? Axis.vertical,
      );

  ///
  /// Base Spacing: 20
  ///
  factory MASpacing.xl({
    Axis? axis,
  }) =>
      MASpacing(
        size: _XXL(),
        axis: axis ?? Axis.vertical,
      );

  ///
  /// Base Spacing: 24
  ///
  factory MASpacing.xxl({
    Axis? axis,
  }) =>
      MASpacing(
        size: _XL(),
        axis: axis ?? Axis.vertical,
      );

  ///
  /// Base Spacing: 32
  ///
  factory MASpacing.bottomPadding() => MASpacing(
        size: _BottomPaddingSpacing(),
        axis: Axis.vertical,
      );

  final MASpacingSize size;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    final scalerConfig = locator<ScalerConfig>();
    final spacingXXS = scalerConfig.spacingXXS;
    final spacingXS = scalerConfig.spacingXS;
    final spacingS = scalerConfig.spacingS;
    final spacingM = scalerConfig.spacingM;
    final spacingL = scalerConfig.spacingL;
    final spacingXL = scalerConfig.spacingXL;
    final spacingXXL = scalerConfig.spacingXXL;
    final bottomPaddingSpacing = scalerConfig.bottomPaddingSpacing;

    final spacingValue = size.when(
      xxs: () => spacingXXS,
      xs: () => spacingXS,
      s: () => spacingS,
      m: () => spacingM,
      l: () => spacingL,
      xl: () => spacingXL,
      xxl: () => spacingXXL,
      bottomPadding: () => bottomPaddingSpacing,
    );

    if (axis == Axis.horizontal) {
      return SizedBox(
        width: spacingValue,
      );
    }

    return SizedBox(
      height: spacingValue,
      width: double.infinity,
    );
  }
}
