import 'dart:math';

import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MAAccordionTile {
  MAAccordionTile({
    required this.title,
    required this.children,
  })  : assert(children.isNotEmpty),
        isExpandedNotifier = ValueNotifier<bool>(false);

  final String title;
  final List<Widget> children;
  late ValueNotifier<bool> isExpandedNotifier;
}

abstract class MAAccordionItem {
  Widget build();
}

class MAAccordionTextItem implements MAAccordionItem {
  const MAAccordionTextItem({
    required this.text,
    this.style,
  });

  final String text;
  final TextStyle? style;

  @override
  Widget build() => Text(
        text,
        style: style,
      );
}

class MAAccordionCustomItem implements MAAccordionItem {
  const MAAccordionCustomItem({
    required this.child,
  });

  final Widget child;

  @override
  Widget build() => child;
}

class MAAccordion extends StatefulWidget {
  const MAAccordion({
    super.key,
    required this.title,
    required this.tiles,
    this.subtitle,
    this.titleStyle,
    this.openCloseLabel,
  });

  final String title;
  final TextStyle? titleStyle;
  final String? subtitle;
  final List<MAAccordionTile> tiles;
  final (String, String)? openCloseLabel;

  @override
  State<MAAccordion> createState() => _MAAccordionState();
}

class _MAAccordionState extends State<MAAccordion> {
  late List<ExpansionTileController> _controllers;
  late ValueNotifier<int> _numberOfOpenedTilesNotifier;

  @override
  void initState() {
    _controllers = [];

    // ignore: unused_local_variable
    for (final tile in widget.tiles) {
      _controllers.add(ExpansionTileController());
    }
    _numberOfOpenedTilesNotifier = ValueNotifier<int>(0);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void expandAll() {
    for (final controller in _controllers) {
      controller.expand();
    }
  }

  void collapseAll() {
    for (final controller in _controllers) {
      controller.collapse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;

    return Container(
      key: widget.key,
      color: colorPalette.surfaceContainerLowest,
      child: Column(
        children: [
          ValueListenableBuilder(
            valueListenable: _numberOfOpenedTilesNotifier,
            builder: (context, numberOfOpenedTiles, child) {
              return _Header(
                title: widget.title,
                subtitle: widget.subtitle,
                titleStyle: widget.titleStyle,
                actionLabel: numberOfOpenedTiles == 0 ? localizations.accordionOpenAll : localizations.accordionCloseAll,
                onOpenCloseAllPressed: numberOfOpenedTiles == 0 ? expandAll : collapseAll,
              );
            },
          ),
          ...List.generate(widget.tiles.length, (index) {
            final tile = widget.tiles[index];
            final controller = _controllers[index];

            return Theme(
              data: Theme.of(context).copyWith(
                dividerColor: colorPalette.surfaceDim,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: ExpansionTile(
                controller: controller,
                collapsedShape: const LinearBorder(
                  bottom: LinearBorderEdge(
                    size: 1,
                  ),
                ),
                tilePadding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                expandedAlignment: Alignment.centerLeft,
                childrenPadding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  bottom: 32,
                ),
                title: ValueListenableBuilder(
                  valueListenable: tile.isExpandedNotifier,
                  builder: (context, isExpanded, child) {
                    return Text(
                      tile.title,
                      style: isExpanded ? Theme.of(context).textTheme.titleSmall : Theme.of(context).textTheme.bodyMedium,
                    );
                  },
                ),
                collapsedIconColor: colorPalette.textMuted,
                iconColor: colorPalette.textBase,
                trailing: MAScaler(
                  child: ValueListenableBuilder(
                    valueListenable: tile.isExpandedNotifier,
                    builder: (context, isExpanded, child) {
                      return isExpanded
                          ? Transform.rotate(
                              angle: pi * 0.5,
                              child: const Icon(Icons.chevron_left),
                            )
                          : Transform.rotate(
                              angle: pi * 0.5,
                              child: const Icon(Icons.chevron_right),
                            );
                    },
                  ),
                ),
                onExpansionChanged: (isExpanded) {
                  tile.isExpandedNotifier.value = isExpanded;
                  if (isExpanded) {
                    _numberOfOpenedTilesNotifier.value = _numberOfOpenedTilesNotifier.value + 1;
                  } else {
                    _numberOfOpenedTilesNotifier.value = _numberOfOpenedTilesNotifier.value - 1;
                  }
                },
                children: tile.children,
              ),
            );
          }),
          MASpacing.xxl(),
          MASpacing.xxl(),
          MASpacing.xxl(),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.title,
    required this.onOpenCloseAllPressed,
    required this.actionLabel,
    this.subtitle,
    this.titleStyle,
  });

  final String title;
  final TextStyle? titleStyle;
  final String? subtitle;
  final String actionLabel;
  final VoidCallback onOpenCloseAllPressed;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final scalerConfig = locator<ScalerConfig>();

    return Container(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: scalerConfig.spacingL,
      ),
      child: Column(
        children: [
          Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: titleStyle ?? Theme.of(context).textTheme.titleSmall,
              ),
              if (subtitle != null) ...[
                subtitle!.isNotEmpty ? MASpacing.l() : SizedBox(),
                subtitle!.isNotEmpty
                    ? Text(
                        subtitle!,
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    : SizedBox()
              ]
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              GestureDetector(
                onTap: onOpenCloseAllPressed,
                child: Text(
                  actionLabel,
                  style: Theme.of(context).textTheme.hyperlink.copyWith(
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
            ],
          ),
        ],
      ),
    );
  }
}
