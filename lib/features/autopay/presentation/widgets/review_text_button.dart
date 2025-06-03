import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class ReviewTextButton extends StatelessWidget {
  const ReviewTextButton(
    this.text, {
    this.onPressed,
    super.key,
  });

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    return Align(
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textTheme.hyperlink.copyWith(
            shadows: [
              Shadow(
                color: colorPalette.textLink,
                offset: const Offset(0, -4),
              )
            ],
            decorationColor: colorPalette.textLink,
          ),
        ),
      ),
    );
  }
}
