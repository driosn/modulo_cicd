import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/constants/illustrations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/helpers/svg_color_mapped.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/billings.dart';
import 'package:resident_app/features/bills_and_payments/presentation/widgets/bill_tile.dart';

class BillsTabView extends StatelessWidget {
  BillsTabView({
    super.key,
    required this.billings,
  });

  final List<Billing> billings;

  final AppLocalizations localizations = locator<MaLocalizations>().I;
  final colorPalette = locator<ColorPalette>();

  @override
  Widget build(BuildContext context) {
    return billings.isEmpty
        ? _NoBillsWidget()
        : _BillingsListWidget(
            billings: billings,
          );
  }
}

class _BillingsListWidget extends StatelessWidget {
  _BillingsListWidget({
    required this.billings,
  });

  final List<Billing> billings;

  final AppLocalizations localizations = locator<MaLocalizations>().I;
  final colorPalette = locator<ColorPalette>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          localizations.billingMonthLabel,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: billings.length,
          itemBuilder: (context, index) {
            return BillTile(
              billing: billings[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: colorPalette.surfaceContainer,
              thickness: 1,
            );
          },
        ),
        MASpacing.l(),
      ],
    );
  }
}

class _NoBillsWidget extends StatelessWidget {
  _NoBillsWidget();

  final AppLocalizations localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final colorPalette = locator<ColorPalette>();
    return Column(
      children: [
        MASpacing.s(),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            localizations.noBills,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: locator<ColorPalette>().textBase,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SvgPicture(
            width: width,
            SvgAssetLoader(
              Illustrations.noPaymentDue(context),
              colorMapper: SvgColorMapper(
                fromColor: colorPlaceHolder,
                toColor: colorPalette.buttonPrimaryBg,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
