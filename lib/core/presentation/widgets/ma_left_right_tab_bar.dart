import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_tab.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MALeftRightTabBar extends StatefulWidget {
  const MALeftRightTabBar({
    super.key,
    required this.tabController,
    required this.tabs,
  })  : assert(tabs.length == 2),
        assert(tabController.length == 2);

  final TabController tabController;
  final List<MATab> tabs;

  @override
  State<MALeftRightTabBar> createState() => MATabBarState();
}

class MATabBarState extends State<MALeftRightTabBar> {
  late bool isLeftLabelBiggerThanRight;

  @override
  void initState() {
    if (widget.tabs.first.label.length > widget.tabs.last.label.length) {
      isLeftLabelBiggerThanRight = true;
    } else {
      isLeftLabelBiggerThanRight = false;
    }

    widget.tabController.index = 0;
    widget.tabController.addListener(() {
      if (widget.tabController.previousIndex != widget.tabController.index) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MALeftRightTabBar oldWidget) {
    if (widget.tabs.first.label.length > widget.tabs.last.label.length) {
      isLeftLabelBiggerThanRight = true;
    } else {
      isLeftLabelBiggerThanRight = false;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorPalette = locator<ColorPalette>();
    return Container(
      decoration: BoxDecoration(
        color: colorPalette.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(200),
        border: Border.all(
          color: colorPalette.outlineVariant,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: CustomPaint(
          painter: _MATabBarPainter(
            isLeft: widget.tabController.index == 0,
          ),
          child: Row(
            children: widget.tabs.map((tab) {
              return Expanded(
                child: GestureDetector(
                  onTap: () => widget.tabController.index = tab.index,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: tab.index == 0
                          ? isLeftLabelBiggerThanRight
                              ? 12
                              : 0
                          : isLeftLabelBiggerThanRight
                              ? 0
                              : 12,
                      horizontal: tab.index == 0
                          ? isLeftLabelBiggerThanRight
                              ? 12
                              : 0
                          : isLeftLabelBiggerThanRight
                              ? 0
                              : 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: tab.index == 0
                          ? const BorderRadius.only(
                              topLeft: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                            )
                          : const BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomRight: Radius.circular(100),
                            ),
                      border: Border(
                        left: isLeftLabelBiggerThanRight
                            ? tab.index == 0
                                ? BorderSide.none
                                : BorderSide.none
                            : tab.index == 0
                                ? BorderSide.none
                                : BorderSide(
                                    width: 1,
                                    color: colorPalette.outlineVariant,
                                  ),
                        right: isLeftLabelBiggerThanRight
                            ? tab.index == 0
                                ? BorderSide(
                                    width: 1,
                                    color: colorPalette.outlineVariant,
                                  )
                                : BorderSide.none
                            : tab.index == 0
                                ? BorderSide.none
                                : BorderSide.none,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        tab.label,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: colorPalette.buttonSegmentedSelectedLabel,
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
          ),
        ),
      ),
    );
  }
}

class _MATabBarPainter extends CustomPainter {
  const _MATabBarPainter({
    required this.isLeft,
  });

  final bool isLeft;

  @override
  void paint(Canvas canvas, Size size) {
    final colorPalette = locator<ColorPalette>();
    final paint = Paint()
      ..color = colorPalette.buttonSegmentedSelectedBg
      ..style = PaintingStyle.fill;

    final path = Path();

    if (isLeft) {
      path.moveTo(0, 0);
      path.lineTo(size.width / 2, 0);
      path.lineTo(size.width / 2, size.height);
      path.lineTo(0, size.height);
      path.lineTo(0, 0);
    } else {
      path.moveTo(size.width / 2, 0);
      path.lineTo(size.width, 0);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width / 2, size.height);
      path.lineTo(size.width / 2, size.height);
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_MATabBarPainter oldDelegate) {
    return oldDelegate.isLeft != isLeft;
  }
}
