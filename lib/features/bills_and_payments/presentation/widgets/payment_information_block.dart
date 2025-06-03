import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/badges/multi_char_badge.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class PaymentInformationBlock extends StatelessWidget {
  PaymentInformationBlock({
    super.key,
    required this.title,
    required this.content,
    this.isInProgress = false,
  });

  final String title;
  final String content;
  final bool isInProgress;
  final _localizations = locator<MaLocalizations>().I;
  final _colorPalette = locator<ColorPalette>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorPalette = locator<ColorPalette>();
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: colorPalette.secondary100,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: theme.textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.w400,
                color: colorPalette.textMuted,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Text(
                  content,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                if (isInProgress)
                  MultiCharBadge(
                    label: _localizations.inProgress,
                    color: _colorPalette.badgeMultiChar,
                    textColor: _colorPalette.badgeMultiCharLabel,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
