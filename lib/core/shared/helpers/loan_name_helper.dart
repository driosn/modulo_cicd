import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/features/user/domain/entities/user.dart';

class LoanNameHelper {
  LoanNameHelper({
    required MaLocalizations maLocalizations,
  }) : _localizations = maLocalizations.I;

  final AppLocalizations _localizations;

  String getOptionLabel(
    Loan loan,
  ) {
    return getOptionLabelByType(loan.loanApplicationType);
  }

  String getOptionLabelByType(int type) {
    if (type == 3) {
      return _localizations.homeLoan;
    } else if (type == 4) {
      return _localizations.rentToOwn;
    } else if (type == 7) {
      return _localizations.leaseOption;
    } else {
      return '';
    }
  }

  String getDueLabelByType(int type) {
    if (type == 3) {
      return _localizations.homeLoanDue;
    } else if (type == 4) {
      return _localizations.rentToOwnLoanDue;
    } else if (type == 7) {
      return _localizations.leaseOptionLoanDue;
    }
    return '';
  }
}
