import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

part 'vertical_rhythm_dynamic_layout.dart';

class VerticalRhythm extends StatefulWidget {
  const VerticalRhythm({
    super.key,
    required this.topChildren,
    this.centerImage,
    this.centerImageHeight = 0,
    required this.bottomChildren,
    this.middleColor,
    this.middleHeight,
    this.topCrossAxisAlignment = CrossAxisAlignment.center,
    this.bottomCrossAxisAlignment = CrossAxisAlignment.center,
  });

  final List<Widget> topChildren;
  final Widget? centerImage;
  final double centerImageHeight;
  final List<Widget> bottomChildren;
  final Color? middleColor;
  final double? middleHeight;
  final CrossAxisAlignment topCrossAxisAlignment;
  final CrossAxisAlignment bottomCrossAxisAlignment;

  @override
  State<StatefulWidget> createState() => _VerticalRhythmState();
}

class _VerticalRhythmState extends State<VerticalRhythm> with WidgetsBindingObserver {
  bool isRendered = false;

  bool isFixedScenario = true;

  GlobalKey keyTop = GlobalKey();
  GlobalKey keyBottom = GlobalKey();

  late AppLocalizations localizations;

  _checkVerticalLimit(_) {
    if (keyTop.currentContext?.findRenderObject() != null && keyBottom.currentContext?.findRenderObject() != null) {
      //
      //! Top limit calculation
      //
      final RenderBox box = keyTop.currentContext?.findRenderObject() as RenderBox;
      final Offset position = box.localToGlobal(Offset.zero);
      final double startY = position.dy;
      final double topLimit = startY + widget.centerImageHeight;

      //
      //! Bottom limit calculation
      //
      final RenderBox box2 = keyBottom.currentContext?.findRenderObject() as RenderBox;
      final Offset position2 = box2.localToGlobal(Offset.zero);

      /// Bottom limit
      final double bottomLimit = position2.dy;

      //
      //! Check limits
      //
      if (topLimit < bottomLimit) {
        setState(() {
          isFixedScenario = true;
          isRendered = true;
        });
      } else {
        setState(() {
          isFixedScenario = false;
          isRendered = true;
        });
      }
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback(_checkVerticalLimit);
    localizations = locator<MaLocalizations>().I;
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeTextScaleFactor() {
    WidgetsBinding.instance.addPostFrameCallback(_checkVerticalLimit);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> topChildren = [
      Column(
        crossAxisAlignment: widget.topCrossAxisAlignment,
        children: [
          ...widget.topChildren,
          SizedBox.shrink(
            key: keyTop,
          ),
        ],
      ),
    ];
    List<Widget> bottomChildren = [
      SizedBox.shrink(
        key: keyBottom,
      ),
      ...widget.bottomChildren,
    ];
    return _VerticalRhythmDynamicLayout(
      topChildren: topChildren,
      centerImage: widget.centerImage,
      bottomChildren: bottomChildren,
      middleColor: widget.middleColor,
      middleHeight: widget.middleHeight,
      isRendered: isRendered,
      isFixedScenario: isFixedScenario,
      topCrossAxisAlignment: widget.topCrossAxisAlignment,
      bottomCrossAxisAlignment: widget.bottomCrossAxisAlignment,
    );
  }
}
