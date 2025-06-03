import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/features/user/domain/entities/user.dart';

class ScenarioTypeLoan {
  final AppLocalizations localizations;

  ScenarioTypeLoan(
    this.localizations,
  );

  String getOptionLabel(
    Loan loan,
  ) {
    if (loan.loanApplicationType == 3) {
      return localizations.homeLoan;
    } else if (loan.loanApplicationType == 4) {
      return localizations.rentToOwn;
    } else if (loan.loanApplicationType == 7) {
      return localizations.leaseOption;
    } else {
      return '';
    }
  }
}
