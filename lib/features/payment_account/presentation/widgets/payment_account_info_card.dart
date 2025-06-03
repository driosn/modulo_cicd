import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/helpers/string_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/payment_account/enums/payment_account.dart';
import 'package:resident_app/features/payment_account/routes.dart';

class PaymentAccountInfoCard extends StatelessWidget {
  const PaymentAccountInfoCard({
    super.key,
    this.iconPath,
    required this.bankAccountType,
    this.nameBankAccount,
    required this.numberBankAccount,
    this.editIcon = false,
    this.hasBorder = true,
  });

  final String? iconPath;
  final BankAccountType bankAccountType;
  final String? nameBankAccount;
  final String numberBankAccount;
  final bool editIcon;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: hasBorder
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: colorPalette.surfaceContainerLowest,
              border: Border.all(
                color: colorPalette.primary400,
                width: 2,
              ),
            )
          : null,
      child: Padding(
        padding: hasBorder ? const EdgeInsets.all(16) : EdgeInsets.zero,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (iconPath != null)
              MAScaler(
                child: SvgPicture.asset(
                  iconPath!,
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                    colorPalette.iconBaseTextIcon,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bankAccountType.isChecking
                        ? locator<MaLocalizations>().I.checkingAccount
                        : locator<MaLocalizations>().I.savingsAccount,
                    style: textTheme.bodyMedium,
                  ),
                  MASpacing.s(),
                  Text(
                    numberBankAccount.maskedAccountNumber(),
                    style: textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            if (editIcon)
              IconButton(
                icon: Icon(
                  Icons.edit_outlined,
                  color: colorPalette.iconBaseTextIcon,
                ),
                onPressed: () {
                  context.goNamed(
                    PaymentAccountRoutes.paymentAccountUpdate.name!,
                  );
                },
              )
          ],
        ),
      ),
    );
  }
}
