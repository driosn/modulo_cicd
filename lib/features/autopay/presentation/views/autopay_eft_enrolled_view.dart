import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/constants/illustrations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_divider.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/shared/helpers/svg_color_mapped.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class AutoPayEFTEnrolledView extends StatefulWidget {
  const AutoPayEFTEnrolledView({super.key});

  @override
  State<AutoPayEFTEnrolledView> createState() => _AutoPayEFTEnrolledViewState();
}

class _AutoPayEFTEnrolledViewState extends State<AutoPayEFTEnrolledView> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;

    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      appBar: MAAppBar(
        title: Text(localizations.setupAutoPay),
        maAppBarType: MAAppBarType.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MADivider(
            height: 5,
            color: colorPalette.appBarAccent,
          ),
          Expanded(
            child: RelationalPadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    localizations.youAreEnrolledInEft,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    localizations.autopayEftDescription,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: SvgPicture(
                      SvgAssetLoader(
                        Illustrations.autopay(context),
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
          ),
        ],
      ),
    );
  }
}
