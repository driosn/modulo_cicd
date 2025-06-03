import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/cashpay/presentation/widgets/loans_cashpay.dart';
import 'package:resident_app/features/cashpay/presentation/widgets/rent_cashpay.dart';
import 'package:resident_app/features/user/user_feature.dart';

class CashPayPaymentDueDrawer extends StatefulWidget {
  const CashPayPaymentDueDrawer({
    super.key,
    this.onClosedDrawer,
  });

  final VoidCallback? onClosedDrawer;

  @override
  State<CashPayPaymentDueDrawer> createState() =>
      _CashPayPaymentDueDrawerState();
}

class _CashPayPaymentDueDrawerState extends State<CashPayPaymentDueDrawer> {
  final UserBloc _userBloc = locator<UserBloc>();
  late PropertySettings _propertySettings;
  late ResidentBalance _residentBalance;

  @override
  void initState() {
    _propertySettings = _userBloc.state.user.primarySite.propertySettings;
    _residentBalance = _userBloc.state.user.primarySite.residentBalance;

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
                      localizations.paymentDue,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    MASpacing.xxl(),
                    Text(
                      localizations.paymentDueDescription,
                    ),
                    MASpacing.xxl(),
                    RentSectionCashPay(
                      propertySettings: _propertySettings,
                      residentBalance: _residentBalance,
                    ),
                    LoansCashPay(
                      loans: _residentBalance.loans,
                    )
                  ],
                ),
              ),
            ),
          ),
          RelationalPadding(
            child: MAElevatedButton.secondary(
              child: Text(
                localizations.close,
              ),
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
