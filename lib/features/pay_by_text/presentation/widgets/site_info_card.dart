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
  }) : isOnDarkMode = false;

  const SiteInfoCard.dark({
    super.key,
    this.color,
    this.onTap,
    required this.site,
  }) : isOnDarkMode = false;

  final bool isOnDarkMode;
  final Color? color;
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MAScaler(
                  child: SvgPicture.asset(
                    fit: BoxFit.contain,
                    'assets/home.svg',
                    colorFilter: ColorFilter.mode(
                      isOnDarkMode
                          ? colorPalette.secondary100
                          : colorPalette.iconBaseTextIcon,
                      BlendMode.srcIn,
                    ),
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
                )
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
