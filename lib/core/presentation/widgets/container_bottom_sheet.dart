import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class ContainerBottomSheet extends StatelessWidget {
  const ContainerBottomSheet({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return Container(
      decoration: BoxDecoration(
        color: colorPalette.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(28),
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.75,
      child: RelationalPadding(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.close,
                    color: colorPalette.outline,
                  ),
                ),
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
              child: widget,
            )),
            const RelationalSpace(),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
