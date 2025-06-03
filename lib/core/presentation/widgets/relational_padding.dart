import 'package:flutter/material.dart';
import 'package:resident_app/core/constants/constants.dart';

class RelationalPadding extends StatelessWidget {
  const RelationalPadding({
    super.key,
    required this.child,
    this.ratio = paddingRatio,
    this.addVerticalPadding = false,
  });

  final Widget child;
  final double ratio;
  final bool addVerticalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / ratio,
        vertical:
            addVerticalPadding ? MediaQuery.of(context).size.width / (ratio + 20 ) : 0,
      ),
      child: child,
    );
  }
}
