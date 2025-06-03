import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/site_selector.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/helpers/svg_color_mapped.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/user/user_feature.dart';

class SiteSelectorDrawer extends StatelessWidget {
  const SiteSelectorDrawer({
    super.key,
    this.onSelectedSite,
    this.onClosedDrawer,
  });

  final Function(Site onSelectedSite)? onSelectedSite;
  final VoidCallback? onClosedDrawer;

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).viewPadding;
    final topPadding = padding.top;
    final colorPalette = locator<ColorPalette>();

    return Container(
      padding: EdgeInsets.only(
        top: topPadding,
      ),
      height: double.infinity,
      width: double.infinity,
      color: colorPalette.surfaceContainerLowest,
      child: Column(
        children: [
          MASpacing.m(),
          RelationalPadding(
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MAScaler(
                        child: SvgPicture(
                          SvgAssetLoader(
                            'assets/home.svg',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'SITES',
                        style: Theme.of(context).textTheme.titleSmall,
                      )
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context.pop();

                    if (onClosedDrawer != null) {
                      onClosedDrawer!();
                    }
                  },
                  icon: Icon(
                    Icons.close,
                    color: colorPalette.textBase,
                  ),
                )
              ],
            ),
          ),
          MASpacing.s(),
          Expanded(
            child: SingleChildScrollView(
              child: SiteSelector(
                onSelectedSite: onSelectedSite,
              ),
            ),
          )
        ],
      ),
    );
  }
}
