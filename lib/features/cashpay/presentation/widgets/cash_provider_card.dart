import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

enum CashPaymentProviderType {
  zego,
  westernUnion,
}

class CashPaymentProviderCard extends StatelessWidget {
  const CashPaymentProviderCard({
    super.key,
    required this.type,
    required this.title,
    required this.subTitle,
    required this.name,
    required this.code,
    this.posName,
    this.posCodeCity,
    required this.onTapFindALocation,
  });

  final CashPaymentProviderType type;
  final String title;
  final String subTitle;
  final String name;
  final String code;
  final String? posName;
  final String? posCodeCity;
  final VoidCallback onTapFindALocation;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;

    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 40,
        left: 32,
        right: 32,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: colorPalette.primary400,
            width: 2,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          MASpacing.s(),
          Text(
            subTitle,
          ),
          MASpacing.l(),
          Text(
            name,
          ),
          MASpacing.s(),
          Text(
            code,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              height: 32 / 24,
              letterSpacing: 3.0,
            ),
          ),
          MASpacing.l(),
          if (posName != null)
            Text(
              '${localizations.posName}: $posName',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          if (posName != null) MASpacing.s(),
          if (posCodeCity != null)
            Text(
              '${localizations.posCodeCity}: $posCodeCity',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          InkWell(
            onTap: () {},
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorPalette.secondary100,
                  ),
                  child: Icon(
                    Icons.location_on_outlined,
                    color: colorPalette.iconLinkTextIcon,
                    size: 26,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Flexible(
                  child: TextButton(
                    onPressed: onTapFindALocation,
                    child: Text(
                      localizations.findALocation,
                      style: Theme.of(context).textTheme.hyperlink.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            height: 48 / 17,
                            shadows: [
                              Shadow(
                                color: colorPalette.textLink,
                                offset: const Offset(0, -4),
                              )
                            ],
                            decorationColor: colorPalette.textLink,
                          ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
