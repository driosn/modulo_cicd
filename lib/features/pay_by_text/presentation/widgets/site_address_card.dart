import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/review_card.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/review_label.dart';
import 'package:resident_app/features/user/user_feature.dart';

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
      cardTitle: _localizations.siteAddress,
      divider: true,
      icon: Icons.home_outlined,
      iconColor: colorPalette.iconBaseTextIcon,
      children: const [
        ReviewLabel("340 Riverstone Way"),
        ReviewLabel("Unit 892"),
        ReviewLabel("Santa Rosa, CA 90003"),
      ],
    );
  }
}
