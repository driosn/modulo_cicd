import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class EftnotificationMessage extends StatelessWidget {
  EftnotificationMessage({super.key});
  final colorPalette = locator<ColorPalette>();
  final localizations = locator<MaLocalizations>().I;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: colorPalette.goldAccent.withOpacity(0.1),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: RelationalPadding(
        addVerticalPadding: true,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MAScaler(
              child: Icon(
                Icons.info_outline,
                color: colorPalette.goldAccent,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                localizations.eftEnrolledNotification,
                style: textTheme.bodyMedium,
                selectionColor: colorPalette.primary900,
              ),
            )
          ],
        ),
      ),
    );
  }
}
