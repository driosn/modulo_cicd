import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_enums.freezed.dart';

@freezed
class AutoPayOptionType with _$AutoPayOptionType {
  const factory AutoPayOptionType.none() = _None;
  const factory AutoPayOptionType.fixedAmount() = _FixedAmount;
  const factory AutoPayOptionType.fullAmount() = _FullAmount;
  const factory AutoPayOptionType.fullAmountNotToExceed() = _FullAmountNotToExceed;

  static AutoPayOptionType fromInt(int value) {
    return switch (value) {
      1 => const AutoPayOptionType.none(),
      2 => const AutoPayOptionType.fixedAmount(),
      3 => const AutoPayOptionType.fullAmount(),
      4 => const AutoPayOptionType.fullAmountNotToExceed(),
      _ => throw ArgumentError('Invalid value for AutoPayOptionType: $value')
    };
  }

  static int toInt(AutoPayOptionType type) {
    return type.when(
      none: () => 1,
      fixedAmount: () => 2,
      fullAmount: () => 3,
      fullAmountNotToExceed: () => 4,
    );
  }
}

@freezed
class BillingSettingDeliveryType with _$BillingSettingDeliveryType {
  const factory BillingSettingDeliveryType.mail() = _Mail;
  const factory BillingSettingDeliveryType.email() = _Email;
  const factory BillingSettingDeliveryType.textMessage() = _TextMessage;

  static BillingSettingDeliveryType fromInt(int value) {
    return switch (value) {
      1 => const BillingSettingDeliveryType.mail(),
      2 => const BillingSettingDeliveryType.email(),
      3 => const BillingSettingDeliveryType.textMessage(),
      _ => throw ArgumentError('Invalid value for BillingSettingDeliveryType: $value')
    };
  }

  static int toInt(BillingSettingDeliveryType type) {
    return type.when(
      mail: () => 1,
      email: () => 2,
      textMessage: () => 3,
    );
  }
}

@freezed
class ContentType with _$ContentType {
  const factory ContentType.unknown() = _UnknownContentType; // Note We used _UnknownContentType because there is a conflict with the name unknown for another item in this file.
  const factory ContentType.oneTimePaymentAuthorizationText() = _OneTimePaymentAuthorizationText;
  const factory ContentType.autoPayAuthorizationText() = _AutoPayAuthorizationText;

  static ContentType fromInt(int value) {
    return switch (value) {
      0 => const ContentType.unknown(),
      28 => const ContentType.oneTimePaymentAuthorizationText(),
      29 => const ContentType.autoPayAuthorizationText(),
      _ => throw ArgumentError('Invalid value for ContentType: $value')
    };
  }

  static int toInt(ContentType type) {
    return type.when(
      unknown: () => 0,
      oneTimePaymentAuthorizationText: () => 28,
      autoPayAuthorizationText: () => 29,
    );
  }
}

@freezed
class LoanApplicationType with _$LoanApplicationType {
  const factory LoanApplicationType.homeLoan() = _HomeLoan;
  const factory LoanApplicationType.rentToOwn() = _RentToOwn;
  const factory LoanApplicationType.leaseOption() = _LeaseOption;

  static LoanApplicationType fromInt(int value) {
    return switch (value) {
      3 => const LoanApplicationType.homeLoan(),
      4 => const LoanApplicationType.rentToOwn(),
      7 => const LoanApplicationType.leaseOption(),
      _ => throw ArgumentError('Invalid value for LoanApplicationType: $value')
    };
  }

  static int toInt(LoanApplicationType type) {
    return type.when(
      homeLoan: () => 3,
      rentToOwn: () => 4,
      leaseOption: () => 7,
    );
  }
}

@freezed
class LegalDocumentType with _$LegalDocumentType {
  const factory LegalDocumentType.termsOfService() = _TermsOfService;
  const factory LegalDocumentType.privacyPolicy() = _PrivacyPolicy;
  const factory LegalDocumentType.supportedBrowsersAndOperatingSystems() = _SupportedBrowsers;
  const factory LegalDocumentType.unknown() = _Unknown;

  static LegalDocumentType fromInt(int value) {
    return switch (value) {
      0 => const LegalDocumentType.unknown(),
      1 => const LegalDocumentType.termsOfService(),
      2 => const LegalDocumentType.privacyPolicy(),
      3 => const LegalDocumentType.supportedBrowsersAndOperatingSystems(),
      _ => throw ArgumentError('Invalid value for LegalDocumentType: $value')
    };
  }

  static int toInt(LegalDocumentType type) {
    return type.when(
      unknown: () => 0,
      termsOfService: () => 1,
      privacyPolicy: () => 2,
      supportedBrowsersAndOperatingSystems: () => 3,
    );
  }
}

@freezed
class PaymentMethodType with _$PaymentMethodType {
  const factory PaymentMethodType.bank() = _Bank;
  const factory PaymentMethodType.creditCard() = _PaymentCreditCard;
  const factory PaymentMethodType.mobileWallet() = _MoblieWallet;

  static PaymentMethodType fromInt(int value) {
    return switch (value) {
      1 => const PaymentMethodType.bank(),
      2 => const PaymentMethodType.creditCard(),
      7 => const PaymentMethodType.mobileWallet(),
      _ => throw ArgumentError('Invalid value for PaymentMethodType: $value')
    };
  }

  static int toInt(PaymentMethodType type) {
    return type.when(
      bank: () => 1,
      creditCard: () => 2,
      mobileWallet: () => 7,
    );
  }
}

@freezed
class PaymentProcessorType with _$PaymentProcessorType {
  const factory PaymentProcessorType.fundTech() = _FundTech;
  const factory PaymentProcessorType.payNearMe() = _PayNearMe;
  const factory PaymentProcessorType.zego() = _Zego;
  const factory PaymentProcessorType.intelliPay() = _IntelliPay;
  const factory PaymentProcessorType.rbc() = _RBC;
  const factory PaymentProcessorType.unknown() = _UnknownPaymentProcessorType;
  const factory PaymentProcessorType.mobileWallet() = _MobileWallet;
  const factory PaymentProcessorType.flex() = _Flex;
  const factory PaymentProcessorType.googlePlay() = _GooglePay;
  const factory PaymentProcessorType.payPal() = _PayPal;
  const factory PaymentProcessorType.venmo() = _Venmo;

  static PaymentProcessorType fromInt(int value) {
    return switch (value) {
      1 => const PaymentProcessorType.fundTech(),
      2 => const PaymentProcessorType.payNearMe(),
      3 => const PaymentProcessorType.zego(),
      4 => const PaymentProcessorType.intelliPay(),
      5 => const PaymentProcessorType.rbc(),
      6 => const PaymentProcessorType.unknown(),
      7 => const PaymentProcessorType.mobileWallet(),
      8 => const PaymentProcessorType.flex(),
      9 => const PaymentProcessorType.googlePlay(),
      10 => const PaymentProcessorType.payPal(),
      11 => const PaymentProcessorType.venmo(),
      _ => throw ArgumentError('Invalid value for PaymentProcessorType: $value')
    };
  }

  static int toInt(PaymentProcessorType type) {
    return type.when(
      fundTech: () => 1,
      payNearMe: () => 2,
      zego: () => 3,
      intelliPay: () => 4,
      rbc: () => 5,
      unknown: () => 6,
      mobileWallet: () => 7,
      flex: () => 8,
      googlePlay: () => 9,
      payPal: () => 10,
      venmo: () => 11,
    );
  }
}

@freezed
class PaymentType with _$PaymentType {
  const factory PaymentType.rent() = _AutomatedClearingHouse;
  const factory PaymentType.cash() = _Cash;
  const factory PaymentType.cashPay() = _CashPay;
  const factory PaymentType.check() = _Check;
  const factory PaymentType.creditCard() = _CreditCard;
  const factory PaymentType.electronicFundsTransfer() = _ElectronicFundsTransfer;
  const factory PaymentType.moneyOrder() = _MoneyOrder;

  static PaymentType fromInt(int value) {
    return switch (value) {
      1 => const PaymentType.rent(),
      2 => const PaymentType.cash(),
      3 => const PaymentType.cashPay(),
      4 => const PaymentType.check(),
      5 => const PaymentType.creditCard(),
      6 => const PaymentType.electronicFundsTransfer(),
      7 => const PaymentType.moneyOrder(),
      _ => throw ArgumentError('Invalid value for PaymentType: $value')
    };
  }

  static int toInt(PaymentType type) {
    return type.when(
      rent: () => 1,
      cash: () => 2,
      cashPay: () => 3,
      check: () => 4,
      creditCard: () => 5,
      electronicFundsTransfer: () => 6,
      moneyOrder: () => 7,
    );
  }
}

@freezed
class PayToType with _$PayToType {
  const factory PayToType.rent() = _Rent;
  const factory PayToType.loan() = _Loan;

  static PayToType fromInt(int value) {
    return switch (value) {
      1 => const PayToType.rent(),
      2 => const PayToType.loan(),
      _ => throw ArgumentError('Invalid value for PayToType: $value'),
    };
  }

  static int toInt(PayToType type) {
    return type.when(
      rent: () => 1,
      loan: () => 2,
    );
  }
}

@freezed
class LocaleType with _$LocaleType {
  const factory LocaleType.english() = _English;
  const factory LocaleType.spanish() = _Spanish;

  static LocaleType fromInt(int value) {
    return switch (value) { 3 => const LocaleType.english(), 4 => const LocaleType.spanish(), _ => throw ArgumentError('Invalid value for LocaleType: $value') };
  }

  static int toInt(LocaleType type) {
    return type.when(
      english: () => 3,
      spanish: () => 4,
    );
  }
}

@freezed
class MakePaymentErrorCode with _$MakePaymentErrorCode {
  // Note We used _UnknownMakePaymentErrorCode because there is a conflict with the name unknown for another item in this file.
  const factory MakePaymentErrorCode.unknown() = _UnknownMakePaymentErrorCode;
  const factory MakePaymentErrorCode.paymentAmountError() = _PaymentAmountError;
  const factory MakePaymentErrorCode.shortPaymentError() = _ShortPaymentError;
  const factory MakePaymentErrorCode.paymentError() = _PaymentError;
  const factory MakePaymentErrorCode.previousPaymentAmountError() = _PreviousPaymentAmountError;

  static MakePaymentErrorCode fromInt(int value) {
    switch (value) {
      case 0:
        return const MakePaymentErrorCode.unknown();
      case 1:
        return const MakePaymentErrorCode.paymentAmountError();
      case 2:
        return const MakePaymentErrorCode.shortPaymentError();
      case 3:
        return const MakePaymentErrorCode.paymentError();
      case 4:
        return const MakePaymentErrorCode.previousPaymentAmountError();
      default:
        throw ArgumentError('Invalid value for MakePaymentErrorCode: $value');
    }
  }

  static int toInt(MakePaymentErrorCode type) {
    return type.when(
      unknown: () => 0,
      paymentAmountError: () => 1,
      shortPaymentError: () => 2,
      paymentError: () => 3,
      previousPaymentAmountError: () => 4,
    );
  }
}
