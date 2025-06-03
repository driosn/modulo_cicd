import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/features/language_selection/constants/language_preference.dart';
import 'package:resident_app/features/user/domain/entities/user_entities.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel extends User with _$UserModel {
  const factory UserModel({
    @Default('') String residentUserId,
    @Default('') String username,
    @Default('') String residentUserEmail,
    @Default('') String companyId,
    @Default(0) int companyNumber,
    @Default('') String propertyId,
    @Default(0) int propertyNumber,
    @Default(LanguageInitialValues.type) int notificationLanguagePreferenceType,
    @Default(LanguageInitialValues.code)
    String notificationLanguagePreferenceTypeDescription,
    @Default(Language.english) Language notificationLanguagePreference,
    required PrimarySiteModel primarySite,
    @Default(<AssociatedSitesModel>[])
    List<AssociatedSitesModel> associatedSites,
    required EverywareSettingsModel everywareSettings
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class PrimarySiteModel extends PrimarySite with _$PrimarySiteModel {
  const factory PrimarySiteModel({
    @Default('') String address1,
    @Default('') String address2,
    @Default('') String siteName,
    @Default('') String city,
    @Default('') String state,
    @Default('') String zipCode,
    @Default('') String propertyName,
    @Default('') String propertyId,
    @Default(true) bool isBilling,
    @Default(false) bool isEverywareCashPayConfigured,
    @Default(ResidentModel()) ResidentModel resident,
    required ResidentBalanceModel residentBalance,
    @Default(PropertySettingsModel()) PropertySettingsModel propertySettings,
    @Default(BillingSettingsModel()) BillingSettingsModel billingSettings,
  }) = _PrimarySiteModel;

  factory PrimarySiteModel.fromJson(Map<String, dynamic> json) =>
      _$PrimarySiteModelFromJson(json);
}

@freezed
class ResidentModel extends Resident with _$ResidentModel {
  const factory ResidentModel({
    @Default('') String residentId,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String homePhone,
    @Default('') String cellPhone,
    @Default('') String residentEmail,
    @Default('') String billingAddress,
    @Default('') String billingCity,
    @Default('') String billingState,
    @Default('') String billingPostalCode,
    @Default('') String billingCountry,
    @Default(false) bool useBillingAddress,
    @Default(false) bool isOnStopPay,
    @Default(false) bool isCashPayConfigured,
    @Default(CashPaySettingsModel()) CashPaySettingsModel cashPaySettings,
  }) = _ResidentModel;

  factory ResidentModel.fromJson(Map<String, dynamic> json) =>
      _$ResidentModelFromJson(json);
}

@freezed
class CashPaySettingsModel extends CashPaySettings with _$CashPaySettingsModel {
  const factory CashPaySettingsModel({
    @Default('') String westernUnionPosName,
    @Default('') String westernUnionCodeCity,
    @Default('') String westernUnionAccountNumber,
    @Default(0) int payLeaseCardNumber,
  }) = _CashPaySettingsModel;

  factory CashPaySettingsModel.fromJson(Map<String, dynamic> json) =>
      _$CashPaySettingsModelFromJson(json);
}

@freezed
class ResidentBalanceModel extends ResidentBalance with _$ResidentBalanceModel {
  const factory ResidentBalanceModel({
    @Default(0.0) double billedBalance,
    @Default(0.0) double currentMonthBalance,
    @Default(0.0) double totalBalance,
    @Default(0.0) double excludedChargesCurrentMonth,
    @Default(0.0) double paymentAgreementCurrentMonth,
    @Default(1) int rentDueDay,
    @Default('') String rentDueDate,
    @Default(<LoanModel>[]) List<LoanModel> loans,
    @Default(false) bool isEftConfigured,
    @Default(AutoPaySettingsModel()) AutoPaySettingsModel autoPaySettings,
  }) = _ResidentBalanceModel;

  factory ResidentBalanceModel.fromJson(Map<String, dynamic> json) =>
      _$ResidentBalanceModelFromJson(json);
}

@freezed
class AutoPaySettingsModel extends AutoPaySettings with _$AutoPaySettingsModel {
  const factory AutoPaySettingsModel({
    @Default(false) bool isActive,
    @Default(null) int? autoPayDay,
  }) = _AutoPaySettingsModel;

  factory AutoPaySettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AutoPaySettingsModelFromJson(json);
}

@freezed
class LoanModel extends Loan with _$LoanModel {
  const factory LoanModel({
    @Default(0) int loanId,
    @Default('') String loanApplicationTypeDescription,
    @Default(0) int loanApplicationType,
    @Default('') String dueDate,
    @Default(0.0) double currentDue,
    @Default(AutoPaySettingsModel()) AutoPaySettingsModel autoPaySettings,
  }) = _LoanModel;

  factory LoanModel.fromJson(Map<String, dynamic> json) =>
      _$LoanModelFromJson(json);
}

@freezed
class PropertySettingsModel extends PropertySettings
    with _$PropertySettingsModel {
  const factory PropertySettingsModel({
    @Default(<int>[]) List<int> autoPaySetMultipleDays,
    @Default(false) bool autoPayFullBalanceOnly,
    @Default(false) bool contactSync,
    @Default(false) bool displayCurrentBalance,
    @Default(false) bool flexPay,
    @Default(false) bool selfCreditReporting,
    @Default(false) bool linkedSitesEnabled,
    @Default(false) bool hasMobileAccess,
    @Default(false) bool textBillsEnabled,
    @Default(false) bool textPayEnabled,
    @Default(false) bool eftEnrolled,
  }) = _PropertySettingsModel;

  factory PropertySettingsModel.fromJson(Map<String, dynamic> json) =>
      _$PropertySettingsModelFromJson(json);
}

@freezed
class BillingSettingsModel extends BillingSettings with _$BillingSettingsModel {
  const factory BillingSettingsModel({
    @Default(0) int deliveryType,
    @Default('') String emailAddress,
    @Default('') String phoneNumber,
    @Default(0) int leadDaysForBillReminder,
  }) = _BillingSettingsModel;

  factory BillingSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$BillingSettingsModelFromJson(json);
}

@freezed
class AssociatedSitesModel extends AssociatedSite with _$AssociatedSitesModel {
  const factory AssociatedSitesModel({
    @Default('') String residentId,
    @Default('') String address1,
    @Default('') String address2,
    @Default('') String siteName,
    @Default('') String city,
    @Default('') String state,
    @Default('') String zipCode,
    @Default('') String propertyName,
    @Default('') String propertyId,
    @Default(false) bool isBilling,
    @Default(false) bool isEverywareCashPayConfigured,
  }) = _AssociatedSitesModel;

  factory AssociatedSitesModel.fromJson(Map<String, dynamic> json) =>
      _$AssociatedSitesModelFromJson(json);
}

@freezed
class EverywareSettingsModel extends EverywareSettings with _$EverywareSettingsModel {
  const factory EverywareSettingsModel({
    @Default(0.0) double maximumPaymentAmount
  }) = _EverywareSettingsModel;

  factory EverywareSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$EverywareSettingsModelFromJson(json);
}