import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/review_card.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_address.dart';
import 'package:resident_app/features/user/domain/entities/site.dart';

class SiteAddressCard extends StatelessWidget {
  SiteAddressCard({
    super.key,
    required this.site,
  });

  final Site site;

  final _localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return ReviewCard(
      cardTitle: _localizations.site,
      divider: true,
      icon: Icons.home_outlined,
      iconColor: colorPalette.iconBaseTextIcon,
      children: [
        SiteAddress(
          site: site,
          iconColor: colorPalette.iconBaseTextIcon,
          textColor: colorPalette.textBase,
          hideIcon: true,
        )
      ],
    );
  }
}
