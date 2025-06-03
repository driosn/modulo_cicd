import 'package:flutter/material.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MACircularProgressIndicator extends StatefulWidget {
  const MACircularProgressIndicator({
    super.key,
    this.size = defaultProgressIndicatorSize,
    this.numberOfDots = progressIndicatorDots,
  });

  final double size;
  final int numberOfDots;

  @override
  State<MACircularProgressIndicator> createState() =>
      _MACircularProgressIndicatorState();
}

class _MACircularProgressIndicatorState
    extends State<MACircularProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> dotPosition;
  late ColorPalette _colorPalette;

  @override
  void initState() {
    _colorPalette = locator<ColorPalette>();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    dotPosition =
        IntTween(begin: 1, end: progressIndicatorDots).animate(_controller);

    _controller.addListener(() async {
      if (_controller.isCompleted) {
        _controller.reset();
        _controller.forward();
      }
    });

    _controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dotSize = widget.size / 7;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
      ),
      height: widget.size,
      width: widget.size,
      child: Stack(children: [
        for (int index = 0; index < progressIndicatorDots; index++)
          Center(
            child: RotationTransition(
              turns:
                  AlwaysStoppedAnimation(index * (1 / progressIndicatorDots)),
              child: Transform.translate(
                offset: Offset(0, -widget.size / 2.25),
                child: AnimatedBuilder(
                  animation: dotPosition,
                  builder: (context, child) {
                    double opacity = ((-(index / progressIndicatorDots)) -
                            ((dotPosition.value / progressIndicatorDots) - 1)
                                .abs())
                        .abs();

                    return Opacity(
                      opacity: opacity == 0.0
                          ? 1.0
                          : opacity > 1.0
                              ? opacity - 1.0
                              : opacity,
                      child: Container(
                        height: dotSize,
                        decoration: BoxDecoration(
                          color: _colorPalette.primaryBase,
                          shape: BoxShape.circle,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
      ]),
    );
  }
}
