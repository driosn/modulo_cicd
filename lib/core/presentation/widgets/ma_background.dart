import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';

class MABackground extends StatelessWidget {
  const MABackground({
    super.key,
    required this.child,
    this.topPositionNotifier,
    this.verticalPadding = 0,
    this.useRelationalPadding = true,
  }) : _paddingRatio = paddingRatio;

  final Widget child;
  final double _paddingRatio;
  final double verticalPadding;
  final bool useRelationalPadding;
  final ValueNotifier<double>? topPositionNotifier;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final backgroundSvg = SizedBox(
      width: size.width,
      height: size.height,
      //todo: this need to change?
      child: SvgPicture.asset(
        'assets/background.svg',
        fit: BoxFit.fill,
      ),
    );

    return SizedBox.expand(
      child: Stack(
        children: [
          topPositionNotifier != null
              ? ValueListenableBuilder<double>(
                  valueListenable: topPositionNotifier!,
                  builder: (context, topPosition, child) {
                    return Positioned(
                      top: topPosition,
                      child: backgroundSvg,
                    );
                  },
                )
              : backgroundSvg,
          SizedBox.expand(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: verticalPadding,
              ),
              child: useRelationalPadding
                  ? RelationalPadding(
                      ratio: _paddingRatio,
                      child: child,
                    )
                  : child,
            ),
          )
        ],
      ),
    );
  }
}
