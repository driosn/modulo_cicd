import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/features/user/domain/entities/user.dart';

class PaymentOption {
  const PaymentOption({
    required this.label,
    required this.amount,
    required this.payToType,
    required this.referenceId,
    required this.loan,
  });

  final String label;
  final double amount;
  final PayToType payToType;
  final Loan? loan;

  /// '0' For Rent and LoanId for Loan
  final String referenceId;
}
