import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/core/shared/formz_inputs/account_number_input.dart';
import 'package:resident_app/core/shared/formz_inputs/confirm_account_number_input.dart';
import 'package:resident_app/core/shared/formz_inputs/confirm_new_password_input.dart';
import 'package:resident_app/core/shared/formz_inputs/confirm_password_input.dart';
import 'package:resident_app/core/shared/formz_inputs/formz_inputs.dart';
import 'package:resident_app/core/shared/formz_inputs/institution_number_input.dart';
import 'package:resident_app/core/shared/formz_inputs/login_password_input.dart';
import 'package:resident_app/core/shared/formz_inputs/name_input.dart';
import 'package:resident_app/core/shared/formz_inputs/routing_number_input.dart';
import 'package:resident_app/core/shared/formz_inputs/transit_number_input.dart';
import 'package:resident_app/core/shared/formz_inputs/username_input.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';

class ErrorMessagesHelper {
  ErrorMessagesHelper({
    required MaLocalizations maLocalizations,
  }) : _localizations = maLocalizations.I;

  final AppLocalizations _localizations;

  //
  // Login
  //
  Map<UsernameValidationError, String> get username => {
        UsernameValidationError.empty: _localizations.usernameEmptyValidation,
      };
  Map<LoginPasswordValidationError, String> get loginPassword => {
        LoginPasswordValidationError.empty:
            _localizations.passwordEmptyValidation,
      };

  //
  // Others
  //
  Map<EmailValidationError, String> get email => {
        EmailValidationError.empty: _localizations.emailEmptyValidation,
        EmailValidationError.incorrectFormat:
            _localizations.emailIncorrectFormatValidation,
      };
  Map<PasswordValidationError, String> get password => {
        PasswordValidationError.empty: _localizations.passwordEmptyValidation,
        PasswordValidationError.tooShort:
            _localizations.passwordTooShortValidation,
        PasswordValidationError.tooLong:
            _localizations.passwordTooLongValidation,
        PasswordValidationError.missingNumber:
            _localizations.passwordMissingNumber,
        PasswordValidationError.missingSymbol:
            _localizations.passwordMissingSymbol,
      };
  Map<CurrentPasswordValidationError, String> get currentPassword => {
        CurrentPasswordValidationError.empty:
            _localizations.passwordEmptyValidation,
      };
  Map<ConfirmNewPasswordValidationError, String> get confirmNewPassword => {
        ConfirmNewPasswordValidationError.empty:
            _localizations.passwordEmptyValidation,
        ConfirmNewPasswordValidationError.notMatchPassword:
            _localizations.doesNotMatchPassword,
      };
  Map<PhoneValidationError, String> get phone => {
        PhoneValidationError.incomplete:
            _localizations.phoneIncompleteValidation,
      };
  Map<AddressValidationError, String> get address => {
        AddressValidationError.empty: _localizations.addressEmptyValidation,
      };
  Map<CityValidationError, String> get city => {
        CityValidationError.empty: _localizations.cityEmptyValidation,
      };
  Map<PostalCodeValidationError, String> get postalCode => {
        PostalCodeValidationError.empty:
            _localizations.postalCodeEmptyValidation,
        PostalCodeValidationError.incomplete:
            _localizations.postalCodeIncompleteValidation,
      };

  String get stateEmptyValidation => _localizations.stateEmptyValidation;
  Map<NameValidationError, String> get name => {
        NameValidationError.empty:
            _localizations.fieldRequired(_localizations.nameOnAccount),
      };
  Map<RoutingNumberValidationError, String> get routingNumber => {
        RoutingNumberValidationError.empty:
            _localizations.fieldRequired(_localizations.routingNumber),
        RoutingNumberValidationError.incorrectLength:
            _localizations.routingMustBeNine,
      };
  Map<TransitNumberValidationError, String> get transitNumber => {
        TransitNumberValidationError.empty:
            _localizations.fieldRequired(_localizations.transitNumber),
        TransitNumberValidationError.incorrectLength:
            _localizations.transitMustBeFive,
      };
  Map<InstitutionNumberValidationError, String> get institutionNumber => {
        InstitutionNumberValidationError.empty:
            _localizations.fieldRequired(_localizations.institutionNumber),
        InstitutionNumberValidationError.incorrectLength:
            _localizations.institutionMustBeThree,
      };
  Map<AccountNumberValidationError, String> get accountNumber => {
        AccountNumberValidationError.empty:
            _localizations.fieldRequired(_localizations.accountNumber),
      };
  Map<ConfirmAccountNumberValidationError, String> get confirmAccountNumber => {
        ConfirmAccountNumberValidationError.empty:
            _localizations.fieldRequired(_localizations.confirmAccountNumber),
        ConfirmAccountNumberValidationError.accountNumberEmpty:
            _localizations.fieldRequired(_localizations.accountNumber),
        ConfirmAccountNumberValidationError.notMatchAccount:
            _localizations.doesNotMatchAccountNumber,
      };

  Map<DollarInputValidationError, String> get dollarInput => {
        DollarInputValidationError.empty: _localizations.enterAmountError,
        DollarInputValidationError.notGreaterThanZero:
            'The amount should be greater than zero',
        DollarInputValidationError.notGreaterThanOne:
            _localizations.amountNotGreaterThanOne,
      };
}
