import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/buttons.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/payment_account/routes.dart';

class PaymentAccountDeletedView extends StatelessWidget {
  PaymentAccountDeletedView({super.key});

  final _localizations = locator<MaLocalizations>().I;
  final _colorPalette = locator<ColorPalette>();
  final _paymentAccountsBloc = locator<PaymentAccountsBloc>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: _colorPalette.surfaceContainerLowest,
      drawer: MADrawer(),
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: _colorPalette.appBarTextIcon,
        ),
        maAppBarType: MAAppBarType.blue,
        title: Text(
          _localizations.paymentAccount,
        ),
        bottom: const MABottomAppBar(),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            _paymentAccountsBloc.add(
              PaymentAccountsEvent.restart(),
            );
            context.pushReplacementNamed(
              PaymentAccountRoutes.paymentAccountSettings.name!,
            );
          },
        ),
      ),
      body: RelationalPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MASpacing.xl(),
            Text(
              _localizations.paymentAccountDeleted,
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            MASpacing.xxl(),
            MASpacing.s(),
            Center(
              child: Icon(
                Icons.check_circle,
                size: 100,
                color: _colorPalette.tertiary700,
              ),
            ),
            const Spacer(),
            MAElevatedButton.secondary(
              text: _localizations.continueT.toUpperCase(),
              onPressed: () {
                _paymentAccountsBloc.add(
                  PaymentAccountsEvent.restart(),
                );
                context.pushReplacementNamed(
                  PaymentAccountRoutes.paymentAccountSettings.name!,
                );
              },
            ),
            MASpacing.xxl(),
            MASpacing.s(),
          ],
        ),
      ),
    );
  }
}
