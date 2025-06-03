import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/presentation/widgets/scenarios_payment_withdrawal.dart';
import 'package:resident_app/features/autopay/presentation/widgets/set_up_is_completed.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class TopPaymentDate extends StatelessWidget {
  const TopPaymentDate({
    super.key,
    required this.title,
    required this.autoPayBloc,
  });

  final String title;
  final AutoPayBloc autoPayBloc;

  @override
  Widget build(BuildContext context) {
    // TODO: Find a good place to get user data
    final userBloc = locator<UserBloc>();
    final colorPalette = locator<ColorPalette>();
    final autoPayBloc = locator<AutoPayBloc>();
    final propertySettings = userBloc.state.user.primarySite.propertySettings;
    final days = propertySettings.autoPaySetMultipleDays;
    final isLoan = autoPayBloc.state.isLoan;
    print(autoPayBloc.state.setUpIsCompleted);
    return Container(
      color: colorPalette.surfaceContainerLowest,
      child: RelationalPadding(
        child: Column(
          children: [
            if (autoPayBloc.state.setUpIsCompleted) ...[
              MASpacing.l(),
              MASpacing.xxs(),
              const SetUpIsCompleted(),
            ],
            ScenariosPaymentWithdrawal(
              title: title,
              setupMultipleDays: days,
              isLoan: isLoan,
            )
          ],
        ),
      ),
    );
  }
}
