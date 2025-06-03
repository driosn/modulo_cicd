import 'package:flutter/material.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class RelationalSpace extends StatelessWidget {
  const RelationalSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return Container(
      height: relationalSpaceHeight,
      color: showRelationalSpaces ? colorPalette.aquaAccent : null,
    );
  }
}
