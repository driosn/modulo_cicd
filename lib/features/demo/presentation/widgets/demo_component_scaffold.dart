import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class DemoComponentScaffold extends StatelessWidget {
  const DemoComponentScaffold({
    super.key,
    required this.label,
    required this.child,
    this.useRelationalPadding = true,
  });

  final String label;
  final Widget child;
  final bool useRelationalPadding;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      color: colorPalette.surfaceBright,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RelationalPadding(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                label,
                style: textTheme.titleSmall,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          useRelationalPadding
              ? RelationalPadding(
                  child: child,
                )
              : child
        ],
      ),
    );
  }
}
