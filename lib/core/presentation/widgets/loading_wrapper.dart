import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class LoadingWrapper extends StatelessWidget {
  const LoadingWrapper({
    super.key,
    required this.child,
    required this.isLoading,
  });

  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();

    return SizedBox.expand(
      child: Stack(
        children: [
          SizedBox.expand(
            child: child,
          ),
          isLoading
              ? Material(
                  color: colorPalette.secondary100.withOpacity(0.75),
                  child: const Center(
                    child: MACircularProgressIndicator(),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
