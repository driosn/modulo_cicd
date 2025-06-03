import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/application/bloc/user_preferences/user_preferences_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_center_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/presentation/widgets/tiles/ma_drawer_tile.dart';
import 'package:resident_app/core/presentation/widgets/tiles/ma_expansion_tile.dart';
import 'package:resident_app/core/presentation/widgets/tiles/ma_internal_tile.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/globals/globals.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/announcements/routes.dart';
import 'package:resident_app/features/auth/routes.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay_settings/autopay_settings_bloc.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/billing_settings/routes.dart';
import 'package:resident_app/features/bills_and_payments/application/bloc/payments_bloc.dart';
import 'package:resident_app/features/bills_and_payments/presentation/routes.dart';
import 'package:resident_app/features/cashpay/routes.dart';
import 'package:resident_app/features/contact_information/routes.dart';
import 'package:resident_app/features/delete_my_account/routes.dart';
import 'package:resident_app/features/faq/routes.dart';
import 'package:resident_app/features/language_selection/routes.dart';
import 'package:resident_app/features/legal_documents/routes.dart';
import 'package:resident_app/features/make_a_payment/presentation/routes.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/payment_account/application/bloc/property_payment_settings_bloc.dart';
import 'package:resident_app/features/payment_account/routes.dart';
import 'package:resident_app/features/privacy_policy/routes.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/terms_of_use/routes.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';
import 'package:resident_app/features/user/domain/entities/user.dart';
import 'package:resident_app/main_common.dart';

import '../../../constants/constants.dart';

////////
//
//TODO: THIS FILE CONTAINS A LOT OF COMMENT CODE THAT SHOULDN'T BE DELETED
//IT EXIST BECAUSE A BUSINESS REQUIREMENT OF MATAIN COMPONENS FOR FUTURE USAGE
//THIS COMPONENET IS ALSO A CANDIDATE TO REFACTOR TO ALLOW MENU ITEMS INJECTION
//
////////
class MADrawer extends Drawer {
  static List<Widget> defaultItems = [
    const Elements(),
  ];
  final List<Widget>? items;

  MADrawer({super.key, this.items})
      : super(
          width: double.infinity,
          child: Container(
            color: locator<ColorPalette>().surfaceContainerLowest,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                MASpacing.xl(),
                _Title(),
                const Expanded(
                  child: Elements(),
                ),
                _Version(),
              ],
            ),
          ),
        );
}

class _Version extends StatelessWidget {
  _Version();

  final AppLocalizations _localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        MASpacing.xxl(),
        Text(
          "${_localizations.version} $versionNumber",
          style: textTheme.labelSmall,
        ),
        MASpacing.xxl(),
      ],
    );
  }
}

//TODO: MADrawerItem as an approach to refactor the items logic
class MADrawerItem {
  final String title;
  final Function navigation;
  final bool isExpanded;
  final bool isActive;
  final List<MADrawerItem>? subItems;

  MADrawerItem({
    required this.title,
    required this.navigation,
    required this.isExpanded,
    required this.isActive,
    required this.subItems,
  });
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "MENU",
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: colorPalette.navigationDrawerIconText,
                ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).pop(context),
            child: Icon(
              Icons.close,
              color: colorPalette.navigationDrawerIconText,
            ),
          ),
        ],
      ),
    );
  }
}

class Elements extends StatefulWidget {
  const Elements({super.key});

  @override
  State<Elements> createState() => _ElementsState();
}

class _ElementsState extends State<Elements> {
  late final ExpansionTileController paymentsController;

  // late final ExpansionTileController communityController;
  late final ExpansionTileController myAccountController;
  late final ExpansionTileController helpGuideController;
  late final AutoPayBloc autopayBloc;
  late final AutoPaySettingsBloc autopaySettingsBloc;
  late final PaymentAccountsBloc paymentAccountsBloc;
  late final PayByTextBloc payByTextBloc;
  late final AppLocalizations localizations;
  final UserBloc _userBloc = locator<UserBloc>();
  final SiteBloc _siteBloc = locator<SiteBloc>();
  final NavigationDrawerBloc _navigationDrawerBloc = locator<NavigationDrawerBloc>();
  late bool deleteMyAccountfeature_flag;
  // final CrashlyticsHelper _crashlyticsHelper = locator<CrashlyticsHelper>();
  late PropertySettings _propertySettings;
  late bool isEverywareCashPayfeature_flag;

  @override
  void initState() {
    paymentsController = ExpansionTileController();
    // communityController = ExpansionTileController();
    myAccountController = ExpansionTileController();
    helpGuideController = ExpansionTileController();
    autopayBloc = locator<AutoPayBloc>();
    autopaySettingsBloc = locator<AutoPaySettingsBloc>();
    paymentAccountsBloc = locator<PaymentAccountsBloc>();
    payByTextBloc = locator<PayByTextBloc>();
    localizations = locator<MaLocalizations>().I;
    _propertySettings = _userBloc.state.user.primarySite.propertySettings;
    deleteMyAccountfeature_flag = FirebaseRemoteConfig.instance.getBool(deleteMyAccountfeature);
    isEverywareCashPayfeature_flag = FirebaseRemoteConfig.instance.getBool(isEverywareCashPayConfigured);


    super.initState();
  }

  final user = locator<UserBloc>().state;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    return BlocBuilder<NavigationDrawerBloc, NavigationDrawerState>(
      bloc: _navigationDrawerBloc,
      builder: (context, state) {
        return ListView(children: [
          MADrawerTile(
            navigation: () {
              locator<NavigationDrawerBloc>().add(const NavigationDrawerEvent.dashboard());
              context.goNamed(CoreRoutes.summary.name!);
            },
            icon: Icon(
              state.dashboard ? Icons.diamond : Icons.diamond_outlined,
              color: colorPalette.navigationDrawerIconText,
            ),
            name: Text(
              localizations.drawerDashboard,
              style: textTheme.bodyMedium!.copyWith(
                fontWeight: state.dashboard ? FontWeight.w600 : FontWeight.normal,
                color: colorPalette.navigationDrawerIconText,
              ),
            ),
          ),
          MADrawerExpansionTile(
            active: state.payments,
            onExpansionChanged: (expanding) {
              if (expanding) {
                // communityController.collapse();
                myAccountController.collapse();
                helpGuideController.collapse();
              }
            },
            controller: paymentsController,
            activeColor: colorPalette.secondary100,
            icon: Icon(
              state.payments ? Icons.monetization_on : Icons.monetization_on_outlined,
              color: colorPalette.navigationDrawerIconText,
            ),
            name: Text(
              localizations.drawerPayments,
              style: textTheme.bodyMedium!.copyWith(
                fontWeight: state.payments ? FontWeight.w600 : FontWeight.normal,
                color: colorPalette.navigationDrawerIconText,
              ),
            ),
            subMenuItems: [
              MADrawerInternalTile(
                  name: "name",
                  child: Text(
                    _userBloc.state.user.primarySite.isBilling && _userBloc.state.user.primarySite.resident.isOnStopPay == false
                        ? localizations.drawerPaymentsBills
                        : localizations.drawerPaymentsHistory,
                    style: textTheme.bodyMedium!.copyWith(
                      color: colorPalette.navigationDrawerIconText,
                      fontWeight: state.paymentsBillingSettings ? FontWeight.w600 : FontWeight.normal,
                    ),
                  ),
                  onPressed: () {
                    final isBilling = _userBloc.state.user.primarySite.isBilling;
                    final isOnStopPay = _userBloc.state.user.primarySite.resident.isOnStopPay;

                    isBilling && isOnStopPay == false
                        ? context.goNamed(
                            BillsAndPaymentsRoutes.billsAndPayments.name!,
                          )
                        : context.goNamed(
                            BillsAndPaymentsRoutes.payments.name!,
                          );
                    Navigator.of(context).pop();
                  }),
              MADrawerInternalTile(
                name: "name",
                child: Text(
                  localizations.drawerPaymentsAutopay,
                  style: textTheme.bodyMedium!.copyWith(
                    color: colorPalette.navigationDrawerIconText,
                    fontWeight: state.paymentsAutoPay ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
                onPressed: () {
                  autopayBloc.add(const AutoPayEvent.setSetupIsAutopay(true));
                  autopaySettingsBloc.add(
                    AutoPaySettingsEvent.resetStatus(),
                  );
                  context.goNamed(AutopayRoutes.autopayLandingView.name!);
                },
              ),
              // TODO: START MVP: This option was hidden for the MVP; it will be turned on in the future.
              // if (_propertySettings.textPayEnabled)
              //   MADrawerInternalTile(
              //     name: "name",
              //     child: Text(
              //       localizations.drawerPaymentsPayByText,
              //       style: textTheme.bodyMedium!.copyWith(
              //         color: colorPalette.navigationDrawerIconText,
              //         fontWeight: state.paymentsPayByText
              //             ? FontWeight.w600
              //             : FontWeight.normal,
              //       ),
              //     ),
              //     onPressed: () {
              //       payByTextBloc
              //           .add(const PayByTextEvent.setSetupIsPayByText(true));
              //       payByTextBloc.state.setUpIsCompleted
              //           ? context
              //               .goNamed(PayByTextRoutes.payByTextLandingView.name!)
              //           : context.goNamed(PayByTextRoutes.payByTextSetUp.name!);
              //       Navigator.of(context).pop();
              //     },
              //   ),
              // TODO: END MVP
              MADrawerInternalTile(
                name: "name",
                child: Text(
                  localizations.drawerPaymentsMake,
                  style: textTheme.bodyMedium!.copyWith(
                    color: colorPalette.navigationDrawerIconText,
                    fontWeight: state.paymentsMakePayment ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
                onPressed: () {
                  paymentAccountsBloc.add(const PaymentAccountsEvent.restart());
                  context.goNamed(MakeAPaymentRoutes.makeAPayment.name!);
                  Navigator.of(context).pop();
                },
              ),
              if (isEverywareCashPayfeature_flag && _userBloc.state.user.primarySite.isEverywareCashPayConfigured)
                MADrawerInternalTile(
                  name: "name",
                  child: Text(
                    localizations.drawerEverywareCashPay,
                    style: textTheme.bodyMedium!.copyWith(
                      color: colorPalette.navigationDrawerIconText,
                      fontWeight: state.paymentsMakePayment ? FontWeight.w600 : FontWeight.normal,
                    ),
                  ),
                  onPressed: () {
                   // paymentAccountsBloc.add(const PaymentAccountsEvent.restart());

                  //  context.goNamed(MakeAPaymentRoutes.makeAPayment.name!);
                    Navigator.of(context).pop();
                  },
                ),
              MADrawerInternalTile(
                name: "name",
                child: Text(
                  localizations.drawerPaymentsMethods,
                  style: textTheme.bodyMedium!.copyWith(
                    color: colorPalette.navigationDrawerIconText,
                    fontWeight: state.paymentsPaymentAccount ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
                onPressed: () {
                  autopayBloc.add(const AutoPayEvent.setSetupIsCompleted(false));
                  autopayBloc.add(const AutoPayEvent.setSetupIsAutopay(false));
                  paymentAccountsBloc.add(const PaymentAccountsEvent.restart());
                  context.pushReplacementNamed(PaymentAccountRoutes.paymentAccountSettings.name!);
                  Navigator.of(context).pop();
                },
              ),
              if (_siteBloc.state.selectedSite.resident.isCashPayConfigured)
                MADrawerInternalTile(
                  name: "name",
                  child: Text(
                    'CashPay',
                    style: textTheme.bodyMedium!.copyWith(
                      color: colorPalette.navigationDrawerIconText,
                      fontWeight: state.paymentsCashPay ? FontWeight.w600 : FontWeight.normal,
                    ),
                  ),
                  onPressed: () {
                    context.goNamed(CashPayRoutes.landing.name!);
                    Navigator.of(context).pop();
                  },
                ),
              if (_userBloc.state.user.primarySite.isBilling)
                MADrawerInternalTile(
                  name: "name",
                  child: Text(
                    localizations.drawerPaymentsSettings,
                    style: textTheme.bodyMedium!.copyWith(
                      color: colorPalette.navigationDrawerIconText,
                      fontWeight: state.paymentsBillsPayments ? FontWeight.w600 : FontWeight.normal,
                    ),
                  ),
                  onPressed: () {
                    //TODO: Here switch between version 1 and 2 by remote config
                    context.goNamed(
                      BillingSettingsRoutes.billingSettingsV1.name!,
                    );
                    Navigator.of(context).pop();
                  },
                ),
            ],
          ),
          MADrawerTile(
            navigation: () {
              context.goNamed(AnnouncementsRoutes.announcements.name!);
              Navigator.of(context).pop();
            },
            icon: Icon(
              state.announcements ? Icons.notifications : Icons.notifications_outlined,
              color: colorPalette.navigationDrawerIconText,
            ),
            name: Text(
              localizations.drawerAnnouncements,
              style: textTheme.bodyMedium!.copyWith(
                fontWeight: state.announcements ? FontWeight.w600 : FontWeight.normal,
                color: colorPalette.navigationDrawerIconText,
              ),
            ),
          ),
          // MADrawerExpansionTile(
          //   onExpansionChanged: (expanding) {
          //     if (expanding) {
          //       paymentsController.collapse();
          //       myAccountController.collapse();
          //       helpGuideController.collapse();
          //     }
          //   },
          //   active: state.community,
          //   controller: communityController,
          //   activeColor: colorPalette.secondary100,
          //   icon: Icon(
          //     state.community
          //         ? Icons.holiday_village
          //         : Icons.holiday_village_outlined,
          //     color: colorPalette.navigationDrawerIconText,
          //   ),
          //   name: Text(
          //     localizations.drawerCommunity,
          //     style: textTheme.bodyMedium!.copyWith(
          //       fontWeight:
          //           state.dashboard ? FontWeight.w600 : FontWeight.normal,
          //       color: colorPalette.navigationDrawerIconText,
          //     ),
          //   ),
          //   subMenuItems: [
          //     MADrawerInternalTile(
          //       name: "name",
          //       child: Text(
          //         localizations.drawerCommunityThings,
          //         style: textTheme.bodyMedium!.copyWith(
          //           color: colorPalette.navigationDrawerIconText,
          //           fontWeight: state.paymentsBillsPayments
          //               ? FontWeight.w600
          //               : FontWeight.normal,
          //         ),
          //       ),
          //     ),
          //     MADrawerInternalTile(
          //       name: "name",
          //       child: Text(
          //         localizations.drawerCommunityMap,
          //         style: textTheme.bodyMedium!.copyWith(
          //           color: colorPalette.navigationDrawerIconText,
          //           fontWeight: state.paymentsBillsPayments
          //               ? FontWeight.w600
          //               : FontWeight.normal,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          MADrawerExpansionTile(
            active: state.myAccount,
            onExpansionChanged: (expanding) {
              if (expanding) {
                paymentsController.collapse();
                // communityController.collapse();
                helpGuideController.collapse();
              }
            },
            controller: myAccountController,
            activeColor: colorPalette.secondary100,
            icon: Icon(
              state.myAccount ? Icons.account_circle : Icons.account_circle_outlined,
              color: colorPalette.navigationDrawerIconText,
            ),
            name: Text(
              localizations.drawerMyAccount,
              style: textTheme.bodyMedium!.copyWith(
                fontWeight: state.myAccount ? FontWeight.w600 : FontWeight.normal,
                color: colorPalette.navigationDrawerIconText,
              ),
            ),
            subMenuItems: [
              MADrawerInternalTile(
                name: "name",
                child: Text(
                  localizations.drawerMyAccountUser,
                  style: textTheme.bodyMedium!.copyWith(
                    color: colorPalette.navigationDrawerIconText,
                    fontWeight: state.myAccountLogInSettings ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
                onPressed: () {
                  context.goNamed(UserInformationRoutes.loginSettings.name!);
                  Navigator.of(context).pop();
                },
              ),
              MADrawerInternalTile(
                //TODO For child items, this name is not required. Refactor to remove it in these cases.
                name: "name",
                child: Text(
                  localizations.drawerMyAccountContact,
                  style: textTheme.bodyMedium!.copyWith(
                    color: colorPalette.navigationDrawerIconText,
                    fontWeight: state.myAccountContactInfo ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
                onPressed: () {
                  context.goNamed(UserInformationRoutes.contactInformation.name!);
                  Navigator.of(context).pop();
                },
              ),
              // TODO: START MVP: This option was hidden for the MVP; it will be turned on in the future.
              // MADrawerInternalTile(
              //   name: "name",
              //   child: Text(
              //     localizations.drawerMyAccountCommunication,
              //     style: textTheme.bodyMedium!.copyWith(
              //       color: colorPalette.navigationDrawerIconText,
              //       fontWeight: FontWeight.normal,
              //     ),
              //   ),
              // ),
              // TODO: END MVP
              MADrawerInternalTile(
                name: "name",
                child: Text(
                  localizations.drawerMyAccountLanguagePreference,
                  style: textTheme.bodyMedium!.copyWith(
                    color: colorPalette.navigationDrawerIconText,
                    fontWeight: state.myAccountLanguagePreference ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
                onPressed: () {
                  context.goNamed(LanguagePreferenceRoutes.languagePreference.name!);
                  Navigator.of(context).pop();
                },
              ),
              // TODO: START MVP: This option was hidden for the MVP; it will be turned on in the future.
              // if (user.user.primarySite.propertySettings.linkedSitesEnabled)
              //   MADrawerInternalTile(
              //     name: "name",
              //     child: Text(
              //       localizations.drawerMyAccountRegister,
              //       style: textTheme.bodyMedium!.copyWith(
              //         color: colorPalette.navigationDrawerIconText,
              //         fontWeight: state.myAccountRegisterSite
              //             ? FontWeight.w600
              //             : FontWeight.normal,
              //       ),
              //     ),
              //     onPressed: () {
              //       context.goNamed(RegisterSiteRoutes.registerSite.name!);
              //       Navigator.of(context).pop();
              //     },
              //   ),
              // TODO: END MVP
              MADrawerInternalTile(
                name: "name",
                child: Text(
                  localizations.drawerMyAccountTerms,
                  style: textTheme.bodyMedium!.copyWith(
                    color: colorPalette.navigationDrawerIconText,
                    fontWeight: state.myAccountTermsOfUse ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
                onPressed: () {
                  context.goNamed(TermsOfUseRoutes.termsOfUse.name!);
                  Navigator.of(context).pop();
                },
              ),
              MADrawerInternalTile(
                name: "name",
                child: Text(
                  localizations.drawerMyAccountPrivacy,
                  style: textTheme.bodyMedium!.copyWith(
                    color: colorPalette.navigationDrawerIconText,
                    fontWeight: state.myAccountPrivacyPolicy ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
                onPressed: () {
                  context.goNamed(PrivacyPolicyRoutes.privacyPolicy.name!);
                  Navigator.of(context).pop();
                },
              ),
              MADrawerInternalTile(
                //TODO For child items, this name is not required. Refactor to remove it in these cases.
                name: "name",
                child: Text(
                  localizations.drawerEndUserLicenseAgreement,
                  style: textTheme.bodyMedium!.copyWith(
                    color: colorPalette.navigationDrawerIconText,
                    fontWeight: state.myAccountLegalDocuments ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
                onPressed: () {
                  context.goNamed(EndUserLicenseAgreementRoutes.endUserLicenseAgreement.name!);
                  Navigator.of(context).pop();
                },
              ),

// TODO: START MVP: This option was hidden for the MVP; it will be turned on in the future.
// if (_propertySettings.textPayEnabled)
//   MADrawerInternalTile(
//     name: "name",
//     child: Text(
//       localizations.drawerPaymentsPayByText,
//       style: textTheme.bodyMedium!.copyWith(
//         color: colorPalette.navigationDrawerIconText,
//         fontWeight: state.paymentsPayByText
//             ? FontWeight.w600
//             : FontWeight.normal,
//       ),
//     ),
//     onPressed: () {
//       payByTextBloc
//           .add(const PayByTextEvent.setSetupIsPayByText(true));
//       payByTextBloc.state.setUpIsCompleted
//           ? context
//               .goNamed(PayByTextRoutes.payByTextLandingView.name!)
//           : context.goNamed(PayByTextRoutes.payByTextSetUp.name!);
//       Navigator.of(context).pop();
//     },
//   ),
// TODO: END MVP
              if (deleteMyAccountfeature_flag)
              MADrawerInternalTile(
                name: "name",
                child: Text(
                  localizations.deleteMyAccount,
                  style: textTheme.bodyMedium!.copyWith(
                    color: colorPalette.navigationDrawerIconText,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                onPressed: () {
                  context.goNamed(DeleteMyAccountRoutes.deleteaccount.name!);
                  Navigator.of(context).pop();
                },
              ),

              // MADrawerInternalTile(
              //   name: "name",
              //   child: Text(
              //     "Delete My Account",
              //     style: textTheme.bodyMedium!.copyWith(
              //       color: colorPalette.navigationDrawerIconText,
              //       fontWeight: FontWeight.normal,
              //     ),
              //   ),
              //   onPressed: () {
              //     _crashlyticsHelper.recordError(
              //       recordMessage: "User required to delete account",
              //       recordReason: "Tap delete my account in drawer",
              //     );
              //   },
              // ),
              MAElevatedButton.secondary(
                  text: localizations.signOutButton,
                  onPressed: () {
                    context.showMACenterDialog(
                      maDialogBody: MACenterDialogBody(
                        title: localizations.logOut,
                        text: localizations.logOutDialog,
                      ),
                      actions: [
                        MADialogAction(
                          label: localizations.logOut.toUpperCase(),
                          onPressed: () {
                            // loggedOut performing cleanup..
                            // TODO This logic is duplicated in Summary view but not 100% sure
                            //    yet if this logic will occur in all cases yet there so being defensive and leaving for now.
                            //    We will in the future want to remove the logic here and keep in a centralized space.
                            // _crashlyticsHelper.cleanKeysAndUser();
                            //TODO: reactive after refactor
                            // locator<WhitelabelBloc>()
                            //     .add(const WhitelabelEvent.resetWhitelabel());
                            context.read<UserPreferencesBloc>().add(
                                  const UserPreferencesEvent.restart(),
                                );
                            locator<UserBloc>().add(const UserEvent.restart());
                            // NOTE the signout happens later to refresh the SignInState
                            // locator<SignInBloc>().add(const SignInEvent.signedOut());
                            locator<PropertyPaymentSettingsBloc>().add(const PropertyPaymentSettingsEvent.restart());
                            locator<PayByTextBloc>().add(const PayByTextEvent.reset());
                            locator<PaymentsBloc>().add(const PaymentsEvent.restart());
                            context.goNamed(AuthRoutes.signOut.name!);
                            //TODO This String was created temporarily to retrieve the API Json from RemoteConfig, please remove it as soon as MA API is implemented
                            userRemoteConfig = "";
                          },
                          style: MADialogActionStyle.elevated,
                        ),
                        MADialogAction(
                          label: localizations.cancel.toUpperCase(),
                          onPressed: () => context.pop(),
                          style: MADialogActionStyle.text,
                        ),
                      ],
                    );
                  }),
            ],
          ),
          MADrawerExpansionTile(
            active: state.help,
            onExpansionChanged: (expanding) {
              if (expanding) {
                paymentsController.collapse();
                // communityController.collapse();
                myAccountController.collapse();
              }
            },
            controller: helpGuideController,
            activeColor: colorPalette.secondary100,
            icon: Icon(
              state.help ? Icons.help : Icons.help_outline,
              color: colorPalette.navigationDrawerIconText,
            ),
            name: Text(
              localizations.drawerHelp,
              style: textTheme.bodyMedium!.copyWith(
                fontWeight: state.help ? FontWeight.w600 : FontWeight.normal,
                color: colorPalette.navigationDrawerIconText,
              ),
            ),
            subMenuItems: [
              MADrawerInternalTile(
                name: "faq",
                child: Text(
                  localizations.frequentlyAskedQuestions,
                  style: textTheme.bodyMedium!.copyWith(
                    color: colorPalette.navigationDrawerIconText,
                    fontWeight: state.myAccountLogInSettings ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
                onPressed: () {
                  context.goNamed(FaqRoutes.faq.name!);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ]);
      },
    );
  }
}
