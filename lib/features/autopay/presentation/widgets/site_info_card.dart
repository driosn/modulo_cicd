import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/user/domain/entities/site.dart';

class SiteInfoCard extends StatelessWidget {
  const SiteInfoCard({
    super.key,
    this.color,
    this.onTap,
    required this.site,
    this.multipleSites = false,
  }) : isOnDarkMode = false;

  const SiteInfoCard.dark({
    super.key,
    this.color,
    this.onTap,
    required this.site,
    this.multipleSites = false,
  }) : isOnDarkMode = true;

  final bool isOnDarkMode;
  final Color? color;
  final bool multipleSites;
  final VoidCallback? onTap;

  final Site site;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorPalette = locator<ColorPalette>();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                MAScaler(
                  //TODO Fix icon not rendered complete
                  child: SvgPicture.asset(
                    fit: BoxFit.contain,
                    'assets/home.svg',
                    colorFilter: ColorFilter.mode(
                      isOnDarkMode
                          ? colorPalette.secondary100
                          : colorPalette.iconBaseTextIcon,
                      BlendMode.srcIn,
                    ),
                    width: 24,
                    height: 24,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        site.address1,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: isOnDarkMode
                              ? colorPalette.appBarTextIcon
                              : colorPalette.textBase,
                        ),
                      ),
                      Text(
                        '${site.city}, ${site.state} ${site.zipCode}',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: isOnDarkMode
                              ? colorPalette.appBarTextIcon
                              : colorPalette.textBase,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                if (multipleSites)
                  Align(
                    alignment: Alignment.centerRight,
                    child: MAScaler(
                      child: Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: colorPalette.textMuted,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
