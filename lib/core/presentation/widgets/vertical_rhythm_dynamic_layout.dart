part of 'vertical_rhythm.dart';

class _VerticalRhythmDynamicLayout extends StatefulWidget {
  const _VerticalRhythmDynamicLayout({
    required this.topChildren,
    this.centerImage,
    required this.bottomChildren,
    this.middleColor,
    this.middleHeight,
    required this.isRendered,
    required this.isFixedScenario,
    required this.topCrossAxisAlignment,
    required this.bottomCrossAxisAlignment,
  });

  final List<Widget> topChildren;
  final Widget? centerImage;
  final List<Widget> bottomChildren;
  final Color? middleColor;
  final double? middleHeight;
  final bool isRendered;
  final bool isFixedScenario;
  final CrossAxisAlignment topCrossAxisAlignment;
  final CrossAxisAlignment bottomCrossAxisAlignment;

  @override
  State<_VerticalRhythmDynamicLayout> createState() => __VerticalRhythmDynamicLayoutState();
}

class __VerticalRhythmDynamicLayoutState extends State<_VerticalRhythmDynamicLayout> {
  //
  final ColorPalette colorPalette = locator<ColorPalette>();

  @override
  Widget build(BuildContext context) {
    return widget.isFixedScenario

        ///
        /// Fixed view
        ///
        ? Opacity(
            opacity: widget.isRendered ? 1.0 : 0.0,
            child: Stack(
              children: [
                Container(
                  color: widget.middleColor ?? colorPalette.surfaceContainerLowest,
                  height: double.infinity,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: widget.topCrossAxisAlignment,
                  children: [
                    ...widget.topChildren,
                    widget.centerImage ?? Container(),
                  ],
                ),
                Column(
                  crossAxisAlignment: widget.bottomCrossAxisAlignment,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: widget.bottomChildren,
                ),
              ],
            ),
          )

        ///
        /// Scrolled view
        ///
        : ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...widget.topChildren,
                  widget.centerImage ?? Container(),
                  Container(
                    height: widget.middleHeight,
                    color: widget.middleColor ?? colorPalette.surfaceContainerLowest,
                  ),
                  ...widget.bottomChildren
                ],
              ),
            ],
          );
  }
}
