import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_tab.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MAUpDownTabBar extends StatefulWidget {
  const MAUpDownTabBar({
    super.key,
    required this.tabController,
    required this.tabs,
  })  : assert(tabs.length == 2),
        assert(tabController.length == 2);

  final TabController tabController;
  final List<MATab> tabs;

  @override
  State<MAUpDownTabBar> createState() => _MAUpDownTabBarState();
}

class _MAUpDownTabBarState extends State<MAUpDownTabBar> {
  @override
  void initState() {
    widget.tabController.index = 0;
    widget.tabController.addListener(() {
      if (widget.tabController.previousIndex != widget.tabController.index) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorPalette = locator<ColorPalette>();
    return Column(
      children: widget.tabs.map((tab) {
        return GestureDetector(
          onTap: () => widget.tabController.index = tab.index,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: widget.tabController.index == tab.index
                  ? colorPalette.buttonSegmentedSelectedBg
                  : colorPalette.surfaceContainerLowest,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: colorPalette.buttonSegmentedSelectedLabel,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Center(
                child: Text(
                  tab.label,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontWeight: widget.tabController.index == tab.index
                        ? FontWeight.w800
                        : null,
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
