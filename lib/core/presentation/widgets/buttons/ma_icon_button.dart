import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MAIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget icon;
  final Color backgroundColor;
  final Color? foregroundColor;
  final EdgeInsetsGeometry padding;

  const MAIconButton({
    super.key,
    this.onPressed,
    required this.icon,
    this.backgroundColor = Colors.transparent,
    this.foregroundColor,
    this.padding = const EdgeInsets.all(4.0),
  });

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Center(
          child: Ink(
            decoration: ShapeDecoration(
              color: backgroundColor,
              shape: CircleBorder(
                side: BorderSide(
                  width: 2,
                  color: colorPalette.primary800,
                ),
              ),
            ),
            child: IconButton(
              color: foregroundColor,
              icon: icon,
              onPressed: onPressed,
              padding: padding,
            ),
          ),
        ),
      ),
    );
  }
}
