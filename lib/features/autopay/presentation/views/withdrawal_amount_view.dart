import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/presentation/widgets/autopay_widgets.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class WithdrawalAmountView extends StatelessWidget {
  WithdrawalAmountView({super.key});

  final AppLocalizations localizations = locator<MaLocalizations>().I;
  final UserBloc userBloc = locator<UserBloc>();
  final AutoPayBloc autopayBloc= locator<AutoPayBloc>();

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final isLoan = autopayBloc.state.isLoan;
    final isFullBalanceOnly =
        userBloc.state.user.primarySite.propertySettings.autoPayFullBalanceOnly;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        maAppBarType: MAAppBarType.blue,
        bottom: const MABottomAppBar(),
        title: Text(
          localizations.setupAutoPay,
          style: textTheme.titleSmall!.copyWith(
            color: colorPalette.appBarTextIcon,
          ),
        ),
      ),
      body: (isFullBalanceOnly || isLoan)
          ? VerticalRhythm(
              topChildren: const [
                TopWithdrawalAmount(),
              ],
              bottomChildren: [
                BottomWithdrawalAmount(),
              ],
              middleColor: colorPalette.surfaceContainerLowest,
              middleHeight: 80,
            )
          : ListView(
              children: const [
                TopWithdrawalAmount(),
                WithdrawalOptions(),
              ],
            ),
    );
  }
}
