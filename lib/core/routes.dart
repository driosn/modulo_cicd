import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/features/announcements/routes.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/billing_settings/routes.dart';
import 'package:resident_app/features/bills_and_payments/presentation/routes.dart';
import 'package:resident_app/features/cashpay/routes.dart';
import 'package:resident_app/features/delete_my_account/presentation/views/delete_myaccount_view.dart';
import 'package:resident_app/features/delete_my_account/routes.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/routes.dart';
import 'package:resident_app/features/demo/presentation/views/demo_view.dart';
import 'package:resident_app/features/demo/routes.dart';
import 'package:resident_app/features/document_acceptance/routes.dart';
import 'package:resident_app/features/faq/routes.dart';
import 'package:resident_app/features/language_selection/routes.dart';
import 'package:resident_app/features/legal_documents/routes.dart';
import 'package:resident_app/features/make_a_payment/presentation/routes.dart';
import 'package:resident_app/features/participating_retailers/presentation/view/participating_retailers_view.dart';
import 'package:resident_app/features/participating_retailers/routes.dart';
import 'package:resident_app/features/pay_by_text/routes.dart';
import 'package:resident_app/features/payment_account/routes.dart';
import 'package:resident_app/features/privacy_policy/routes.dart';
import 'package:resident_app/features/register_site/routes.dart';
import 'package:resident_app/features/summary/presentation/views/summary_view.dart';
import 'package:resident_app/features/terms_of_use/routes.dart';

import '../features/contact_information/routes.dart';
import '../features/language_selection/language_selection.dart';
import 'navigation/ma_navigation.dart';

abstract class RoutesGroup {
  List<RouteBase> get routes;
}

class CoreRoutes implements RoutesGroup {
  static final home = GoRoute(
    path: '/',
    name: 'home',
    builder: (BuildContext context, GoRouterState state) {
      relationalSpaceCalculation.setRelationalSpace(context);
      if (appFlavor == 'demo') {
        return const DemoView();
      } else {
        return const SummaryView();
      }
    },
    routes: [
      ...AnnouncementsRoutes().routes,
      ...AutopayRoutes().routes,
      ...PayByTextRoutes().routes,
      ...UserInformationRoutes().routes,
      ...BillingSettingsRoutes().routes,
      //TODO: add logic to remove demo routes from release builds
      //probably add this below demo routes
      // if (kDebugMode) debug,
      ...DemoRoutes().routes,
      ...LegacyRoutes().routes,
      ...BillsAndPaymentsRoutes().routes,
      ...MakeAPaymentRoutes().routes,
      ...PaymentAccountRoutes().routes,
      ...CashPayRoutes().routes,
      ...RegisterSiteRoutes().routes,
      ...TermsOfUseRoutes().routes,
      ...EndUserLicenseAgreementRoutes().routes,
      ...PrivacyPolicyRoutes().routes,
      ...FaqRoutes().routes,
      ...LanguagePreferenceRoutes().routes,
      ...DocumentAcceptanceRoutes().routes,
      ...ParticipatingRetailersRoutes().routes,
      ...DeleteMyAccountRoutes().routes,
    ],
  );

  static final lenguageSelection = GoRoute(
    path: '/language-selection-view',
    name: 'language_selection_view',
    builder: (BuildContext context, GoRouterState state) {
      return LanguageSelectionView();
    },
  );

  static final summary = GoRoute(
    path: '/summary',
    name: 'summary',
    builder: (BuildContext context, GoRouterState state) {
      relationalSpaceCalculation.setRelationalSpace(context);
      if (appFlavor == 'demo') {
        return const DemoView();
      } else {
        return const SummaryView();
      }
    },
  );

  @override
  List<RouteBase> get routes => [
        home,
        lenguageSelection,
        summary,
        // signIn,
      ];
}
