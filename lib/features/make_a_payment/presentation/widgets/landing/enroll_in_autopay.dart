import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class EnrollInAutoPay extends StatelessWidget {
  const EnrollInAutoPay({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
        top: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: colorPalette.surfaceContainerLow,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            localizations.automaticallyPayInfo,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodySmall!.copyWith(
              color: colorPalette.textBase,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/auto_pay.svg',
                colorFilter: ColorFilter.mode(
                  colorPalette.textLink,
                  BlendMode.srcIn,
                ),
                height: 24,
              ),
              const SizedBox(
                width: 4,
              ),
              Flexible(
                child: Text(
                  localizations.enrollInAutoPay,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.hyperlink.copyWith(
                    shadows: [
                      Shadow(
                        color: colorPalette.textLink,
                        offset: const Offset(0, -4),
                      )
                    ],
                    decorationColor: colorPalette.textLink,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
