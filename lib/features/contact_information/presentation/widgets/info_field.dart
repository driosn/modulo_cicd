import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class InfoField extends StatelessWidget {
  const InfoField(
      {super.key,
      required this.title,
      this.subtitle,
      required this.values,
      this.navigation,
      this.icon = Icons.arrow_forward});
  const InfoField.navigable(
      {super.key,
      required this.title,
      this.subtitle,
      required this.values,
      required this.navigation,
      this.icon = Icons.arrow_forward});

  final String title;
  final String? subtitle;
  final List<String> values;
  final VoidCallback? navigation;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: theme.textTheme.labelMedium!.copyWith(
            color: colorPalette.textMuted,
          ),
        ),
        MASpacing.xs(),
        if (subtitle != null)
          Text(
            subtitle!,
            style: theme.textTheme.bodyMedium,
          ),
        if (subtitle != null) MASpacing.m(),
        ...values.map(
          (v) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    v,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                if (navigation != null)
                  SizedBox(
                    child: IconButton(
                      icon: Icon(icon),
                      onPressed: navigation,
                    ),
                  ),
              ]),
        ),
      ],
    );
  }
}
