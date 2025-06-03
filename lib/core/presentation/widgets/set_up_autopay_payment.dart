import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
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
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/register_site/presentation/widgets/ma_bottom_safe_spacing.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

import 'buttons/ma_elevated_button.dart';

class SetUpAutopayPayment extends StatelessWidget {
  SetUpAutopayPayment({
    super.key,
    required this.autoPayBloc,
    required this.title,
    required this.description,
    required this.svgAssetPath,
    required this.colorFilter,
    required this.goRouteName,
    required this.appBarTitle,
    required this.buttonTitle,
  });

  final AutoPayBloc autoPayBloc;
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
      body: RelationalPadding(
        child: VerticalRhythm(
          topCrossAxisAlignment: CrossAxisAlignment.start,
          topChildren: [
            MASpacing.xxl(),
            Text(
              title,
              style: textTheme.titleLarge,
              textAlign: TextAlign.start,
            ),
            MASpacing.xxl(),
            Text(
              key: key,
              description,
              textAlign: TextAlign.start,
              style: textTheme.bodyMedium,
            ),
            MASpacing.xxl(),
            MASpacing.l(),
            Center(
              child: SvgPicture(
                width: width / 3 * 2,
                SvgAssetLoader(
                  svgAssetPath,
                  colorMapper: SvgColorMapper(
                    fromColor: colorPlaceHolder,
                    toColor: colorPalette.buttonPrimaryBg,
                  ),
                ),
              ),
            ),
            MASpacing.xl(),
            MASpacing.xl(),
          ],
          bottomChildren: [
            Column(
              children: [
                BlocBuilder<AutoPayBloc, AutoPayState>(
                  bloc: autoPayBloc,
                  builder: (context, state) {
                    return MAElevatedButton.secondary(
                      text: localizations.cancelSetup,
                      onPressed: () {
                        context.pop();
                      },
                    );
                  },
                ),
                MASpacing.l(),
                BlocBuilder<AutoPayBloc, AutoPayState>(
                  bloc: autoPayBloc,
                  builder: (context, state) {
                    return MAElevatedButton.primary(
                      text: buttonTitle,
                      onPressed: () {
                        if (hasEftEnrolled()) {
                          navigateEftEnrolled(context);
                          return;
                        }
                        autoPayBloc.add(const AutoPayEvent.configureAutoPay());
                        context.pushNamed(goRouteName);
                      },
                    );
                  },
                ),
              ],
            ),
            MASpacing.bottomPadding(),
            MABottomSafeSpacing(
              context: context,
            ),
          ],
        ),
      ),
    );
  }

  bool hasEftEnrolled() => locator<UserBloc>()
      .state
      .user
      .primarySite
      .residentBalance
      .isEftConfigured;

  void navigateEftEnrolled(BuildContext context) =>
      context.pushNamed(AutopayRoutes.autopayEftEnrolled.name!);
}
