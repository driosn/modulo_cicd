import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_divider.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/make_a_payment/presentation/widgets/payment_due_info.dart';
import 'package:resident_app/features/user/domain/entities/user.dart';

class LoansCashPay extends StatelessWidget {
  const LoansCashPay({
    super.key,
    required this.loans,
  });

  final List<Loan> loans;

  @override
  Widget build(BuildContext context) {
    if (loans.isEmpty) return const SizedBox();

    return Column(
      children: loans
          .map(
            (loan) => Container(
              padding: const EdgeInsets.symmetric(
                vertical: 28,
              ),
              child: _LoanSection(
                loan: loan,
              ),
            ),
          )
          .toList(),
    );
  }
}

class _LoanSection extends StatelessWidget {
  _LoanSection({
    required this.loan,
  });

  final Loan loan;

  final localizations = locator<MaLocalizations>().I;

  String _getLoansHeaderTitle(Loan loan) {
    if (loan.loanApplicationType == 3) {
      return localizations.homeLoan.toUpperCase();
    }

    if (loan.loanApplicationType == 4) {
      return localizations.rentToOwn.toUpperCase();
    }

    if (loan.loanApplicationType == 7) {
      return localizations.leaseOption.toUpperCase();
    }
    return '';
  }

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
          _getLoansHeaderTitle(loan),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        MASpacing.s(),
        MADivider(
          height: 2,
          color: colorPalette.secondaryBase,
        ),
        MASpacing.s(),
        _pendingPayments(),
      ],
    );
  }

  Widget _pendingPayments() {
    return Column(
      children: [
        PaymentDueInfo(
          title: localizations.amountDue.toUpperCase(),
          amount: 1250.0,
          dueDate: DateTime.now(),
        ),
      ],
    );
  }
}
