import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:resident_app/core/application/bloc/user_preferences/user_preferences_bloc.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_divider.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/make_a_payment/presentation/widgets/autopay_info_card.dart';
import 'package:resident_app/features/make_a_payment/presentation/widgets/payment_due_info.dart';
import 'package:resident_app/features/user/domain/entities/user.dart';

class RentSection extends StatelessWidget {
  RentSection({
    super.key,
    required this.propertySettings,
    required this.residentBalance,
    required this.resident,
  });

  final PropertySettings propertySettings;
  final ResidentBalance residentBalance;
  final Resident resident;

  final localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        Text(
          localizations.rent.toUpperCase(),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        MASpacing.s(),
        MADivider(
          height: 2,
          color: colorPalette.tertiaryBase,
        ),
        MASpacing.l(),
        _pendingPayments(context),
      ],
    );
  }

  Widget _pendingPayments(BuildContext context) {
    // TODO: Update this when handling language
    Language selectedLanguage = context.read<UserPreferencesBloc>().state.selectedLanguage;
    final DateFormat dateFormat = selectedLanguage == Language.english ? DateFormat('MMM d, yyyy', 'en_ES') : DateFormat('MMM d, yyyy', 'es_US');

    final localizations = locator<MaLocalizations>().I;

    return Column(
      children: [
        if (propertySettings.displayCurrentBalance) ...[
          PaymentDueInfo(
            title: localizations.current.toUpperCase(),
            amount: residentBalance.currentMonthBalance,
          ),
          MASpacing.xl(),
        ],
        PaymentDueInfo(
          title: localizations.total.toUpperCase(),
          amount: residentBalance.totalBalance,
          dueDate: DateTime.parse(residentBalance.rentDueDate),
        ),
        MASpacing.xl(),
        if (propertySettings.displayCurrentBalance && resident.isOnStopPay == false) ...[
          AutoPayInfoCard(
            autoPaySettings: residentBalance.autoPaySettings,
            residentBalance: residentBalance,
          ),
          MASpacing.xxl(),
        ]
      ],
    );
  }
}
