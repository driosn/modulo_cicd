// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      residentUserId: json['residentUserId'] as String? ?? '',
      username: json['username'] as String? ?? '',
      residentUserEmail: json['residentUserEmail'] as String? ?? '',
      companyId: json['companyId'] as String? ?? '',
      companyNumber: (json['companyNumber'] as num?)?.toInt() ?? 0,
      propertyId: json['propertyId'] as String? ?? '',
      propertyNumber: (json['propertyNumber'] as num?)?.toInt() ?? 0,
      notificationLanguagePreferenceType:
          (json['notificationLanguagePreferenceType'] as num?)?.toInt() ??
              LanguageInitialValues.type,
      notificationLanguagePreferenceTypeDescription:
          json['notificationLanguagePreferenceTypeDescription'] as String? ??
              LanguageInitialValues.code,
      notificationLanguagePreference: $enumDecodeNullable(
              _$LanguageEnumMap, json['notificationLanguagePreference']) ??
          Language.english,
      primarySite: PrimarySiteModel.fromJson(
          json['primarySite'] as Map<String, dynamic>),
      associatedSites: (json['associatedSites'] as List<dynamic>?)
              ?.map((e) =>
                  AssociatedSitesModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AssociatedSitesModel>[],
      everywareSettings: EverywareSettingsModel.fromJson(
          json['everywareSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'residentUserId': instance.residentUserId,
      'username': instance.username,
      'residentUserEmail': instance.residentUserEmail,
      'companyId': instance.companyId,
      'companyNumber': instance.companyNumber,
      'propertyId': instance.propertyId,
      'propertyNumber': instance.propertyNumber,
      'notificationLanguagePreferenceType':
          instance.notificationLanguagePreferenceType,
      'notificationLanguagePreferenceTypeDescription':
          instance.notificationLanguagePreferenceTypeDescription,
      'notificationLanguagePreference':
          _$LanguageEnumMap[instance.notificationLanguagePreference]!,
      'primarySite': instance.primarySite,
      'associatedSites': instance.associatedSites,
      'everywareSettings': instance.everywareSettings,
    };

const _$LanguageEnumMap = {
  Language.english: 'en_us',
  Language.spanish: 'es_us',
};

_$PrimarySiteModelImpl _$$PrimarySiteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrimarySiteModelImpl(
      address1: json['address1'] as String? ?? '',
      address2: json['address2'] as String? ?? '',
      siteName: json['siteName'] as String? ?? '',
      city: json['city'] as String? ?? '',
      state: json['state'] as String? ?? '',
      zipCode: json['zipCode'] as String? ?? '',
      propertyName: json['propertyName'] as String? ?? '',
      propertyId: json['propertyId'] as String? ?? '',
      isBilling: json['isBilling'] as bool? ?? true,
      isEverywareCashPayConfigured:
          json['isEverywareCashPayConfigured'] as bool? ?? false,
      resident: json['resident'] == null
          ? const ResidentModel()
          : ResidentModel.fromJson(json['resident'] as Map<String, dynamic>),
      residentBalance: ResidentBalanceModel.fromJson(
          json['residentBalance'] as Map<String, dynamic>),
      propertySettings: json['propertySettings'] == null
          ? const PropertySettingsModel()
          : PropertySettingsModel.fromJson(
              json['propertySettings'] as Map<String, dynamic>),
      billingSettings: json['billingSettings'] == null
          ? const BillingSettingsModel()
          : BillingSettingsModel.fromJson(
              json['billingSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrimarySiteModelImplToJson(
        _$PrimarySiteModelImpl instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'siteName': instance.siteName,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'propertyName': instance.propertyName,
      'propertyId': instance.propertyId,
      'isBilling': instance.isBilling,
      'isEverywareCashPayConfigured': instance.isEverywareCashPayConfigured,
      'resident': instance.resident,
      'residentBalance': instance.residentBalance,
      'propertySettings': instance.propertySettings,
      'billingSettings': instance.billingSettings,
    };

_$ResidentModelImpl _$$ResidentModelImplFromJson(Map<String, dynamic> json) =>
    _$ResidentModelImpl(
      residentId: json['residentId'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      homePhone: json['homePhone'] as String? ?? '',
      cellPhone: json['cellPhone'] as String? ?? '',
      residentEmail: json['residentEmail'] as String? ?? '',
      billingAddress: json['billingAddress'] as String? ?? '',
      billingCity: json['billingCity'] as String? ?? '',
      billingState: json['billingState'] as String? ?? '',
      billingPostalCode: json['billingPostalCode'] as String? ?? '',
      billingCountry: json['billingCountry'] as String? ?? '',
      useBillingAddress: json['useBillingAddress'] as bool? ?? false,
      isOnStopPay: json['isOnStopPay'] as bool? ?? false,
      isCashPayConfigured: json['isCashPayConfigured'] as bool? ?? false,
      cashPaySettings: json['cashPaySettings'] == null
          ? const CashPaySettingsModel()
          : CashPaySettingsModel.fromJson(
              json['cashPaySettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResidentModelImplToJson(_$ResidentModelImpl instance) =>
    <String, dynamic>{
      'residentId': instance.residentId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'homePhone': instance.homePhone,
      'cellPhone': instance.cellPhone,
      'residentEmail': instance.residentEmail,
      'billingAddress': instance.billingAddress,
      'billingCity': instance.billingCity,
      'billingState': instance.billingState,
      'billingPostalCode': instance.billingPostalCode,
      'billingCountry': instance.billingCountry,
      'useBillingAddress': instance.useBillingAddress,
      'isOnStopPay': instance.isOnStopPay,
      'isCashPayConfigured': instance.isCashPayConfigured,
      'cashPaySettings': instance.cashPaySettings,
    };

_$CashPaySettingsModelImpl _$$CashPaySettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CashPaySettingsModelImpl(
      westernUnionPosName: json['westernUnionPosName'] as String? ?? '',
      westernUnionCodeCity: json['westernUnionCodeCity'] as String? ?? '',
      westernUnionAccountNumber:
          json['westernUnionAccountNumber'] as String? ?? '',
      payLeaseCardNumber: (json['payLeaseCardNumber'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CashPaySettingsModelImplToJson(
        _$CashPaySettingsModelImpl instance) =>
    <String, dynamic>{
      'westernUnionPosName': instance.westernUnionPosName,
      'westernUnionCodeCity': instance.westernUnionCodeCity,
      'westernUnionAccountNumber': instance.westernUnionAccountNumber,
      'payLeaseCardNumber': instance.payLeaseCardNumber,
    };

_$ResidentBalanceModelImpl _$$ResidentBalanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResidentBalanceModelImpl(
      billedBalance: (json['billedBalance'] as num?)?.toDouble() ?? 0.0,
      currentMonthBalance:
          (json['currentMonthBalance'] as num?)?.toDouble() ?? 0.0,
      totalBalance: (json['totalBalance'] as num?)?.toDouble() ?? 0.0,
      excludedChargesCurrentMonth:
          (json['excludedChargesCurrentMonth'] as num?)?.toDouble() ?? 0.0,
      paymentAgreementCurrentMonth:
          (json['paymentAgreementCurrentMonth'] as num?)?.toDouble() ?? 0.0,
      rentDueDay: (json['rentDueDay'] as num?)?.toInt() ?? 1,
      rentDueDate: json['rentDueDate'] as String? ?? '',
      loans: (json['loans'] as List<dynamic>?)
              ?.map((e) => LoanModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LoanModel>[],
      isEftConfigured: json['isEftConfigured'] as bool? ?? false,
      autoPaySettings: json['autoPaySettings'] == null
          ? const AutoPaySettingsModel()
          : AutoPaySettingsModel.fromJson(
              json['autoPaySettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResidentBalanceModelImplToJson(
        _$ResidentBalanceModelImpl instance) =>
    <String, dynamic>{
      'billedBalance': instance.billedBalance,
      'currentMonthBalance': instance.currentMonthBalance,
      'totalBalance': instance.totalBalance,
      'excludedChargesCurrentMonth': instance.excludedChargesCurrentMonth,
      'paymentAgreementCurrentMonth': instance.paymentAgreementCurrentMonth,
      'rentDueDay': instance.rentDueDay,
      'rentDueDate': instance.rentDueDate,
      'loans': instance.loans,
      'isEftConfigured': instance.isEftConfigured,
      'autoPaySettings': instance.autoPaySettings,
    };

_$AutoPaySettingsModelImpl _$$AutoPaySettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoPaySettingsModelImpl(
      isActive: json['isActive'] as bool? ?? false,
      autoPayDay: (json['autoPayDay'] as num?)?.toInt() ?? null,
    );

Map<String, dynamic> _$$AutoPaySettingsModelImplToJson(
        _$AutoPaySettingsModelImpl instance) =>
    <String, dynamic>{
      'isActive': instance.isActive,
      'autoPayDay': instance.autoPayDay,
    };

_$LoanModelImpl _$$LoanModelImplFromJson(Map<String, dynamic> json) =>
    _$LoanModelImpl(
      loanId: (json['loanId'] as num?)?.toInt() ?? 0,
      loanApplicationTypeDescription:
          json['loanApplicationTypeDescription'] as String? ?? '',
      loanApplicationType: (json['loanApplicationType'] as num?)?.toInt() ?? 0,
      dueDate: json['dueDate'] as String? ?? '',
      currentDue: (json['currentDue'] as num?)?.toDouble() ?? 0.0,
      autoPaySettings: json['autoPaySettings'] == null
          ? const AutoPaySettingsModel()
          : AutoPaySettingsModel.fromJson(
              json['autoPaySettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoanModelImplToJson(_$LoanModelImpl instance) =>
    <String, dynamic>{
      'loanId': instance.loanId,
      'loanApplicationTypeDescription': instance.loanApplicationTypeDescription,
      'loanApplicationType': instance.loanApplicationType,
      'dueDate': instance.dueDate,
      'currentDue': instance.currentDue,
      'autoPaySettings': instance.autoPaySettings,
    };

_$PropertySettingsModelImpl _$$PropertySettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertySettingsModelImpl(
      autoPaySetMultipleDays: (json['autoPaySetMultipleDays'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const <int>[],
      autoPayFullBalanceOnly: json['autoPayFullBalanceOnly'] as bool? ?? false,
      contactSync: json['contactSync'] as bool? ?? false,
      displayCurrentBalance: json['displayCurrentBalance'] as bool? ?? false,
      flexPay: json['flexPay'] as bool? ?? false,
      selfCreditReporting: json['selfCreditReporting'] as bool? ?? false,
      linkedSitesEnabled: json['linkedSitesEnabled'] as bool? ?? false,
      hasMobileAccess: json['hasMobileAccess'] as bool? ?? false,
      textBillsEnabled: json['textBillsEnabled'] as bool? ?? false,
      textPayEnabled: json['textPayEnabled'] as bool? ?? false,
      eftEnrolled: json['eftEnrolled'] as bool? ?? false,
    );

Map<String, dynamic> _$$PropertySettingsModelImplToJson(
        _$PropertySettingsModelImpl instance) =>
    <String, dynamic>{
      'autoPaySetMultipleDays': instance.autoPaySetMultipleDays,
      'autoPayFullBalanceOnly': instance.autoPayFullBalanceOnly,
      'contactSync': instance.contactSync,
      'displayCurrentBalance': instance.displayCurrentBalance,
      'flexPay': instance.flexPay,
      'selfCreditReporting': instance.selfCreditReporting,
      'linkedSitesEnabled': instance.linkedSitesEnabled,
      'hasMobileAccess': instance.hasMobileAccess,
      'textBillsEnabled': instance.textBillsEnabled,
      'textPayEnabled': instance.textPayEnabled,
      'eftEnrolled': instance.eftEnrolled,
    };

_$BillingSettingsModelImpl _$$BillingSettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BillingSettingsModelImpl(
      deliveryType: (json['deliveryType'] as num?)?.toInt() ?? 0,
      emailAddress: json['emailAddress'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      leadDaysForBillReminder:
          (json['leadDaysForBillReminder'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$BillingSettingsModelImplToJson(
        _$BillingSettingsModelImpl instance) =>
    <String, dynamic>{
      'deliveryType': instance.deliveryType,
      'emailAddress': instance.emailAddress,
      'phoneNumber': instance.phoneNumber,
      'leadDaysForBillReminder': instance.leadDaysForBillReminder,
    };

_$AssociatedSitesModelImpl _$$AssociatedSitesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AssociatedSitesModelImpl(
      residentId: json['residentId'] as String? ?? '',
      address1: json['address1'] as String? ?? '',
      address2: json['address2'] as String? ?? '',
      siteName: json['siteName'] as String? ?? '',
      city: json['city'] as String? ?? '',
      state: json['state'] as String? ?? '',
      zipCode: json['zipCode'] as String? ?? '',
      propertyName: json['propertyName'] as String? ?? '',
      propertyId: json['propertyId'] as String? ?? '',
      isBilling: json['isBilling'] as bool? ?? false,
      isEverywareCashPayConfigured:
          json['isEverywareCashPayConfigured'] as bool? ?? false,
    );

Map<String, dynamic> _$$AssociatedSitesModelImplToJson(
        _$AssociatedSitesModelImpl instance) =>
    <String, dynamic>{
      'residentId': instance.residentId,
      'address1': instance.address1,
      'address2': instance.address2,
      'siteName': instance.siteName,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'propertyName': instance.propertyName,
      'propertyId': instance.propertyId,
      'isBilling': instance.isBilling,
      'isEverywareCashPayConfigured': instance.isEverywareCashPayConfigured,
    };

_$EverywareSettingsModelImpl _$$EverywareSettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EverywareSettingsModelImpl(
      maximumPaymentAmount:
          (json['maximumPaymentAmount'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$EverywareSettingsModelImplToJson(
        _$EverywareSettingsModelImpl instance) =>
    <String, dynamic>{
      'maximumPaymentAmount': instance.maximumPaymentAmount,
    };
