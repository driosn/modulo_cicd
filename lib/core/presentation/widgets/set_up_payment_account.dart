import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/helpers/svg_color_mapped.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

import 'buttons/ma_elevated_button.dart';

class SetUpPaymentAccount extends StatelessWidget {
  SetUpPaymentAccount({
    super.key,
    required this.title,
    required this.description,
    required this.svgAssetPath,
    required this.colorFilter,
    required this.goRouteName,
    required this.appBarTitle,
    required this.buttonTitle,
  });

  final String title;
  final String description;
  final String svgAssetPath;
  final String appBarTitle;
  final String buttonTitle;
  final ColorFilter? colorFilter;
  final String goRouteName;

  final AppLocalizations localizations = locator<MaLocalizations>().I;
  final colorPalette = locator<ColorPalette>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      drawer: MADrawer(
        items: MADrawer.defaultItems,
      ),
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        maAppBarType: MAAppBarType.blue,
        bottom: const MABottomAppBar(),
        title: Text(
          appBarTitle,
          style: textTheme.titleSmall!.copyWith(
            color: colorPalette.appBarTextIcon,
          ),
        ),
      ),
      body: VerticalRhythm(
        topChildren: [
          RelationalPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MASpacing.xxl(),
                MASpacing.m(),
                Text(
                  title,
                  style: textTheme.titleLarge,
                  textAlign: TextAlign.start,
                ),
                MASpacing.xxl(),
                MASpacing.s(),
                Text(
                  key: key,
                  description,
                  textAlign: TextAlign.start,
                  style: textTheme.bodyMedium,
                ),
                MASpacing.xxl(),
                MASpacing.s(),
                Center(
                  child: SvgPicture(
                    height: width / 3 * 2,
                    SvgAssetLoader(
                      svgAssetPath,
                      colorMapper: SvgColorMapper(
                        fromColor: colorPlaceHolder,
                        toColor: colorPalette.buttonPrimaryBg,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        bottomChildren: [
          RelationalPadding(
            child: Column(
              children: [
                MAElevatedButton.primary(
                  text: buttonTitle,
                  onPressed: () {
                    context.goNamed(goRouteName);
                  },
                ),
                MASpacing.xxl(),
                MASpacing.s(),
              ],
            ),
          ),
        ],
        middleColor: colorPalette.surfaceContainerLowest,
        middleHeight: 80,
      ),
    );
  }
}
