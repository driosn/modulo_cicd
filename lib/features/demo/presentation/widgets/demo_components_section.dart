import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class DemoComponentsSection extends StatelessWidget {
  const DemoComponentsSection({
    super.key,
    required this.sectionName,
    required this.components,
  });

  final String sectionName;
  final List<Widget> components;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    return ExpansionTile(
      backgroundColor: colorPalette.surfaceContainerLowest,
      collapsedBackgroundColor: colorPalette.surfaceContainerLowest,
      collapsedIconColor: colorPalette.textBase,
      title: Text(
        sectionName,
        style: textTheme.bodyMedium,
      ),
      children: components,
    );
  }
}
