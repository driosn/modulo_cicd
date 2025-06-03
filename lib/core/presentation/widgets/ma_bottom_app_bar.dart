import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MABottomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MABottomAppBar({
    super.key,
    this.height = 5.0,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        color: colorPalette.appBarAccent,
        height: height,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
