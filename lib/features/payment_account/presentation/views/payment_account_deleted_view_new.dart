import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/constants/illustrations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/fields/ma_text_field.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/helpers/svg_color_mapped.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';
import 'package:resident_app/features/pay_by_text/routes.dart';

class PaymentAccountDeletedView extends StatelessWidget {
  PaymentAccountDeletedView({super.key});

  final PayByTextBloc payByTextBloc = locator<PayByTextBloc>();
  final AppLocalizations localizations = locator<MaLocalizations>().I;
  final colorPalette = locator<ColorPalette>();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: colorPalette.surfaceContainerLowest,
        drawer: MADrawer(),
        appBar: MAAppBar(
          iconTheme: IconThemeData(
            color: colorPalette.appBarTextIcon,
          ),
          bottom: const MABottomAppBar(),
          maAppBarType: MAAppBarType.blue,
          title: Text(
            localizations.setupPayByText,
          ),
        ),
        body: VerticalRhythm(
          topChildren: [
            Container(
              color: colorPalette.surfaceContainerLowest,
              child: RelationalPadding(
                child: Column(
                  children: [
                    MASpacing.xxl(),
                    MASpacing.l(),
                    Align(
                      alignment: Alignment.center,
                      child: MATextField(
                        text: localizations.payByTextStarted,
                        textStyle: textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    MASpacing.xxl(),
                    Align(
                      alignment: Alignment.center,
                      child: MATextField(
                        text:
                            "${localizations.begins} ${localizations.nMonth(DateTime.now().month.toString())} 1, ${DateTime.now().year}",
                        textStyle: textTheme.titleMedium,
                      ),
                    ),
                    MASpacing.xxl(),
                    MASpacing.l(),
                    SvgPicture(
                      key: key,
                      fit: BoxFit.none,
                      SvgAssetLoader(
                        Illustrations.taskComplete(context),
                        colorMapper: SvgColorMapper(
                          fromColor: colorPlaceHolder,
                          toColor: colorPalette.buttonPrimaryBg,
                        ),
                      ),
                    ),
                    MASpacing.xxl(),
                    MASpacing.l(),
                  ],
                ),
              ),
            )
          ],
          bottomChildren: [
            Container(
              color: colorPalette.surfaceContainerLowest,
              child: RelationalPadding(
                  child: Column(
                children: [
                  MAElevatedButton.primary(
                      text: localizations.done.toUpperCase(),
                      onPressed: () {
                        context.goNamed(
                            PayByTextRoutes.payByTextLandingView.name!);
                      }),
                  MASpacing.l(),
                  MASpacing.xxs(),
                ],
              )),
            )
          ],
          middleColor: colorPalette.surfaceContainerLowest,
          middleHeight: 80,
        ),
      ),
    );
  }
}
