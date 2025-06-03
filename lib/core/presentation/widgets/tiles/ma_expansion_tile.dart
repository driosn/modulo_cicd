import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MADrawerExpansionTile extends ExpansionTile {
  final Icon icon;
  final Text name;
  final Color? activeColor;
  final Color? inactiveColor;
  final bool active;
  final List<Widget> subMenuItems;
  final ExpansionTileController controller;
  @override
  final Function(bool)? onExpansionChanged;
  MADrawerExpansionTile({
    this.onExpansionChanged,
    super.key,
    this.activeColor,
    this.inactiveColor,
    required this.active,
    required this.subMenuItems,
    required this.name,
    required this.icon,
    required this.controller,
  }) : super(
          controller: controller,
          title: Row(
            children: [
              icon,
              const SizedBox(
                width: 10,
              ),
              name,
            ],
          ),
          children: subMenuItems,
          collapsedBackgroundColor: inactiveColor,
          collapsedIconColor: locator<ColorPalette>().navigationDrawerIconText,
          iconColor: locator<ColorPalette>().navigationDrawerIconText,
          initiallyExpanded: active,
          backgroundColor: activeColor,
          onExpansionChanged: onExpansionChanged,
          tilePadding: const EdgeInsets.symmetric(horizontal: 32),
          childrenPadding:
              const EdgeInsets.symmetric(horizontal: 69, vertical: 8),
          shape: const Border(),
        );
}
