import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/user_preferences/user_preferences_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/buttons.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_fixed_spacing.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/auth/routes.dart';
import 'package:resident_app/features/bills_and_payments/application/bloc/payments_bloc.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';
import 'package:resident_app/features/payment_account/application/bloc/property_payment_settings_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class DeclineDocumentsDialog extends StatelessWidget {
  const DeclineDocumentsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    final localizations = locator<MaLocalizations>().I;

    return Dialog(
      insetPadding: EdgeInsets.only(
        left: MAFixedSpacing.xxl,
        right: MAFixedSpacing.xxl,
      ),
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: colorPalette.surfaceContainerLowest,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    spreadRadius: 3,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(28),
              ),
              child: Column(
                children: [
                  Text(
                    localizations.declineTermsOfUseAndPrivacyPolicy,
                    style: textTheme.titleLarge,
                  ),
                  MASpacing.l(),
                  Text(
                    localizations.acceptDocumentsIsRequired,
                    style: textTheme.bodyMedium,
                  ),
                  MASpacing.xxl(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MAFixedSpacing.m,
                    ),
                    child: Column(
                      children: [
                        MATextButton(
                          text: localizations.goBackAndAccept,
                          onPressed: () => Navigator.pop(context),
                        ),
                        MAElevatedButton(
                          text: localizations.iDecline.toUpperCase(),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                            context.read<UserPreferencesBloc>().add(
                                  const UserPreferencesEvent.restart(),
                                );
                            locator<UserBloc>().add(const UserEvent.restart());
                            locator<PropertyPaymentSettingsBloc>().add(const PropertyPaymentSettingsEvent.restart());
                            locator<PayByTextBloc>().add(const PayByTextEvent.reset());
                            locator<PaymentsBloc>().add(const PaymentsEvent.restart());

                            context.goNamed(AuthRoutes.signIn.name!);
                          },
                        )
                      ],
                    ),
                  ),
                  MASpacing.xxl(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
