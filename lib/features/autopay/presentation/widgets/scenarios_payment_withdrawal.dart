import 'package:flutter/cupertino.dart';
import 'package:resident_app/features/autopay/presentation/widgets/select_payment_date.dart';
import 'package:resident_app/features/autopay/presentation/widgets/your_payment_date.dart';

class ScenariosPaymentWithdrawal extends StatelessWidget {
  const ScenariosPaymentWithdrawal({
    super.key,
    required this.setupMultipleDays,
    required this.isLoan,
    required this.title,
  });

  final List<int> setupMultipleDays;
  final bool isLoan;
  final String title;

  @override
  Widget build(BuildContext context) {
    final numDays = setupMultipleDays.length;

    if (numDays == 1 || isLoan) {
      return YourPaymentDate(
        title: title,
      );
    } else if (numDays >= 1 && numDays <= 3) {
      return SelectPaymentDate(
        title: title,
        isLessOrEqualThree: true,
      );
    } else if (numDays >= 1 && numDays <= 7) {
      return SelectPaymentDate(
        title: title,
        isLessOrEqualThree: false,
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
