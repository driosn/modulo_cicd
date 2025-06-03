import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/helpers/navigation_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/presentation/enums/autopay_enums.dart';
import 'package:resident_app/features/autopay/presentation/widgets/autopay_cancel_dialog.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class BottomWithdrawalAmount extends StatelessWidget {
  BottomWithdrawalAmount({super.key, this.navigation, this.actionLabel});
  final VoidCallback? navigation;
  final String? actionLabel;

  final _userBloc = locator<UserBloc>().state;
  final _autoPayBloc = locator<AutoPayBloc>();
  @override
  Widget build(BuildContext context) {
    _autoPayBloc.add(
      AutoPayEvent.setWithdrawalAmount(_userBloc.user.primarySite.residentBalance.totalBalance.toString()),
    );
    _autoPayBloc.add(
      AutoPayEvent.setWithdrawalAmountOption(
        WithdrawalAmountOption.fullAmount,
      ),
    );
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    return Container(
      color: colorPalette.surfaceContainerLowest,
      child: RelationalPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MAElevatedButton.secondary(
              text: localizations.cancel.toUpperCase(),
              onPressed: () {
                const AutopayCancelDialog().showDialog(context);
              },
            ),
            const SizedBox(
              height: 16.0,
            ),
            MAElevatedButton.primary(
              onPressed: () {
                navigation ??
                    navigateToDebitAuthNextView(
                      context,
                      AutopayRoutes.paymentDate.name!,
                    );
              },
              text: actionLabel ?? localizations.nextButton,
            ),
            MASpacing.xxl(),
            MASpacing.s(),
          ],
        ),
      ),
    );
  }
}
