import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class CashPayNoPaymentDrawer extends StatefulWidget {
  const CashPayNoPaymentDrawer({
    super.key,
    this.onClosedDrawer,
  });

  final VoidCallback? onClosedDrawer;

  @override
  State<CashPayNoPaymentDrawer> createState() => _CashPayNoPaymentDrawerState();
}

class _CashPayNoPaymentDrawerState extends State<CashPayNoPaymentDrawer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).viewPadding;
    final topPadding = padding.top;
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  localizations.cashPay.toUpperCase(),
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: colorPalette.navigationDrawerIconText,
                      ),
                ),
                IconButton(
                  onPressed: () {
                    context.pop();

                    if (widget.onClosedDrawer != null) {
                      widget.onClosedDrawer!();
                    }
                  },
                  icon: Icon(
                    Icons.close,
                    color: colorPalette.navigationDrawerIconText,
                  ),
                )
              ],
            ),
          ),
          MASpacing.s(),
          Expanded(
            child: SingleChildScrollView(
              child: RelationalPadding(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MASpacing.s(),
                    Text(
                      localizations.noPaymentDue,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    MASpacing.xxl(),
                    Text(
                      localizations.noPaymentDueDescription,
                    ),
                    MASpacing.xxl(),
                    MASpacing.xxl(),
                    MASpacing.xxl(),
                    MASpacing.s(),
                    Center(
                      child: SizedBox(
                        height: 144,
                        width: 188,
                        child: SvgPicture.asset(
                          'assets/work-complete-DRAFT.svg',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          RelationalPadding(
            child: MAElevatedButton.secondary(
              child: Text(localizations.close),
              onPressed: () {
                context.pop();

                if (widget.onClosedDrawer != null) {
                  widget.onClosedDrawer!();
                }
              },
            ),
          ),
          MASpacing.xxl(),
          MASpacing.s(),
          SizedBox(
            height: MediaQuery.of(context).viewPadding.bottom / 2,
          )
        ],
      ),
    );
  }
}
