import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_info_card.dart';
import 'package:resident_app/features/user/domain/entities/site.dart';

class SiteInfoBox extends StatelessWidget {
  const SiteInfoBox({
    super.key,
    required this.site,
    required this.onTap,
  });

  final Site site;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: colorPalette.appBarBg,
      ),
      child: RelationalPadding(
        child: SiteInfoCard.dark(
          site: site,
          onTap: onTap,
        ),
      ),
    );
  }
}
