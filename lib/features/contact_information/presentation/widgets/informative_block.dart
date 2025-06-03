import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class InformativeBlock extends StatelessWidget {
  InformativeBlock({super.key});

  final localizations = locator<MaLocalizations>().I;
  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    return Container(
      color: colorPalette.surfaceBright,
      child: RelationalPadding(
        addVerticalPadding: true,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MAScaler(
              child: Icon(
                Icons.info_outline,
                color: colorPalette.primaryBase,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                localizations.informativeMessageContactInformation,
                style: textTheme.bodySmall,
              ),
            )
          ],
        ),
      ),
    );
  }
}
