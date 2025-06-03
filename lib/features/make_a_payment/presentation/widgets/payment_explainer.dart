import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/container_bottom_sheet.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';

class PaymentExplainer extends StatelessWidget {
  PaymentExplainer({super.key});

  final _localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    //TODO Refactor text/sizedbox block
    return ContainerBottomSheet(
      widget: Container(
        color: colorPalette.surfaceContainerLowest,
        child: BlocBuilder<WhitelabelBloc, WhitelabelState>(
          bloc: locator<WhitelabelBloc>(),
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _localizations.aboutMakingPayments,
                  style: textTheme.titleLarge,
                ),
                const RelationalSpace(),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  _localizations.whatIsCurrentBalance,
                  style: textTheme.titleSmall,
                ),
                const RelationalSpace(),
                Text(
                  _localizations.amountOweFromCurrentBill,
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  _localizations.whatIsTotalBalance,
                  style: textTheme.titleSmall?.copyWith(
                    color: colorPalette.primary700,
                  ),
                ),
                const RelationalSpace(),
                Text(
                  _localizations.amountOweAndAnyAdditional,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorPalette.primary700,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  _localizations.iJustPaidIStillHaveBalance(state.whitelabel.appName),
                  style: textTheme.titleSmall?.copyWith(
                    color: colorPalette.primary700,
                  ),
                ),
                const RelationalSpace(),
                Text(
                  _localizations.allowUpForFortyEightHours(state.whitelabel.appName),
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorPalette.primary700,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  _localizations.amountDoesNotOnMyBill(state.whitelabel.appName),
                  style: textTheme.titleSmall?.copyWith(
                    color: colorPalette.primary700,
                  ),
                ),
                const RelationalSpace(),
                Text(
                  _localizations.occasionallyAmountDue(state.whitelabel.appName),
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorPalette.primary700,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
