import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/user/user_feature.dart';

class SiteAddress extends StatelessWidget {
  const SiteAddress({
    super.key,
    required this.site,
    required this.iconColor,
    required this.textColor,
    this.onTap,
    this.padding,
    this.hideIcon = false,
  });

  final Site site;
  final Color iconColor;
  final Color textColor;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final bool hideIcon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();
    final userBloc = locator<UserBloc>();

    return BlocBuilder<UserBloc, UserState>(
      bloc: userBloc,
      builder: (context, state) {
        final hasAssociatedSites = state.user.associatedSites.isNotEmpty;

        return GestureDetector(
          onTap: hasAssociatedSites ? onTap : null,
          child: Padding(
            padding: padding ?? EdgeInsets.zero,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (!hideIcon) ...[
                        SvgPicture.asset(
                          fit: BoxFit.contain,
                          'assets/home.svg',
                          colorFilter: ColorFilter.mode(
                            iconColor,
                            BlendMode.srcIn,
                          ),
                          width: 24,
                          height: 24,
                        ),
                        MASpacing.l(
                          axis: Axis.horizontal,
                        ),
                      ],
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${localizations.site} ${site.siteName}',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: textColor,
                                ),
                              ),
                              Text(
                                site.address1,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: textColor,
                                ),
                              ),
                              Text(
                                '${site.city}, ${site.state} ${site.zipCode}',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: textColor,
                                ),
                              ),
                              Text(
                                site.propertyName,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: textColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      MASpacing.l(
                        axis: Axis.horizontal,
                      ),
                    ],
                  ),
                ),
                if (hasAssociatedSites && onTap != null)
                  Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 32,
                      color: textColor == colorPalette.textBase ? colorPalette.textMuted : textColor,
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
