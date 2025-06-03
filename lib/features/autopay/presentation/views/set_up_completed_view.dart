import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_background.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class SetUpCompleted extends StatelessWidget {
  const SetUpCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      body: const MABackground(
        child: RelationalPadding(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Set up not completed"),
            ],
          ),
        ),
      ),
    );
  }
}
