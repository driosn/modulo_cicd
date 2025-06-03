import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/features/user/domain/entities/site.dart';

class User {
  const User({
    required this.residentUserId,
    required this.username,
    required this.residentUserEmail,
    required this.companyId,
    required this.companyNumber,
    required this.propertyId,
    required this.propertyNumber,
    required this.notificationLanguagePreferenceType,
    required this.notificationLanguagePreferenceTypeDescription,
    required this.notificationLanguagePreference,
    required this.primarySite,
    required this.associatedSites,
    required this.everywareSettings,
  });

  static const empty = User(
    residentUserId: '',
    username: '',
    residentUserEmail: '',
    companyId: '',
    companyNumber: 0,
    propertyId: '',
    propertyNumber: 0,
    notificationLanguagePreferenceType: 3,
    notificationLanguagePreferenceTypeDescription: 'en-us',
    notificationLanguagePreference: Language.english,
    primarySite: PrimarySite.empty,
    associatedSites: <AssociatedSite>[],
    everywareSettings: EverywareSettings.empty,
  );

  final String residentUserId;
  final String username;
  final String residentUserEmail;
  final String companyId;
  final int companyNumber;
  final String propertyId;
  final int propertyNumber;
  final int notificationLanguagePreferenceType;
  final String notificationLanguagePreferenceTypeDescription;
  final Language notificationLanguagePreference;
  final PrimarySite primarySite;
  final List<AssociatedSite> associatedSites;
  final EverywareSettings everywareSettings;
}

class PrimarySite extends Site {
  const PrimarySite({
    required super.address1,
    required super.address2,
    required super.siteName,
    required super.city,
    required super.state,
    required super.zipCode,
    required super.propertyName,
    required super.propertyId,
    required super.isBilling,
    required super.isEverywareCashPayConfigured,
    required this.resident,
    required this.residentBalance,
    required this.propertySettings,
    required this.billingSettings,

  });

  static const empty = PrimarySite(
    address1: '',
    address2: '',
    siteName: '',
    city: '',
    state: '',
    zipCode: '',
    propertyName: '',
    propertyId: '',
    isBilling: true,
    isEverywareCashPayConfigured:false,
    resident: Resident.empty,
    residentBalance: ResidentBalance.empty,
    propertySettings: PropertySettings.empty,
    billingSettings: BillingSettings.empty,
  );

  final Resident resident;
  final ResidentBalance residentBalance;
  final PropertySettings propertySettings;
  final BillingSettings billingSettings;
}

class Resident {
  const Resident({
    required this.residentId,
    required this.firstName,
    required this.lastName,
    required this.homePhone,
    required this.cellPhone,
    required this.residentEmail,
    required this.billingAddress,
    required this.billingCity,
    required this.billingState,
    required this.billingPostalCode,
    required this.billingCountry,
    required this.useBillingAddress,
    required this.isOnStopPay,
    required this.isCashPayConfigured,
    required this.cashPaySettings,
  });

  static const empty = Resident(
    residentId: '',
    firstName: '',
    lastName: '',
    homePhone: '',
    cellPhone: '',
    residentEmail: '',
    billingAddress: '',
    billingCity: '',
    billingState: '',
    billingPostalCode: '',
    billingCountry: '',
    useBillingAddress: false,
    isOnStopPay: false,
    isCashPayConfigured: false,
    cashPaySettings: CashPaySettings.empty,
  );

  final String residentId;
  final String firstName;
  final String lastName;
  final String homePhone;
  final String cellPhone;
  final String residentEmail;
  final String billingAddress;
  final String billingCity;
  final String billingState;
  final String billingPostalCode;
  final String billingCountry;
  final bool useBillingAddress;
  final bool isOnStopPay;
  final bool isCashPayConfigured;
  final CashPaySettings cashPaySettings;
}

class CashPaySettings {
  const CashPaySettings({
    required this.westernUnionPosName,
    required this.westernUnionCodeCity,
    required this.westernUnionAccountNumber,
    required this.payLeaseCardNumber,
  });

  static const empty = CashPaySettings(
    westernUnionPosName: '',
    westernUnionCodeCity: '',
    westernUnionAccountNumber: '',
    payLeaseCardNumber: 0,
  );

  final String westernUnionPosName;
  final String westernUnionCodeCity;
  final String westernUnionAccountNumber;
  final int payLeaseCardNumber;
}

class ResidentBalance {
  const ResidentBalance({
    required this.billedBalance,
    required this.currentMonthBalance,
    required this.totalBalance,
    required this.excludedChargesCurrentMonth,
    required this.paymentAgreementCurrentMonth,
    required this.rentDueDay,
    required this.rentDueDate,
    required this.loans,
    required this.isEftConfigured,
    required this.autoPaySettings,
  });

  static const empty = ResidentBalance(
    billedBalance: 0.0,
    currentMonthBalance: 0.0,
    totalBalance: 0.0,
    excludedChargesCurrentMonth: 0.0,
    paymentAgreementCurrentMonth: 0.0,
    rentDueDay: 1,
    rentDueDate: '',
    loans: <Loan>[],
    isEftConfigured: false,
    autoPaySettings: AutoPaySettings.empty,
  );

  final double billedBalance;
  final double currentMonthBalance;
  final double totalBalance;
  final double excludedChargesCurrentMonth;
  final double paymentAgreementCurrentMonth;
  final int rentDueDay;
  final String rentDueDate;
  final List<Loan> loans;
  final bool isEftConfigured;
  final AutoPaySettings autoPaySettings;
}

class AutoPaySettings {
  const AutoPaySettings({
    required this.isActive,
    required this.autoPayDay,
  });

  static const empty = AutoPaySettings(
    isActive: false,
    autoPayDay: null,
  );

  final bool isActive;
  final int? autoPayDay;
}

class Loan {
  const Loan({
    required this.loanId,
    required this.loanApplicationTypeDescription,
    required this.loanApplicationType,
    required this.dueDate,
    required this.currentDue,
    required this.autoPaySettings,
  });

  final int loanId;
  final String loanApplicationTypeDescription;
  final int loanApplicationType;
  final String dueDate;
  final double currentDue;
  final AutoPaySettings autoPaySettings;
}

class PropertySettings {
  const PropertySettings({
    required this.autoPaySetMultipleDays,
    required this.autoPayFullBalanceOnly,
    required this.contactSync,
    required this.displayCurrentBalance,
    required this.flexPay,
    required this.selfCreditReporting,
    required this.linkedSitesEnabled,
    required this.hasMobileAccess,
    required this.textBillsEnabled,
    required this.textPayEnabled,
  });

  static const empty = PropertySettings(
    autoPaySetMultipleDays: <int>[],
    autoPayFullBalanceOnly: false,
    contactSync: false,
    displayCurrentBalance: false,
    flexPay: false,
    selfCreditReporting: false,
    linkedSitesEnabled: false,
    hasMobileAccess: false,
    textBillsEnabled: false,
    textPayEnabled: false,
  );

  final List<int> autoPaySetMultipleDays;
  final bool autoPayFullBalanceOnly;
  final bool contactSync;
  final bool displayCurrentBalance;
  final bool flexPay;
  final bool selfCreditReporting;
  final bool linkedSitesEnabled;
  final bool hasMobileAccess;
  final bool textBillsEnabled;
  final bool textPayEnabled;
}

class BillingSettings {
  const BillingSettings({
    required this.deliveryType,
    required this.emailAddress,
    required this.phoneNumber,
    required this.leadDaysForBillReminder,
  });

  static const empty = BillingSettings(
    deliveryType: 0,
    emailAddress: '',
    phoneNumber: '',
    leadDaysForBillReminder: 0,
  );

  final int deliveryType;
  final String emailAddress;
  final String phoneNumber;
  final int leadDaysForBillReminder;
}

class AssociatedSite extends Site {
  const AssociatedSite({
    required this.residentId,
    required super.address1,
    required super.address2,
    required super.siteName,
    required super.city,
    required super.state,
    required super.zipCode,
    required super.propertyName,
    required super.propertyId,
    required super.isBilling,
    required super.isEverywareCashPayConfigured
  });

  static const empty = AssociatedSite(
    residentId: '',
    address1: '',
    address2: '',
    siteName: '',
    city: '',
    state: '',
    zipCode: '',
    propertyName: '',
    propertyId: '',
    isBilling: true,
    isEverywareCashPayConfigured: false
  );

  final String residentId;
}

class EverywareSettings {
  const EverywareSettings({
    required this.maximumPaymentAmount
  });

  static const empty = EverywareSettings(
    maximumPaymentAmount: 0.0
  );

  final double maximumPaymentAmount;
}
