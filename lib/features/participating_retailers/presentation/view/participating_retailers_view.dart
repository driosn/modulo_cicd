import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_fixed_spacing.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class ParticipatingRetailersView extends StatelessWidget {
  const ParticipatingRetailersView({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    final userBloc = locator<UserBloc>();
    return Scaffold(
      backgroundColor: locator<ColorPalette>().surfaceContainerLowest,
      body:
      Column(
        children: [
          MASpacing.xxl(),
          MASpacing.s(),
          _Title(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MAFixedSpacing.xxl, left: MAFixedSpacing.xxl, right: MAFixedSpacing.xxl, top: MAFixedSpacing.s),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(localizations.paymentsUpToMaxAmountAccepted("${userBloc.state.user.everywareSettings.maximumPaymentAmount.toInt()}"), style: Theme.of(context).textTheme.titleSmall),
                    MASpacing.m(),
                    retailerCard(localizations.sevenEleven, "assets/retailers/7-eleven.png"),
                    MASpacing.m(),
                    Text(localizations.paymentsUpTo999Accepted, style: Theme.of(context).textTheme.titleSmall),
                    MASpacing.m(),
                    Wrap(
                      spacing: MAFixedSpacing.s,
                      runSpacing: MAFixedSpacing.s,
                      children: [
                        retailerCard(localizations.cvsPharmacy, "assets/retailers/cvs.png"),
                        retailerCard(localizations.kroger, "assets/retailers/kroger.png"),
                        retailerCard(localizations.gomart, "assets/retailers/gomart.png"),
                        retailerCard(localizations.saveMart, "assets/retailers/save-mart.png"),
                        retailerCard(localizations.kwikTrip, "assets/retailers/kwik-trip.png"),
                        retailerCard(localizations.walgreensDuaneReed, "assets/retailers/walgreens.png"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget retailerCard(String name, String imagePath) {
    return LayoutBuilder(builder: (context, constraints) {
      double textScaleFactor = locator<ScalerConfig>().scaleFactor;
      bool isLargeText = textScaleFactor > 1.5; // Adjust threshold as needed
      double width = isLargeText ? constraints.maxWidth : (constraints.maxWidth - 10) / 2;
      return InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 132),
          child: Container(
            width: width,
            padding: EdgeInsets.all(MAFixedSpacing.s),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: locator<ColorPalette>().surfaceContainerLow),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(imagePath, width: 132, height: 40),
                SizedBox(height: MAFixedSpacing.xs),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                  softWrap: true,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class _Title extends StatelessWidget {
  final localizations = locator<MaLocalizations>().I;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
          bottom: MAFixedSpacing.m, left: MAFixedSpacing.xxl, right: MAFixedSpacing.m, top: MAFixedSpacing.xxl),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(localizations.participatingRetailers,maxLines: 3, softWrap:true,style: Theme.of(context).textTheme.titleMedium)),
          IconButton(
            icon: Icon(Icons.close, color: locator<ColorPalette>().iconBaseTextIcon),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}